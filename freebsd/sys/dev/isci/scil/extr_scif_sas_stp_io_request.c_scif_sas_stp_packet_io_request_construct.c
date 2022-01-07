
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


struct TYPE_11__ {int sequence; } ;
struct TYPE_14__ {int protocol_complete_handler; int core_object; TYPE_1__ stp; TYPE_5__* device; } ;
struct TYPE_16__ {TYPE_4__ parent; } ;
struct TYPE_12__ {int sati_device; } ;
struct TYPE_13__ {TYPE_2__ stp_device; } ;
struct TYPE_15__ {TYPE_3__ protocol_device; } ;
typedef int SCI_STATUS ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_IO_REQUEST_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_COMPLETE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 scalar_t__ SATI_SUCCESS ;
 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_FAILURE_IO_RESPONSE_VALID ;
 int SCI_SUCCESS_IO_COMPLETE_BEFORE_START ;
 scalar_t__ sati_atapi_translate_command (int *,int *,TYPE_6__*,TYPE_6__*) ;
 int sci_base_object_get_logger (TYPE_6__*) ;
 int scic_io_request_construct_basic_sata (int ) ;
 int scif_sas_stp_core_cb_packet_io_request_complete_handler ;

SCI_STATUS scif_sas_stp_packet_io_request_construct(
   SCIF_SAS_IO_REQUEST_T * fw_io
)
{
   SATI_STATUS sati_status;
   SCI_STATUS sci_status = SCI_FAILURE;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = fw_io->parent.device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_io),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_stp_packet_io_request_construct(0x%x) enter\n",
      fw_io
   ));

   sati_status = sati_atapi_translate_command(
                    &fw_io->parent.stp.sequence,
                    &fw_device->protocol_device.stp_device.sati_device,
                    fw_io,
                    fw_io
                 );

   if (sati_status == SATI_SUCCESS)
   {

      sci_status = scic_io_request_construct_basic_sata(fw_io->parent.core_object);

      fw_io->parent.protocol_complete_handler
         = scif_sas_stp_core_cb_packet_io_request_complete_handler;
   }
   else if (sati_status == SATI_COMPLETE)
      sci_status = SCI_SUCCESS_IO_COMPLETE_BEFORE_START;
   else if (sati_status == SATI_FAILURE_CHECK_RESPONSE_DATA)
      sci_status = SCI_FAILURE_IO_RESPONSE_VALID;
   else
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_io),
         SCIF_LOG_OBJECT_IO_REQUEST,
         "Unexpected SAT ATAPI translation failure 0x%x\n",
         fw_io
      ));
   }

   return sci_status;
}
