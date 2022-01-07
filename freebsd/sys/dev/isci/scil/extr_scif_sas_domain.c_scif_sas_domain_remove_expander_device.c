
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {int controller; } ;
struct TYPE_14__ {int * list_head; } ;
struct TYPE_17__ {TYPE_2__ smp_phy_list; } ;
struct TYPE_13__ {TYPE_5__ smp_device; } ;
struct TYPE_19__ {TYPE_1__ protocol_device; } ;
struct TYPE_16__ {TYPE_3__* attached_phy; TYPE_7__* end_device; } ;
struct TYPE_18__ {scalar_t__ attached_device_type; TYPE_4__ u; } ;
struct TYPE_15__ {TYPE_7__* owning_device; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_5__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_7__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_8__ SCIF_SAS_DOMAIN_T ;


 scalar_t__ SMP_END_DEVICE_ONLY ;
 scalar_t__ SMP_NO_DEVICE_ATTACHED ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int scif_cb_domain_device_removed (int ,TYPE_8__*,TYPE_7__*) ;

void scif_sas_domain_remove_expander_device(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
      &fw_device->protocol_device.smp_device;

   SCI_FAST_LIST_ELEMENT_T * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);
   SCIF_SAS_REMOTE_DEVICE_T * current_device = ((void*)0);

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if ( curr_smp_phy->attached_device_type != SMP_NO_DEVICE_ATTACHED
          && curr_smp_phy->u.end_device != ((void*)0) )
      {
         if (curr_smp_phy->attached_device_type == SMP_END_DEVICE_ONLY)
            current_device = curr_smp_phy->u.end_device;
         else
            current_device = curr_smp_phy->u.attached_phy->owning_device;

         scif_cb_domain_device_removed(fw_domain->controller, fw_domain, current_device);
      }
   }


   scif_cb_domain_device_removed(fw_domain->controller, fw_domain, fw_device);
}
