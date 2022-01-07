
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ppi_data {int ppi_lock; int ppi_flags; int ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef int device_t ;


 int HAVE_PPBUS ;




 int device_get_parent (int ) ;
 int ppb_1284_get_state (int ) ;
 int ppb_1284_terminate (int ) ;
 int ppb_lock (int ) ;
 int ppb_peripheral_terminate (int ,int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_unlock (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ppiclose(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct ppi_data *ppi = dev->si_drv1;
 device_t ppidev = ppi->ppi_device;
 device_t ppbus = device_get_parent(ppidev);

 sx_xlock(&ppi->ppi_lock);
 ppb_lock(ppbus);
 ppb_release_bus(ppbus, ppidev);
 ppb_unlock(ppbus);

 ppi->ppi_flags &= ~HAVE_PPBUS;
 sx_xunlock(&ppi->ppi_lock);

 return (0);
}
