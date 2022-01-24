#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_11__ {int /*<<< orphan*/  core_object; int /*<<< orphan*/  free_remote_device_pool; } ;
struct TYPE_9__ {int /*<<< orphan*/  status; int /*<<< orphan*/ * timer; } ;
struct TYPE_10__ {void* is_config_route_table_needed; TYPE_1__ operation; TYPE_3__* controller; scalar_t__ device_start_count; void* is_port_ready; int /*<<< orphan*/  request_list; scalar_t__ core_object; int /*<<< orphan*/  remote_device_list; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  SCI_OBJECT_HANDLE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;
typedef  TYPE_3__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 void* FALSE ; 
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  scif_sas_domain_state_table ; 

void FUNC8(
   SCIF_SAS_DOMAIN_T     * fw_domain,
   U8                      domain_id,
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   FUNC0((
      FUNC3(fw_controller),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_domain_construct(0x%x, 0x%x, 0x%x) enter\n",
      fw_domain, domain_id, fw_controller
   ));

   FUNC2(
      &fw_domain->parent,
      FUNC3(fw_controller),
      scif_sas_domain_state_table
   );

   FUNC7(fw_domain);

   FUNC1(
      &fw_domain->remote_device_list, &fw_controller->free_remote_device_pool
   );

   // Retrieve the core's port object that directly corresponds to this
   // domain.
   FUNC6(
      fw_controller->core_object, domain_id, &fw_domain->core_object
   );

   // Set the association in the core port to this framework domain object.
   FUNC5(
      (SCI_OBJECT_HANDLE_T) fw_domain->core_object, fw_domain
   );

   FUNC4(&fw_domain->request_list);

   fw_domain->operation.timer = NULL;

   fw_domain->is_port_ready      = FALSE;
   fw_domain->device_start_count = 0;
   fw_domain->controller         = fw_controller;
   fw_domain->operation.status   = SCI_SUCCESS;
   fw_domain->is_config_route_table_needed = FALSE;
}