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
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_REMOTE_DEVICE_T *device,
   SCI_BASE_REQUEST_T       *request
)
{
   SCI_STATUS result;
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T       *the_request = (SCIC_SDS_REQUEST_T       *)request;

   result = FUNC3(the_request);

   if (result == SCI_SUCCESS)
   {
      // See if the port is in a state where we can start the IO request
      result = FUNC0(
         FUNC2(this_device), this_device, the_request);

      if (result == SCI_SUCCESS)
      {
         FUNC1(this_device);
      }
   }

   return result;
}