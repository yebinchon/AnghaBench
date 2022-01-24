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
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_CONTROLLER_T    *controller,
   SCI_BASE_REMOTE_DEVICE_T *remote_device,
   SCI_BASE_REQUEST_T       *io_request
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC1(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "SCIC Controller request operation from invalid state %d\n",
      FUNC2(
         FUNC3(this_controller))
   ));

   return SCI_FAILURE_INVALID_STATE;
}