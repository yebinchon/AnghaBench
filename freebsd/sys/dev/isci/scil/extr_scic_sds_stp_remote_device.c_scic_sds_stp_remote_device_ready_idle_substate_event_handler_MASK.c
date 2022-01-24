#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_6__ {scalar_t__ destination_state; } ;
struct TYPE_5__ {TYPE_3__* rnc; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX ; 
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
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
      if ((FUNC2(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX
          || FUNC2(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX)
          && (this_device->rnc->destination_state != SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY))
      {
         status = FUNC1(
                  this_device->rnc, NULL, NULL);
      }
   }

   return status;
}