
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct cfi_softc {scalar_t__ sc_size; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; scalar_t__ sc_wrbuf; scalar_t__ sc_writing; } ;
struct cdev {struct cfi_softc* si_drv1; } ;


 int EIO ;
 int MIN (scalar_t__,scalar_t__) ;
 int cfi_block_finish (struct cfi_softc*) ;
 int cfi_block_start (struct cfi_softc*,scalar_t__) ;
 int uiomove (scalar_t__,int ,struct uio*) ;

__attribute__((used)) static int
cfi_devwrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct cfi_softc *sc;
 u_int ofs, top;
 int error;

 sc = dev->si_drv1;

 error = (uio->uio_offset > sc->sc_size) ? EIO : 0;
 while (error == 0 && uio->uio_resid > 0 &&
     uio->uio_offset < sc->sc_size) {
  ofs = uio->uio_offset;





  if (sc->sc_writing) {
   top = sc->sc_wrofs + sc->sc_wrbufsz;
   if (ofs < sc->sc_wrofs || ofs >= top)
    cfi_block_finish(sc);
  }


  if (!sc->sc_writing) {
   error = cfi_block_start(sc, uio->uio_offset);
   if (error)
    break;
  }

  top = sc->sc_wrofs + sc->sc_wrbufsz;
  error = uiomove(sc->sc_wrbuf + ofs - sc->sc_wrofs,
      MIN(top - ofs, uio->uio_resid), uio);
 }
 return (error);
}
