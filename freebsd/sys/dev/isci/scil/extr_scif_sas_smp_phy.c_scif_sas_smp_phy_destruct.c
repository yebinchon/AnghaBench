
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* domain; } ;
struct TYPE_11__ {TYPE_2__* attached_phy; } ;
struct TYPE_13__ {scalar_t__ attached_device_type; int list_element; TYPE_3__ u; TYPE_6__* owning_device; } ;
struct TYPE_12__ {int * controller; } ;
struct TYPE_9__ {int * attached_phy; } ;
struct TYPE_10__ {TYPE_1__ u; int attached_device_type; } ;
typedef TYPE_5__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 scalar_t__ SMP_EDGE_EXPANDER_DEVICE ;
 scalar_t__ SMP_FANOUT_EXPANDER_DEVICE ;
 int SMP_NO_DEVICE_ATTACHED ;
 int sci_fast_list_remove_element (int *) ;
 int scif_sas_controller_free_smp_phy (int *,TYPE_5__*) ;

void scif_sas_smp_phy_destruct(
   SCIF_SAS_SMP_PHY_T * this_smp_phy
)
{
   SCIF_SAS_REMOTE_DEVICE_T * owning_device = this_smp_phy->owning_device;
   SCIF_SAS_CONTROLLER_T * fw_controller = owning_device->domain->controller;

   if ( ( this_smp_phy->attached_device_type == SMP_EDGE_EXPANDER_DEVICE
         || this_smp_phy->attached_device_type == SMP_FANOUT_EXPANDER_DEVICE)
       && this_smp_phy->u.attached_phy != ((void*)0) )
   {

      this_smp_phy->u.attached_phy->attached_device_type = SMP_NO_DEVICE_ATTACHED;
      this_smp_phy->u.attached_phy->u.attached_phy = ((void*)0);
   }


   sci_fast_list_remove_element(&this_smp_phy->list_element);
   scif_sas_controller_free_smp_phy(fw_controller, this_smp_phy);
}
