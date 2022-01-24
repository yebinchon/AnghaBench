#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ started_request_count; int /*<<< orphan*/  ready_substate_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC2(
   SCIC_SDS_PORT_T          *port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T       *io_request
)
{
   FUNC1(port);

   if (port->started_request_count == 0)
   {
      FUNC0(
         &port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
      );
   }

   return SCI_SUCCESS;
}