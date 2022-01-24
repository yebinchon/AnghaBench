#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ started_request_count; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_PORT_STATE_STOPPED ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCIC_SDS_PORT_T          *port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T       *io_request
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   FUNC1(this_port);

   if (this_port->started_request_count == 0)
   {
      FUNC0(
         FUNC2(this_port),
         SCI_BASE_PORT_STATE_STOPPED
      );
   }

   return SCI_SUCCESS;
}