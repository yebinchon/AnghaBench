#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_10__ {TYPE_3__* working_request; int /*<<< orphan*/  rnc; } ;
struct TYPE_9__ {TYPE_2__* state_handlers; } ;
struct TYPE_7__ {scalar_t__ complete_handler; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;
typedef  TYPE_4__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX ; 
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32                        event_code
)
{
   SCI_STATUS status;

   status = FUNC0(this_device, event_code);

   if (status == SCI_SUCCESS)
   {
      if (FUNC2(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX
          || FUNC2(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX)
      {
         status = FUNC1(
                     this_device->rnc,
                     (SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK)
                        this_device->working_request->state_handlers->parent.complete_handler,
                     (void *)this_device->working_request
                  );
      }
   }

   return status;
}