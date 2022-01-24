#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * list_head; } ;
struct TYPE_10__ {void* is_able_to_config_others; void* is_externally_configurable; void* is_table_to_table_supported; scalar_t__ expander_route_indexes; scalar_t__ number_of_phys; TYPE_1__ smp_phy_list; } ;
struct TYPE_9__ {TYPE_3__ smp_device; } ;
struct TYPE_11__ {TYPE_2__ protocol_device; } ;
typedef  int /*<<< orphan*/  SCI_FAST_LIST_ELEMENT_T ;
typedef  TYPE_3__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_SMP_PHY_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 void* FALSE ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

void FUNC6(
   SCIF_SAS_REMOTE_DEVICE_T * this_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
      &this_device->protocol_device.smp_device;

   SCI_FAST_LIST_ELEMENT_T  * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = NULL;

   FUNC0((
      FUNC1(this_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_removed(0x%x) enter\n",
      this_device
   ));

   //remove all the smp phys in this device's smp_phy_list, and the conterpart smp phys
   //in phy connections.
   while (element != NULL)
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) FUNC3(element);
      element = FUNC2(element);

      FUNC4(curr_smp_phy);
   }

   this_device->protocol_device.smp_device.number_of_phys = 0;
   this_device->protocol_device.smp_device.expander_route_indexes = 0;
   this_device->protocol_device.smp_device.is_table_to_table_supported = FALSE;
   this_device->protocol_device.smp_device.is_externally_configurable  = FALSE;
   this_device->protocol_device.smp_device.is_able_to_config_others    = FALSE;

   FUNC5(this_device);
}