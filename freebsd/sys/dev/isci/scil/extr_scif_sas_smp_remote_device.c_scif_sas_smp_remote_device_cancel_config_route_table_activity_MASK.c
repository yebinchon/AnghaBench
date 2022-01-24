#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* curr_config_route_destination_smp_phy; } ;
struct TYPE_12__ {TYPE_2__ smp_device; } ;
struct TYPE_14__ {int /*<<< orphan*/  is_currently_discovered; int /*<<< orphan*/  domain; TYPE_3__ protocol_device; } ;
struct TYPE_13__ {int /*<<< orphan*/  attached_sas_address; } ;
struct TYPE_10__ {int /*<<< orphan*/  list_element; } ;
typedef  int /*<<< orphan*/  SCI_FAST_LIST_ELEMENT_T ;
typedef  TYPE_4__ SCIF_SAS_SMP_PHY_T ;
typedef  TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_4__*) ; 

void FUNC6(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   //go through the rest of the smp phy list of destination device.
   SCI_FAST_LIST_ELEMENT_T     * element =
      &(fw_device->protocol_device.smp_device.curr_config_route_destination_smp_phy->list_element);
   SCIF_SAS_SMP_PHY_T          * curr_smp_phy = NULL;
   SCIF_SAS_REMOTE_DEVICE_T    * curr_attached_device = NULL;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_cancel_config_route_table_activity(0x%x) enter\n",
      fw_device
   ));

   while (element != NULL)
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) FUNC3(element);
      element = FUNC2(element);

      //check if this phy needs to be added to the expander's route table but can't due to
      //exceeding max route index.
      if (FUNC5(
             fw_device, curr_smp_phy) == TRUE )
      {
         //set the is_currently_discovered to FALSE for attached device. Then when
         //domain finish discover, domain will remove this device.
         curr_attached_device = (SCIF_SAS_REMOTE_DEVICE_T *)
            FUNC4(
               fw_device->domain, &(curr_smp_phy->attached_sas_address));

         if (curr_attached_device != NULL)
            curr_attached_device->is_currently_discovered = FALSE;
      }
   }
}