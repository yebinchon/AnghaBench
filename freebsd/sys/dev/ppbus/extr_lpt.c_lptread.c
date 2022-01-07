
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct lpt_data {int sc_flags; int sc_statbuf; int sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef int device_t ;


 int BUFSTATSIZE ;
 int EPERM ;
 int LP_BYPASS ;
 int PPB_NIBBLE ;
 int device_get_parent (int ) ;
 int min (int ,scalar_t__) ;
 int ppb_1284_negociate (int ,int ,int ) ;
 int ppb_1284_read (int ,int ,int ,int ,int*) ;
 int ppb_1284_terminate (int ) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
lptread(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct lpt_data *sc = dev->si_drv1;
 device_t lptdev = sc->sc_dev;
 device_t ppbus = device_get_parent(lptdev);
 int error = 0, len;

 if (sc->sc_flags & LP_BYPASS) {

  return (EPERM);
 }

 ppb_lock(ppbus);
 if ((error = ppb_1284_negociate(ppbus, PPB_NIBBLE, 0))) {
  ppb_unlock(ppbus);
  return (error);
 }


 len = 0;
 while (uio->uio_resid) {
  if ((error = ppb_1284_read(ppbus, PPB_NIBBLE,
    sc->sc_statbuf, min(BUFSTATSIZE,
    uio->uio_resid), &len))) {
   goto error;
  }

  if (!len)
   goto error;

  ppb_unlock(ppbus);
  error = uiomove(sc->sc_statbuf, len, uio);
  ppb_lock(ppbus);
  if (error)
   goto error;
 }

error:
 ppb_1284_terminate(ppbus);
 ppb_unlock(ppbus);
 return (error);
}
