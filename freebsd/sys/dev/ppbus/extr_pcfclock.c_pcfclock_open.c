
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int device_t ;


 int ENXIO ;
 int O_NONBLOCK ;
 int PPB_DONTWAIT ;
 int PPB_WAIT ;
 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_request_bus (int ,int ,int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
pcfclock_open(struct cdev *dev, int flag, int fms, struct thread *td)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t pcfclockdev;
 device_t ppbus;
 int res;

 if (!sc)
  return (ENXIO);
 pcfclockdev = sc->dev;
 ppbus = device_get_parent(pcfclockdev);

 ppb_lock(ppbus);
 res = ppb_request_bus(ppbus, pcfclockdev,
     (flag & O_NONBLOCK) ? PPB_DONTWAIT : PPB_WAIT);
 ppb_unlock(ppbus);
 return (res);
}
