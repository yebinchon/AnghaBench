#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  smp_phy_list; void* is_able_to_config_others; void* is_externally_configurable; void* is_table_to_table_supported; scalar_t__ expander_route_indexes; scalar_t__ number_of_phys; } ;
struct TYPE_8__ {TYPE_1__ smp_device; } ;
struct TYPE_9__ {TYPE_2__ protocol_device; } ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_sas_smp_remote_device_construct(0x%x) enter\n",
      fw_device
   ));

   fw_device->protocol_device.smp_device.number_of_phys = 0;
   fw_device->protocol_device.smp_device.expander_route_indexes = 0;
   fw_device->protocol_device.smp_device.is_table_to_table_supported = FALSE;
   fw_device->protocol_device.smp_device.is_externally_configurable  = FALSE;
   fw_device->protocol_device.smp_device.is_able_to_config_others    = FALSE;

   FUNC2(&fw_device->protocol_device.smp_device.smp_phy_list);

   FUNC3(fw_device);
}