
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid; int mode; } ;
struct ppb_device {TYPE_1__ ctx; } ;
struct ppb_data {scalar_t__ ppb_owner; int ppc_lock; } ;
typedef scalar_t__ device_t ;


 struct ppb_data* DEVTOSOFTC (scalar_t__) ;
 int EACCES ;
 int MA_OWNED ;
 scalar_t__ device_get_ivars (scalar_t__) ;
 int mtx_assert (int ,int ) ;
 int ppb_get_mode (scalar_t__) ;
 int wakeup (struct ppb_data*) ;

int
ppb_release_bus(device_t bus, device_t dev)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);
 struct ppb_device *ppbdev = (struct ppb_device *)device_get_ivars(dev);

 mtx_assert(ppb->ppc_lock, MA_OWNED);
 if (ppb->ppb_owner != dev)
  return (EACCES);


 ppbdev->ctx.mode = ppb_get_mode(bus);


 ppbdev->ctx.valid = 1;

 ppb->ppb_owner = 0;


 wakeup(ppb);

 return (0);
}
