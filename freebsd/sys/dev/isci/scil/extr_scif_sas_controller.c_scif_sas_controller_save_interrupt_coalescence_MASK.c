#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_4__ {int /*<<< orphan*/  core_object; int /*<<< orphan*/  saved_interrupt_coalesce_timeout; int /*<<< orphan*/  saved_interrupt_coalesce_number; } ;
typedef  TYPE_1__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   if ( !FUNC2(fw_controller))
   {
      // Override core's interrupt coalescing settings during SMP
      // DISCOVER process cause' there is only 1 outstanding SMP
      // request per domain is allowed.
      FUNC0(
         fw_controller->core_object,
         (U32*)&(fw_controller->saved_interrupt_coalesce_number),
         &(fw_controller->saved_interrupt_coalesce_timeout)
      );

      // Temporarily disable the interrupt coalescing.
      FUNC1(fw_controller->core_object,0,0);
   }
}