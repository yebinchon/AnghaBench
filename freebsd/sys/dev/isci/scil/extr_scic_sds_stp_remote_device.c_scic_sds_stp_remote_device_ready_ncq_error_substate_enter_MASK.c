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
struct TYPE_5__ {scalar_t__ not_ready_reason; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_stp_remote_device_ready_substate_handler_table ; 

__attribute__((used)) static
void FUNC3(
   SCI_BASE_OBJECT_T * device
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;

   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   FUNC0(
      this_device,
      scic_sds_stp_remote_device_ready_substate_handler_table,
      SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
   );

   if(this_device->not_ready_reason ==
         SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED)
   {
      FUNC1(
         FUNC2(this_device),
         this_device,
         this_device->not_ready_reason
      );
   }
}