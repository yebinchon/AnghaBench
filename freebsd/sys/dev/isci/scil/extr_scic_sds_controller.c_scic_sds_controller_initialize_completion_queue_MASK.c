#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_6__ {size_t completion_queue_get; size_t completion_queue_entries; int* completion_queue; scalar_t__ completion_event_entries; } ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  EVENT_ENABLE ; 
 int /*<<< orphan*/  EVENT_POINTER ; 
 int /*<<< orphan*/  POINTER ; 
 size_t FUNC0 (scalar_t__) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,size_t) ; 

void FUNC8(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 index;
   U32 completion_queue_control_value;
   U32 completion_queue_get_value;
   U32 completion_queue_put_value;

   this_controller->completion_queue_get = 0;

   completion_queue_control_value = (
        FUNC1(this_controller->completion_queue_entries - 1)
      | FUNC0(this_controller->completion_event_entries - 1)
   );

   FUNC2(this_controller, completion_queue_control_value);

   // Set the completion queue get pointer and enable the queue
   completion_queue_get_value = (
        (FUNC4(POINTER, 0))
      | (FUNC4(EVENT_POINTER, 0))
      | (FUNC3(ENABLE))
      | (FUNC3(EVENT_ENABLE))
   );

   FUNC5(this_controller, completion_queue_get_value);

   this_controller->completion_queue_get = completion_queue_get_value;

   // Set the completion queue put pointer
   completion_queue_put_value = (
        (FUNC6(POINTER, 0))
      | (FUNC6(EVENT_POINTER, 0))
   );

   FUNC7(this_controller, completion_queue_put_value);

   // Initialize the cycle bit of the completion queue entries
   for (index = 0; index < this_controller->completion_queue_entries; index++)
   {
      // If get.cycle_bit != completion_queue.cycle_bit
      // its not a valid completion queue entry
      // so at system start all entries are invalid
      this_controller->completion_queue[index] = 0x80000000;
   }
}