
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {int is_sense_response_set; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;






 int TRUE ;
 int sati_scsi_get_sense_data_response_code (TYPE_1__*) ;
 int sati_scsi_read_ncq_error_descriptor_sense_construct (TYPE_1__*,void*,void*,int,int,int,int,int) ;
 int sati_scsi_read_ncq_error_fixed_sense_construct (TYPE_1__*,void*,void*,int,int,int,int,int) ;

void sati_scsi_read_ncq_error_sense_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_input_data,
   U8 scsi_status,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{
    U8 response_code;

    response_code = sati_scsi_get_sense_data_response_code(sequence);

    switch (response_code)
    {
    case 129:
    case 128:
        sati_scsi_read_ncq_error_fixed_sense_construct(sequence, scsi_io, ata_input_data, scsi_status,
                response_code, sense_key, additional_sense_code, additional_sense_code_qualifier);
    break;
    case 131:
    case 130:
        sati_scsi_read_ncq_error_descriptor_sense_construct(sequence, scsi_io, ata_input_data, scsi_status,
                response_code, sense_key, additional_sense_code, additional_sense_code_qualifier);
        break;
    }

    sequence->is_sense_response_set = TRUE;
}
