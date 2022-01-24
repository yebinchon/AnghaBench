#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_7__ {scalar_t__ is_port_ready; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_READY ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scif_sas_domain_state_handler_table ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)object;

   FUNC1(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_STARTING
   );

   FUNC0((
      FUNC2(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_starting_state_enter(0x%x) enter\n",
      fw_domain
   ));

   FUNC4(fw_domain);

   // If we entered the STARTING state and the core port is actually ready,
   // then directly transition into the READY state.  This can occur
   // if we were in the middle of discovery when the port failed
   // (causing a transition to STOPPING), then before reaching STOPPED
   // the port becomes ready again.
   if (fw_domain->is_port_ready == TRUE)
   {
      FUNC3(
         &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_READY
      );
   }
}