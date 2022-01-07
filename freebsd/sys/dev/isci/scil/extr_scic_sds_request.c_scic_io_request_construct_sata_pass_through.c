
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_12__ {int protocol; scalar_t__ command_buffer; } ;
struct TYPE_10__ {int (* scic_cb_passthru_get_data_direction ) (TYPE_3__*) ;int (* scic_cb_passthru_get_transfer_length ) (TYPE_3__*) ;} ;
struct TYPE_11__ {TYPE_1__ common_callbacks; int (* scic_cb_stp_passthru_get_protocol ) (TYPE_3__*) ;int (* scic_cb_stp_passthru_get_register_fis ) (TYPE_3__*,int **) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef int SCI_IO_REQUEST_DATA_DIRECTION ;
typedef TYPE_2__ SCIC_STP_PASSTHRU_REQUEST_CALLBACKS_T ;
typedef TYPE_3__ SCIC_SDS_REQUEST_T ;
typedef int SATA_FIS_REG_H2D_T ;


 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_STP_PROTOCOL ;
 scalar_t__ SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 scalar_t__ SCI_SUCCESS ;
 int TRUE ;
 int memcpy (int *,int *,int) ;
 int sci_base_object_get_logger (scalar_t__) ;
 scalar_t__ scic_sds_io_request_construct_sata (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int stub1 (TYPE_3__*,int **) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

SCI_STATUS scic_io_request_construct_sata_pass_through(
   SCI_IO_REQUEST_HANDLE_T scic_io_request,
   SCIC_STP_PASSTHRU_REQUEST_CALLBACKS_T *passthru_cb
)
{
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T * this_request;
   U8 sat_protocol;
   U8 * reg_fis;
   U32 transfer_length;
   SCI_IO_REQUEST_DATA_DIRECTION data_direction;

   this_request = (SCIC_SDS_REQUEST_T * )scic_io_request;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(scic_io_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_io_request_construct_sata_pass_through(0x%x) enter\n",
      scic_io_request
   ));

   passthru_cb->scic_cb_stp_passthru_get_register_fis(this_request, &reg_fis);

   if (reg_fis == ((void*)0))
   {
      status = SCI_FAILURE_INVALID_PARAMETER_VALUE;
   }

   if (status == SCI_SUCCESS)
   {

      memcpy ((U8 *)this_request->command_buffer, (U8 *)reg_fis, sizeof(SATA_FIS_REG_H2D_T));


      sat_protocol = passthru_cb->scic_cb_stp_passthru_get_protocol(this_request);
      transfer_length = passthru_cb->common_callbacks.scic_cb_passthru_get_transfer_length(this_request);
      data_direction = passthru_cb->common_callbacks.scic_cb_passthru_get_data_direction(this_request);

      status = scic_sds_io_request_construct_sata(
                  this_request,
                  sat_protocol,
                  transfer_length,
                  data_direction,
                  TRUE,
                  TRUE
               );

      this_request->protocol = SCIC_STP_PROTOCOL;
   }

   return status;
}
