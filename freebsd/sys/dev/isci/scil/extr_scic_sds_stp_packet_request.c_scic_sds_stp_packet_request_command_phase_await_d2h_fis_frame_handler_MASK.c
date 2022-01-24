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
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_8__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_10__ {TYPE_1__ parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  d2h_reg_fis; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef  TYPE_3__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_COMPLETED ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_DONE_CHECK_RESPONSE ; 
 int /*<<< orphan*/  SCU_TASK_DONE_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCIC_SDS_REQUEST_T * request,
   U32                  frame_index
)
{
   SCI_STATUS status =
      FUNC2(
         request, frame_index);

   SCIC_SDS_STP_REQUEST_T * this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   if (status == SCI_SUCCESS)
   {
       // The command has completed with error status from target device.
      status = FUNC3(
         request, &this_request->d2h_reg_fis);

      if (status != SCI_SUCCESS)
      {
         FUNC1(
            request,
            SCU_TASK_DONE_CHECK_RESPONSE,
            status
         );
      }
      else
         FUNC1(
            request, SCU_TASK_DONE_GOOD, SCI_SUCCESS
         );

      //Always complete the NON_DATA command right away, no need to delay completion
      //even an error status fis came from target device.
      FUNC0(
         &request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_COMPLETED
      );
   }

   return status;
}