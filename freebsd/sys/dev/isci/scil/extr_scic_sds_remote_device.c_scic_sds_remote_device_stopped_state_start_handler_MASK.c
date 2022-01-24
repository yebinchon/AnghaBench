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
struct TYPE_4__ {int /*<<< orphan*/  rnc; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STARTING ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_remote_device_resume_complete_handler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{
   SCI_STATUS status;
   SCIC_SDS_REMOTE_DEVICE_T  *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   status = FUNC2(
               this_device->rnc,
               scic_sds_remote_device_resume_complete_handler,
               this_device
            );

   if (status == SCI_SUCCESS)
   {
      FUNC0(
         FUNC1(this_device),
         SCI_BASE_REMOTE_DEVICE_STATE_STARTING
      );
   }

   return status;
}