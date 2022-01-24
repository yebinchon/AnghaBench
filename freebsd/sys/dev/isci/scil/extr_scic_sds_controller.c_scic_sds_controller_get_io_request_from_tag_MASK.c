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
typedef  size_t U16 ;
struct TYPE_3__ {size_t task_context_entries; scalar_t__* io_request_table; size_t* io_request_sequence; } ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ SCI_INVALID_HANDLE ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 

SCIC_SDS_REQUEST_T *FUNC2(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U16                    io_tag
)
{
   U16 task_index;
   U16 task_sequence;

   task_index = FUNC0(io_tag);

   if (task_index  < this_controller->task_context_entries)
   {
      if (this_controller->io_request_table[task_index] != SCI_INVALID_HANDLE)
      {
         task_sequence = FUNC1(io_tag);

         if (task_sequence == this_controller->io_request_sequence[task_index])
         {
            return this_controller->io_request_table[task_index];
         }
      }
   }

   return SCI_INVALID_HANDLE;
}