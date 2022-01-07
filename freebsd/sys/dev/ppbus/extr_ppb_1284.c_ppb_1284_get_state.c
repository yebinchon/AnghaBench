
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int state; int ppc_lock; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int MA_OWNED ;
 int mtx_assert (int ,int ) ;

int
ppb_1284_get_state(device_t bus)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);

 mtx_assert(ppb->ppc_lock, MA_OWNED);
 return (ppb->state);
}
