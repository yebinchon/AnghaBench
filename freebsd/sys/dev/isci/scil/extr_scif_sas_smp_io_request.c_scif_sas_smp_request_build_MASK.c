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
typedef  int /*<<< orphan*/  SMP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_IO_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  SCI_CONTROLLER_INVALID_IO_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static
void * FUNC6(
   SCIF_SAS_CONTROLLER_T    * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_REQUEST_T            * smp_request,
   void                     * external_request_object,
   void                     * external_memory
)
{
   if (external_memory != NULL && external_request_object != NULL)
   {
      FUNC5(
         fw_controller,
         fw_device,
         external_memory,
         (char *)external_memory + sizeof(SCIF_SAS_IO_REQUEST_T),
         SCI_CONTROLLER_INVALID_IO_TAG,
         smp_request,
         external_request_object
      );

      return external_memory;
   }
   else
   {
      void * internal_io_memory;
      internal_io_memory = FUNC3(fw_controller);
      FUNC0(internal_io_memory != NULL);

      if (internal_io_memory != NULL)
      {
         //construct, only when we got valid io memory.
         FUNC4(
            fw_controller,
            fw_device,
            internal_io_memory,
            SCI_CONTROLLER_INVALID_IO_TAG,
            smp_request
         );
      }
      else
      {
         FUNC1((
            FUNC2(fw_controller),
            SCIF_LOG_OBJECT_IO_REQUEST,
            "scif_sas_smp_request_build, no memory available!\n"
         ));
      }

      return internal_io_memory;
   }
}