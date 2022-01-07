
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int ppc_lock; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int mtx_sleep (void*,int ,int,char const*,int) ;

int
ppb_sleep(device_t bus, void *wchan, int priority, const char *wmesg, int timo)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);

 return (mtx_sleep(wchan, ppb->ppc_lock, priority, wmesg, timo));
}
