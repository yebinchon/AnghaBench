
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int device_t ;


 int ERANGE ;
 int PCFCLOCK_MAX_RETRIES ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int pcfclock_display_data (struct cdev*,char*) ;
 int pcfclock_read_dev (struct cdev*,char*,int ) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
pcfclock_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t ppbus;
 char buf[18];
 int error = 0;

 if (uio->uio_resid < 18)
  return (ERANGE);

 ppbus = device_get_parent(sc->dev);
 ppb_lock(ppbus);
 error = pcfclock_read_dev(dev, buf, PCFCLOCK_MAX_RETRIES);
 ppb_unlock(ppbus);

 if (error) {
  device_printf(sc->dev, "no PCF found\n");
 } else {
  pcfclock_display_data(dev, buf);

  uiomove(buf, 18, uio);
 }

 return (error);
}
