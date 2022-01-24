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
typedef  int U8 ;
struct TYPE_5__ {int /*<<< orphan*/ * device; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;
typedef  int /*<<< orphan*/  SATI_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_FAILURE ; 
#define  SCSI_TASK_REQUEST_ABORT_TASK 130 
#define  SCSI_TASK_REQUEST_ABORT_TASK_SET 129 
#define  SCSI_TASK_REQUEST_LOGICAL_UNIT_RESET 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,void*) ; 

SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   SATI_DEVICE_T              * sati_device,
   void                       * scsi_task,
   void                       * ata_io
)
{
   SATI_STATUS status=SATI_FAILURE;
   U8 task_function = FUNC1(scsi_task);

   sequence->device = sati_device;

   switch (task_function)
   {
      /**
       * @todo We need to update the ABORT_TASK and ABORT_TASK_SET to be
       *       SAT compliant.
       */
      case SCSI_TASK_REQUEST_ABORT_TASK:
      case SCSI_TASK_REQUEST_LOGICAL_UNIT_RESET:
         status = FUNC2(sequence, scsi_task, ata_io);
      break;

      case SCSI_TASK_REQUEST_ABORT_TASK_SET:
#if !defined(DISABLE_SATI_ABORT_TASK_SET)
         status = FUNC0(sequence, scsi_task, ata_io);
#else
         status = SATI_FAILURE;
#endif
         break;
      default:
         status = SATI_FAILURE;
      break;
   }

   return status;
}