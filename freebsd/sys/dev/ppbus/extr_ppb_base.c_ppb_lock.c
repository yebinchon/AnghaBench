
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int ppc_lock; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int mtx_lock (int ) ;

void
ppb_lock(device_t bus)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);

 mtx_lock(ppb->ppc_lock);
}
