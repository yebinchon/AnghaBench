#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U16 ;
struct TYPE_12__ {int /*<<< orphan*/  pool; } ;
struct TYPE_15__ {TYPE_2__ hprq; } ;
struct TYPE_14__ {int /*<<< orphan*/ * internal_io_timer; } ;
struct TYPE_11__ {int /*<<< orphan*/  is_internal; } ;
struct TYPE_13__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SMP_REQUEST_T ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;
typedef  TYPE_4__ SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef  TYPE_5__ SCIF_SAS_CONTROLLER_T ;
typedef  int /*<<< orphan*/  POINTER_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  SCI_CONTROLLER_INVALID_IO_TAG ; 
 scalar_t__ SCI_FAILURE_INSUFFICIENT_RESOURCES ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  scif_sas_internal_io_request_timeout_handler ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC8(
   SCIF_SAS_CONTROLLER_T       * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T    * fw_device,
   void                        * internal_io_memory,
   U16                           io_tag,
   SMP_REQUEST_T               * smp_command
)
{
   SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io  =
     (SCIF_SAS_INTERNAL_IO_REQUEST_T*)internal_io_memory;

   SCIF_SAS_IO_REQUEST_T * fw_io =
     (SCIF_SAS_IO_REQUEST_T*)internal_io_memory;

   SCI_STATUS status;

   //call common smp request construct routine.
   status = FUNC7(
               fw_controller,
               fw_device,
               internal_io_memory,
               (char *)internal_io_memory + sizeof(SCIF_SAS_INTERNAL_IO_REQUEST_T),
               SCI_CONTROLLER_INVALID_IO_TAG,
               smp_command,
               NULL //there is no associated user io object.
            );

   //Codes below are all internal io related.
   if (status == SCI_SUCCESS)
   {
      //set the is_internal flag
      fw_io->parent.is_internal = TRUE;

      if (fw_internal_io->internal_io_timer == NULL)
      {
         //create the timer for this internal request.
         fw_internal_io->internal_io_timer =
            FUNC5(
               (SCI_CONTROLLER_HANDLE_T *)fw_controller,
               scif_sas_internal_io_request_timeout_handler,
               (void*)fw_io
            );
      }
      else
      {
         FUNC0 (0);
      }

      //insert into high priority queue
      if ( !FUNC3(fw_controller->hprq.pool) )
      {
         FUNC4(
            fw_controller->hprq.pool, (POINTER_UINT) internal_io_memory
         );
      }
      else
      {
         FUNC1((
            FUNC2(fw_controller),
            SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_REMOTE_DEVICE,
            "scif_sas_internal_io_request_construct_smp, high priority queue full!\n"
         ));

         FUNC6(fw_controller, fw_internal_io);

         //return failure status.
         return SCI_FAILURE_INSUFFICIENT_RESOURCES;
      }
   }

   return status;
}