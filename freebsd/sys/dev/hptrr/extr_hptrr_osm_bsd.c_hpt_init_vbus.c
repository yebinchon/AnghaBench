
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int him_handle; TYPE_1__* him; } ;
struct TYPE_8__ {TYPE_4__ ldm_adapter; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* hba_list; scalar_t__ vbus; } ;
struct TYPE_6__ {int (* initialize ) (int ) ;} ;
typedef TYPE_2__* PVBUS_EXT ;
typedef int PVBUS ;
typedef TYPE_3__* PHBA ;


 int KdPrint (char*) ;
 int ldm_initialize_vbus (int ,TYPE_4__*) ;
 int stub1 (int ) ;

__attribute__((used)) static int hpt_init_vbus(PVBUS_EXT vbus_ext)
{
 PHBA hba;

 for (hba = vbus_ext->hba_list; hba; hba = hba->next)
  if (!hba->ldm_adapter.him->initialize(hba->ldm_adapter.him_handle)) {
   KdPrint(("fail to initialize %p", hba));
   return -1;
  }

 ldm_initialize_vbus((PVBUS)vbus_ext->vbus, &vbus_ext->hba_list->ldm_adapter);
 return 0;
}
