
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_6__* curr_clear_affiliation_phy; } ;
struct TYPE_13__ {TYPE_5__ smp_device; } ;
struct TYPE_18__ {TYPE_1__* domain; TYPE_2__ protocol_device; } ;
struct TYPE_15__ {TYPE_3__* next; } ;
struct TYPE_17__ {int phy_identifier; TYPE_4__ list_element; } ;
struct TYPE_14__ {int object; } ;
struct TYPE_12__ {int controller; } ;
typedef TYPE_5__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_7__ SCIF_SAS_REMOTE_DEVICE_T ;


 int PHY_OPERATION_CLEAR_AFFILIATION ;
 TYPE_6__* scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata (int ) ;
 int scif_sas_smp_remote_device_finish_clear_affiliation (TYPE_7__*) ;
 int scif_sas_smp_request_construct_phy_control (int ,TYPE_7__*,int ,int ,int *,int *) ;

void scif_sas_smp_remote_device_continue_clear_affiliation(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_device =
      &fw_device->protocol_device.smp_device;


   SCIF_SAS_SMP_PHY_T * phy_to_clear_affiliation = ((void*)0);

   if (smp_device->curr_clear_affiliation_phy->list_element.next != ((void*)0))
   {
      phy_to_clear_affiliation =
         scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(
            smp_device->curr_clear_affiliation_phy->list_element.next->object
         );
   }

   if (phy_to_clear_affiliation != ((void*)0))
   {
      smp_device->curr_clear_affiliation_phy = phy_to_clear_affiliation;


      scif_sas_smp_request_construct_phy_control(
         fw_device->domain->controller,
         fw_device,
         PHY_OPERATION_CLEAR_AFFILIATION,
         phy_to_clear_affiliation->phy_identifier,
         ((void*)0),
         ((void*)0)
      );
   }
   else
      scif_sas_smp_remote_device_finish_clear_affiliation(fw_device);
}
