
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;






 int SCSI_FIXED_SENSE_DATA_BASE_LENGTH ;
 int sati_scsi_get_descriptor_sense_data_length (int *,void*) ;
 int sati_scsi_get_sense_data_response_code (int *) ;

U8 sati_scsi_get_sense_data_length(SATI_TRANSLATOR_SEQUENCE_T * sequence, void * scsi_io)
{
    U8 response_code;

    response_code = sati_scsi_get_sense_data_response_code(sequence);

    switch (response_code)
    {
    case 129:
    case 128:
        return SCSI_FIXED_SENSE_DATA_BASE_LENGTH;
    break;
    case 131:
    case 130:
        return sati_scsi_get_descriptor_sense_data_length(sequence, scsi_io);
    break;
    }

    return SCSI_FIXED_SENSE_DATA_BASE_LENGTH;
}
