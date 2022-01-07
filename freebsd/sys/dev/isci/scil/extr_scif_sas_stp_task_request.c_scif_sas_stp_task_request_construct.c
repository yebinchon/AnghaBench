
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int sati_device; } ;
struct TYPE_13__ {TYPE_2__ stp_device; } ;
struct TYPE_16__ {TYPE_3__ protocol_device; } ;
struct TYPE_11__ {int sequence; } ;
struct TYPE_14__ {int protocol_complete_handler; int core_object; TYPE_1__ stp; TYPE_6__* device; } ;
struct TYPE_15__ {TYPE_4__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_5__ SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_SUCCESS ;
 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 scalar_t__ sati_translate_task_management (int *,int *,TYPE_5__*,TYPE_5__*) ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int scic_task_request_construct_sata (int ) ;
 int scif_sas_stp_core_cb_task_request_complete_handler ;

SCI_STATUS scif_sas_stp_task_request_construct(
   SCIF_SAS_TASK_REQUEST_T * fw_task
)
{
   SCI_STATUS sci_status = SCI_FAILURE;


   SATI_STATUS sati_status;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = fw_task->parent.device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_task),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_stp_task_request_construct(0x%x) enter\n",
      fw_task
   ));



   sati_status = sati_translate_task_management(
                    &fw_task->parent.stp.sequence,
                    &fw_device->protocol_device.stp_device.sati_device,
                    fw_task,
                    fw_task
                 );

   if (sati_status == SATI_SUCCESS)
   {
      sci_status = scic_task_request_construct_sata(fw_task->parent.core_object);

      fw_task->parent.protocol_complete_handler =
         scif_sas_stp_core_cb_task_request_complete_handler;
   }
   else
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_task),
         SCIF_LOG_OBJECT_TASK_MANAGEMENT,
         "Task 0x%x received unexpected SAT translation failure 0x%x\n",
         fw_task, sati_status
      ));
   }


   return sci_status;
}
