#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ controller; int /*<<< orphan*/  parent; TYPE_1__* state_handlers; int /*<<< orphan*/  is_port_ready; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* port_ready_handler ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  SCI_PORT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(
   SCI_CONTROLLER_HANDLE_T  controller,
   SCI_PORT_HANDLE_T        port
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                   FUNC3(port);

   FUNC1((
      FUNC2(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_ready(0x%x, 0x%x) enter\n",
      controller, port
   ));

   // The controller supplied with the port should match the controller
   // saved in the domain.
   FUNC0(FUNC3(controller) == fw_domain->controller);

   fw_domain->is_port_ready = TRUE;

   fw_domain->state_handlers->port_ready_handler(&fw_domain->parent);
}