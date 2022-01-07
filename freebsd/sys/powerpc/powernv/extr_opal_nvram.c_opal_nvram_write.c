
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct opal_nvram_softc {int sc_buf_phys; int sc_buf; scalar_t__ sc_size; } ;
struct cdev {struct opal_nvram_softc* si_drv1; } ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 int EIO ;
 int ENOSPC ;
 int MIN (int,scalar_t__) ;
 scalar_t__ NVRAM_BUFSIZE ;


 int OPAL_SUCCESS ;
 int OPAL_WRITE_NVRAM ;
 int opal_call (int ,int ,int,scalar_t__) ;
 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
opal_nvram_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 off_t offset;
 int rv, amnt;
 struct opal_nvram_softc *sc = dev->si_drv1;

 rv = 0;
 while (uio->uio_resid > 0) {
  amnt = MIN(uio->uio_resid, sc->sc_size - uio->uio_offset);
  amnt = MIN(amnt, NVRAM_BUFSIZE);
  if (amnt == 0) {
   rv = ENOSPC;
   break;
  }
  offset = uio->uio_offset;
  rv = uiomove(sc->sc_buf, amnt, uio);
  if (rv != 0)
   break;
  rv = opal_call(OPAL_WRITE_NVRAM, sc->sc_buf_phys, amnt,
      offset);
  if (rv != OPAL_SUCCESS) {
   switch (rv) {
   case 129:
    rv = EIO;
    break;
   case 128:
    rv = EINVAL;
    break;
   }
   break;
  }
 }
 return (rv);
}
