PUG_OUT_DIR=out/
STYLES_DIR=${PWD}/styles
ASSETS_DIR=${PWD}/assets
PUGFLAGS=--silent -O "{styles: '${STYLES_DIR}', assets:'${ASSETS_DIR}'}"\
    --path mixins --basedir mixins -P

all: index.html

index.html: templates/
	pug ${PUGFLAGS} --out ${PUG_OUT_DIR} $^

clean:
	rm -rf ${PUG_OUT_DIR}
