
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_device {int intr_arg; int (* intr_hook ) (int ) ;} ;
struct ppb_data {int * ppb_owner; int ppc_lock; } ;


 int ENOENT ;
 int MA_OWNED ;
 struct ppb_device* device_get_ivars (int *) ;
 int mtx_assert (int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
ppbus_intr(void *arg)
{
 struct ppb_device *ppbdev;
 struct ppb_data *ppb = arg;

 mtx_assert(ppb->ppc_lock, MA_OWNED);
 if (ppb->ppb_owner == ((void*)0))
  return (ENOENT);

 ppbdev = device_get_ivars(ppb->ppb_owner);
 if (ppbdev->intr_hook == ((void*)0))
  return (ENOENT);

 ppbdev->intr_hook(ppbdev->intr_arg);
 return (0);
}
