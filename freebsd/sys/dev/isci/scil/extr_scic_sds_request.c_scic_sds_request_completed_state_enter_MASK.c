#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ is_task_management_request; int /*<<< orphan*/  sci_status; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_request_state_handler_table ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   FUNC0(
      this_request,
      scic_sds_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );

   // Tell the SCI_USER that the IO request is complete
   if (this_request->is_task_management_request == FALSE)
   {
      FUNC1(
         FUNC3(this_request),
         FUNC4(this_request),
         this_request,
         this_request->sci_status
      );
   }
   else
   {
      FUNC2(
         FUNC3(this_request),
         FUNC4(this_request),
         this_request,
         this_request->sci_status
      );
   }
}