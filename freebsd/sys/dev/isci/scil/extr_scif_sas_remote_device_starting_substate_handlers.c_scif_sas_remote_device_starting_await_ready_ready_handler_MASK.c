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
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_6__ {scalar_t__ destination_state; int /*<<< orphan*/  domain; TYPE_1__ parent; } ;
typedef  TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_READY ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static
void FUNC2(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
#if !defined(DISABLE_WIDE_PORTED_TARGETS)
   if (fw_device->destination_state ==
          SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH)
   {
      {
         FUNC0(
            &fw_device->parent.state_machine,
            SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH
         );
      }
   }
   else
#endif
   {
      FUNC0(
         &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_READY
      );
   }

#if !defined(DISABLE_WIDE_PORTED_TARGETS)
   FUNC1(fw_device->domain,fw_device);
#endif
}