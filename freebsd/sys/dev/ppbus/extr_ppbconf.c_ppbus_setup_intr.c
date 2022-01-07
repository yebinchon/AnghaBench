
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct ppb_device {void (* intr_hook ) (void*) ;void* intr_arg; } ;
struct ppb_data {int ppc_lock; struct resource* ppc_irq_res; } ;
typedef int driver_filter_t ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int EINVAL ;
 struct ppb_device* device_get_ivars (int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

__attribute__((used)) static int
ppbus_setup_intr(device_t bus, device_t child, struct resource *r, int flags,
    driver_filter_t *filt, void (*ihand)(void *), void *arg, void **cookiep)
{
 struct ppb_device *ppbdev = device_get_ivars(child);
 struct ppb_data *ppb = DEVTOSOFTC(bus);


 if (filt != ((void*)0) || ihand == ((void*)0))
  return (EINVAL);


 if (ppb->ppc_irq_res != r)
  return (EINVAL);

 mtx_lock(ppb->ppc_lock);
 ppbdev->intr_hook = ihand;
 ppbdev->intr_arg = arg;
 *cookiep = ppbdev;
 mtx_unlock(ppb->ppc_lock);

 return (0);
}
