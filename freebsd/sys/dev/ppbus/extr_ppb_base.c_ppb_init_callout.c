
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int ppc_lock; } ;
struct callout {int dummy; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int callout_init_mtx (struct callout*,int ,int) ;

void
ppb_init_callout(device_t bus, struct callout *c, int flags)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);

 callout_init_mtx(c, ppb->ppc_lock, flags);
}
