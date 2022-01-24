#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  scalar_t__ SCI_TASK_REQUEST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_CONSTRUCTED ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

SCI_STATUS FUNC6(
   SCI_TASK_REQUEST_HANDLE_T  scic_task_request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)
                                      scic_task_request;

   FUNC0((
      FUNC1(this_request),
      SCIC_LOG_OBJECT_SSP_IO_REQUEST,
      "scic_task_request_construct_ssp(0x%x) enter\n",
      this_request
   ));

   // Construct the SSP Task SCU Task Context
   FUNC5(this_request);

   // Fill in the SSP Task IU
   FUNC4(this_request);

   FUNC3(this_request);

   FUNC2(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return SCI_SUCCESS;
}