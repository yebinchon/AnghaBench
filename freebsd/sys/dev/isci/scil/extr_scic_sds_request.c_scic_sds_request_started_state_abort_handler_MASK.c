#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_4__ {TYPE_1__ parent; int /*<<< orphan*/  started_substate_machine; scalar_t__ has_started_substate_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_ABORTING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC2(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   if (this_request->has_started_substate_machine)
   {
      FUNC1(&this_request->started_substate_machine);
   }

   FUNC0(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_ABORTING
   );

   return SCI_SUCCESS;
}