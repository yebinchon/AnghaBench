#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(
   SCIC_SDS_CONTROLLER_T * this_controller
)
{
   // Disable interrupts so we dont take any spurious interrupts
   FUNC4(this_controller);

   // Reset the SCU
   FUNC2(this_controller, 0xFFFFFFFF);

   // Delay for 1ms to before clearing the CQP and UFQPR.
   FUNC3(1000);

   // The write to the CQGR clears the CQP
   FUNC1(this_controller, 0x00000000);

   // The write to the UFQGP clears the UFQPR
   FUNC0(this_controller, 0x00000000);
}