#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ function_result; } ;
struct TYPE_4__ {TYPE_2__ header; } ;
typedef  TYPE_1__ SMP_RESPONSE_T ;
typedef  TYPE_2__ SMP_RESPONSE_HEADER_T ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 scalar_t__ SMP_RESULT_FUNCTION_ACCEPTED ; 
 scalar_t__ SMP_RESULT_INDEX_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_RESPONSE_T           * smp_response
)
{
   SMP_RESPONSE_HEADER_T * response_header = &smp_response->header;

   FUNC1((
      FUNC2(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_decode_config_route_info_response(0x%x, 0x%x) enter\n",
      fw_device, smp_response
   ));

   if (response_header->function_result == SMP_RESULT_INDEX_DOES_NOT_EXIST)
   {
      //case of exceeding max route index. We need to remove the devices that are not
      //able to be edit to route table. The destination config route smp phy
      //is used to remove devices.
      FUNC3(fw_device);

      return SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX;
   }
   else if (response_header->function_result != SMP_RESULT_FUNCTION_ACCEPTED)
   {
      /// @todo: more decoding work needed when the function_result is not
      /// SMP_RESULT_FUNCTION_ACCEPTED. Retry might be the option for some
      /// function result.
      FUNC0((
         FUNC2(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Discover function result(0x%x)\n",
         response_header->function_result
      ));

      return SCI_FAILURE;
   }

   return SCI_SUCCESS;
}