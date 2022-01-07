
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* pVDevice; } ;
struct TYPE_5__ {TYPE_1__ VBus; } ;
typedef scalar_t__ PVDevice ;
typedef TYPE_2__ IAL_ADAPTER_T ;


 int MAX_VDEVICE_PER_VBUS ;
 int fFlushVDev (scalar_t__) ;
 int hpt_printk (char*) ;

__attribute__((used)) static void
FlushAdapter(IAL_ADAPTER_T *pAdapter)
{
 int i;

 hpt_printk(("flush all devices\n"));


 for (i=0; i<MAX_VDEVICE_PER_VBUS; i++) {
  PVDevice pVDev = pAdapter->VBus.pVDevice[i];
  if(pVDev) fFlushVDev(pVDev);
 }
}
