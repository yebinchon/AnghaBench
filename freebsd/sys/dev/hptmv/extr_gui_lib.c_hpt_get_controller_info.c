
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int ChipFlags; int NumBuses; int szProductID; int szVendorID; scalar_t__ ChipType; scalar_t__ InterruptLevel; } ;
typedef TYPE_1__* PCONTROLLER_INFO ;
typedef TYPE_2__ IAL_ADAPTER_T ;


 int CHIP_SUPPORT_ULTRA_100 ;
 int CHIP_SUPPORT_ULTRA_133 ;
 int CHIP_SUPPORT_ULTRA_150 ;
 char* GUI_CONTROLLER_NAME ;
 int _set_product_id (char*) ;
 TYPE_2__* gIal_Adapter ;
 int strcpy (int ,char*) ;

int hpt_get_controller_info(int id, PCONTROLLER_INFO pInfo)
{
 IAL_ADAPTER_T *pAdapTemp;
 int iControllerCount = 0;

 for (pAdapTemp = gIal_Adapter; pAdapTemp; pAdapTemp = pAdapTemp->next) {
  if (iControllerCount++==id) {
   pInfo->InterruptLevel = 0;
   pInfo->ChipType = 0;
   pInfo->ChipFlags = CHIP_SUPPORT_ULTRA_100;
   strcpy( pInfo->szVendorID, "HighPoint Technologies, Inc.");
   strcpy(pInfo->szProductID, "RocketRAID 18xx SATA Controller");
   pInfo->NumBuses = 8;
   pInfo->ChipFlags |= CHIP_SUPPORT_ULTRA_133|CHIP_SUPPORT_ULTRA_150;
   return 0;
  }
 }
 return -1;
}
