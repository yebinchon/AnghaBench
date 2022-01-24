#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_6__ {scalar_t__ crc; } ;
struct TYPE_7__ {TYPE_1__ report_general; } ;
struct TYPE_8__ {TYPE_2__ request; } ;
typedef  int /*<<< orphan*/  SMP_RESPONSE_REPORT_GENERAL_T ;
typedef  TYPE_3__ SMP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  SMP_FUNCTION_REPORT_GENERAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void * FUNC4(
   SCIF_SAS_CONTROLLER_T    * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SMP_REQUEST_T smp_report_general;

   // Build the REPORT GENERAL request.
   FUNC2(
      &smp_report_general,
      SMP_FUNCTION_REPORT_GENERAL,
      sizeof(SMP_RESPONSE_REPORT_GENERAL_T) / sizeof(U32),
      0
   );

   smp_report_general.request.report_general.crc = 0;

   FUNC0(*(
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_IO_REQUEST | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "SMP REPORT GENERAL -  Device:0x%x\n",
      fw_device
   ));

   return FUNC3(
             fw_controller, fw_device, &smp_report_general, NULL, NULL);
}