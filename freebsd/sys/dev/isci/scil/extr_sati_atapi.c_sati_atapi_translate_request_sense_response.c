
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int is_sense_response_set; } ;
typedef int SCI_SSP_RESPONSE_IU_T ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int SATI_SEQUENCE_STATE_FINAL ;
 int SCSI_RESPONSE_DATA_PRES_SENSE_DATA ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int TRUE ;
 scalar_t__ sati_cb_get_response_iu_address (void*) ;
 int sati_scsi_common_response_iu_construct (int *,int ,int ,int ) ;
 int sati_scsi_get_sense_data_length (TYPE_1__*,void*) ;

void sati_atapi_translate_request_sense_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * atapi_io
)
{

   SCI_SSP_RESPONSE_IU_T * rsp_iu = (SCI_SSP_RESPONSE_IU_T*)
                                 sati_cb_get_response_iu_address(scsi_io);

   sati_scsi_common_response_iu_construct(
      rsp_iu,
      SCSI_STATUS_CHECK_CONDITION,
      sati_scsi_get_sense_data_length(sequence, scsi_io),
      SCSI_RESPONSE_DATA_PRES_SENSE_DATA
   );

   sequence->is_sense_response_set = TRUE;

   sequence->state = SATI_SEQUENCE_STATE_FINAL;
}
