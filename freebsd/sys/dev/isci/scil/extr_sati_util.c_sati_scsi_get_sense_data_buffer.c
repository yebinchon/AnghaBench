
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_RESPONSE_DATA_PRES_SENSE_DATA ;
 int SSP_RESPONSE_IU_MAX_DATA ;
 scalar_t__ sati_cb_get_response_iu_address (void*) ;
 int * sati_cb_get_sense_data_address (void*) ;
 int sati_cb_get_sense_data_length (void*) ;
 int sati_cb_set_scsi_status (void*,int ) ;
 int sati_scsi_common_response_iu_construct (TYPE_1__*,int ,int ,int ) ;
 int sati_scsi_get_sense_data_length (int *,void*) ;

__attribute__((used)) static
void sati_scsi_get_sense_data_buffer(
    SATI_TRANSLATOR_SEQUENCE_T * sequence,
    void * scsi_io,
    U8 scsi_status,
    U8 ** sense_data,
    U32 * sense_len)
{
   *sense_data = sati_cb_get_sense_data_address(scsi_io);
   *sense_len = sati_cb_get_sense_data_length(scsi_io);
   sati_cb_set_scsi_status(scsi_io, scsi_status);

}
