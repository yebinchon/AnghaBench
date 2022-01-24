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
typedef  int /*<<< orphan*/  SCI_IO_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_DOMAIN_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_DOMAIN_T        * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T       * io_request,
   void                     * response_data,
   SCI_IO_STATUS              completion_status
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *) domain;
   SCI_STATUS          status;

   FUNC0(*(
      FUNC1(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_domain_stopping_complete_io_handler(0x%x, 0x%x, 0x%x) enter\n",
      domain, remote_device, io_request
   ));

   status = FUNC2(
               domain, remote_device, io_request, response_data, completion_status
            );

   // Attempt to transition to the stopped state.
   FUNC3(fw_domain);

   return status;
}