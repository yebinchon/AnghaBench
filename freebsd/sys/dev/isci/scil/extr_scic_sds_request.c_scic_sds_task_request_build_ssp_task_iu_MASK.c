#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_6__ {scalar_t__ command_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  task_tag; int /*<<< orphan*/  task_function; int /*<<< orphan*/  lun_lower; scalar_t__ lun_upper; } ;
typedef  TYPE_1__ SCI_SSP_TASK_IU_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC4(
   SCIC_SDS_REQUEST_T *this_request
)
{
   SCI_SSP_TASK_IU_T *command_frame;
   void              *os_handle;

   command_frame =
      (SCI_SSP_TASK_IU_T *)this_request->command_buffer;

   os_handle = FUNC3(this_request);

   command_frame->lun_upper = 0;
   command_frame->lun_lower = FUNC2(os_handle);

   ((U32 *)command_frame)[2] = 0;

   command_frame->task_function =
      FUNC0(os_handle);
   command_frame->task_tag =
      FUNC1(os_handle);
}