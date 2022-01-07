
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ppi_data {int ppi_flags; int ppi_lock; int ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef int device_t ;


 int HAVE_PPBUS ;
 int O_NONBLOCK ;
 int PPB_DONTWAIT ;
 int PPB_INTR ;
 int PPB_WAIT ;
 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_request_bus (int ,int ,int) ;
 int ppb_unlock (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ppiopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct ppi_data *ppi = dev->si_drv1;
 device_t ppidev = ppi->ppi_device;
 device_t ppbus = device_get_parent(ppidev);
 int res;

 sx_xlock(&ppi->ppi_lock);
 if (!(ppi->ppi_flags & HAVE_PPBUS)) {
  ppb_lock(ppbus);
  res = ppb_request_bus(ppbus, ppidev,
      (flags & O_NONBLOCK) ? PPB_DONTWAIT : PPB_WAIT | PPB_INTR);
  ppb_unlock(ppbus);
  if (res) {
   sx_xunlock(&ppi->ppi_lock);
   return (res);
  }

  ppi->ppi_flags |= HAVE_PPBUS;
 }
 sx_xunlock(&ppi->ppi_lock);

 return (0);
}
