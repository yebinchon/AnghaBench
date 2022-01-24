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
typedef  int /*<<< orphan*/  U32 ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_FAILURE_IO_RESPONSE_VALID ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_DONE_CHECK_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC2(
   SCIC_SDS_REQUEST_T * this_request,
   U32                  frame_index
)
{
   SCI_STATUS status;

   // Use the general frame handler to copy the resposne data
   status = FUNC1(this_request, frame_index);

   if (status == SCI_SUCCESS)
   {
      FUNC0(
         this_request,
         SCU_TASK_DONE_CHECK_RESPONSE,
         SCI_FAILURE_IO_RESPONSE_VALID
      );
   }

   return status;
}