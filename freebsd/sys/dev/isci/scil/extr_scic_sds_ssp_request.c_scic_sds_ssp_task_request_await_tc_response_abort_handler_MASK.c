#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_ABORTING ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_COMPLETED ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCI_BASE_REQUEST_T * request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   FUNC0((
      FUNC1(this_request),
      SCIC_LOG_OBJECT_TASK_MANAGEMENT,
      "scic_sds_ssp_task_request_await_tc_response_abort_handler(0x%x) enter\n",
      this_request
   ));

   FUNC2(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_ABORTING
   );

   FUNC2(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );

   return SCI_SUCCESS;
}