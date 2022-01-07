
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int state; scalar_t__ error; int ppc_lock; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int MA_OWNED ;
 int PPB_ERROR ;
 scalar_t__ PPB_NO_ERROR ;
 int mtx_assert (int ,int ) ;

int
ppb_1284_set_state(device_t bus, int state)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);



 mtx_assert(ppb->ppc_lock, MA_OWNED);
 if ((ppb->state != PPB_ERROR) &&
   (ppb->error == PPB_NO_ERROR)) {
  ppb->state = state;
  ppb->error = PPB_NO_ERROR;
 }

 return (0);
}
