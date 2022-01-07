
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* VDevices; struct TYPE_7__* next; } ;
struct TYPE_5__ {int disk; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef int * PDevice ;
typedef TYPE_3__ IAL_ADAPTER_T ;


 int MV_SATA_CHANNELS_NUM ;
 TYPE_3__* gIal_Adapter ;

__attribute__((used)) static void
get_disk_location(PDevice pDev, int *controller, int *channel)
{
 IAL_ADAPTER_T *pAdapTemp;
 int i, j;

 *controller = *channel = 0;

 for (i=1, pAdapTemp = gIal_Adapter; pAdapTemp; pAdapTemp = pAdapTemp->next, i++) {
  for (j=0; j<MV_SATA_CHANNELS_NUM; j++) {
   if (pDev == &pAdapTemp->VDevices[j].u.disk) {
    *controller = i;
    *channel = j;
    return;
   }
  }
 }
}
