#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U16 ;
struct TYPE_2__ {size_t* io_request_sequence; int /*<<< orphan*/  tci_pool; } ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SCI_CONTROLLER_INVALID_IO_TAG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (size_t,size_t) ; 

U16 FUNC5(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   U16 task_context;
   U16 sequence_count;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC1(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_allocate_io_tag(0x%x) enter\n",
      controller
   ));

   if (!FUNC2(this_controller->tci_pool))
   {
      FUNC3(this_controller->tci_pool, task_context);

      sequence_count = this_controller->io_request_sequence[task_context];

      return FUNC4(sequence_count, task_context);
   }

   return SCI_CONTROLLER_INVALID_IO_TAG;
}