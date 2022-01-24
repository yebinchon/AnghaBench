#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ device_sequence; int /*<<< orphan*/  parent; TYPE_2__* state_handlers; int /*<<< orphan*/  target_device; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* start_handler ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_3__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC2(
   SCIC_SDS_REQUEST_T *this_request
)
{
   if (
         this_request->device_sequence
      == FUNC0(this_request->target_device)
      )
   {
      return this_request->state_handlers->parent.start_handler(
                &this_request->parent
             );
   }

   return SCI_FAILURE;
}