#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rnc; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  scic_sds_cb_remote_device_rnc_destruct_complete ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC6(
   SCI_BASE_REMOTE_DEVICE_T *device,
   SCI_BASE_REQUEST_T       *request
)
{
   SCI_STATUS                status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T       *this_request = (SCIC_SDS_REQUEST_T   *)request;
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   status = FUNC5(this_request);
   if (status == SCI_SUCCESS)
   {
      status = FUNC0(
                  FUNC2(this_device),
                  this_device,
                  this_request
               );

      if (status == SCI_SUCCESS)
      {
         FUNC1(this_device);

         if (FUNC3(this_device) == 0)
         {
            FUNC4(
               this_device->rnc,
               scic_sds_cb_remote_device_rnc_destruct_complete,
               this_device
            );
         }
      }
   }

   return status;
}