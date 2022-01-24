#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_3__ {int /*<<< orphan*/  state_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_1__ SCI_BASE_DOMAIN_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCI_BASE_DOMAIN_T * domain,
   U32                 op_timeout,
   U32                 device_timeout
)
{
   FUNC0((
      FUNC1((SCIF_SAS_DOMAIN_T *)domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "Domain:0x%x State:0x%x requested to discover in invalid state\n",
      domain,
      FUNC2(&domain->state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}