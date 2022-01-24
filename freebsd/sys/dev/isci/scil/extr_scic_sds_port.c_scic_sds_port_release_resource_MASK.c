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
struct TYPE_4__ {int /*<<< orphan*/ * timer_handle; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_T *this_port
)
{
   FUNC0((
      FUNC1(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_release_resource(0x%x, 0x%x)\n",
      controller, this_port
   ));

   //Currently, the only resource to be released is a timer.
   if (this_port->timer_handle != NULL)
   {
      FUNC2(controller, this_port->timer_handle);
      this_port->timer_handle = NULL;
   }
}