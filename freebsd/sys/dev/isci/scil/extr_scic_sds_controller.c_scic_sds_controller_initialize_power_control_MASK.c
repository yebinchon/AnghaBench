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
struct TYPE_6__ {scalar_t__ remote_devices_granted_power; scalar_t__ phys_waiting; int /*<<< orphan*/  requesters; int /*<<< orphan*/  timer; } ;
struct TYPE_7__ {TYPE_1__ power_control; } ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  scic_sds_controller_power_control_timer_handler ; 

void FUNC2(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   this_controller->power_control.timer = FUNC1(
      this_controller,
      scic_sds_controller_power_control_timer_handler,
      this_controller
   );

   FUNC0(
      this_controller->power_control.requesters,
      0,
      sizeof(this_controller->power_control.requesters)
   );

   this_controller->power_control.phys_waiting = 0;
   this_controller->power_control.remote_devices_granted_power = 0;
}