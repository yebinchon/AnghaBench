#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC4(
   SCIC_SDS_PORT_T          *this_port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T       *io_request
)
{
   FUNC0((
      FUNC1(this_port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x requested to complete io request 0x%08x while in invalid state %d\n",
      this_port, io_request,
      FUNC2(
         FUNC3(this_port))
   ));

   return SCI_FAILURE_INVALID_STATE;
}