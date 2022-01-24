#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_8__ {int /*<<< orphan*/  count; } ;
struct TYPE_9__ {TYPE_1__ address_table; } ;
struct TYPE_10__ {TYPE_2__ uf_control; } ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_BIT ; 
 int /*<<< orphan*/  POINTER ; 
 int /*<<< orphan*/  QUEUE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

void FUNC7(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 frame_queue_control_value;
   U32 frame_queue_get_value;
   U32 frame_queue_put_value;

   // Write the queue size
   frame_queue_control_value =
      FUNC0(QUEUE_SIZE, this_controller->uf_control.address_table.count);

   FUNC1(this_controller, frame_queue_control_value);

   // Setup the get pointer for the unsolicited frame queue
   frame_queue_get_value = (
         FUNC3(POINTER, 0)
      |  FUNC2(ENABLE_BIT)
      );

   FUNC4(this_controller, frame_queue_get_value);

   // Setup the put pointer for the unsolicited frame queue
   frame_queue_put_value = FUNC5(POINTER, 0);

   FUNC6(this_controller, frame_queue_put_value);
}