
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int device_t ;


 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
pcfclock_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t pcfclockdev = sc->dev;
 device_t ppbus = device_get_parent(pcfclockdev);

 ppb_lock(ppbus);
 ppb_release_bus(ppbus, pcfclockdev);
 ppb_unlock(ppbus);

 return (0);
}
