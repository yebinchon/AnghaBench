
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_BLOCK_DESCRIPTOR_LENGTH ;
 int SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH ;
 int SCSI_INFORMATION_DESCRIPTOR_LENGTH ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int*,int ) ;

__attribute__((used)) static
U8 sati_scsi_get_descriptor_sense_data_length(SATI_TRANSLATOR_SEQUENCE_T * sequence,
        void * scsi_io)
{
    U8 * cdb = sati_cb_get_cdb_address(scsi_io);

    U8 length = 8;

    switch (sati_get_cdb_byte(cdb, 0))
    {

    case 129:
    case 128:
        length += SCSI_BLOCK_DESCRIPTOR_LENGTH +
            SCSI_INFORMATION_DESCRIPTOR_LENGTH;
        break;


    case 140:
        length += SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH +
            SCSI_INFORMATION_DESCRIPTOR_LENGTH;
        break;

    case 141:
    case 144:
    case 143:
    case 142:
    case 133:
    case 136:
    case 135:
    case 134:

    case 139:
    case 138:
    case 137:





    case 132:
    case 131:
    case 130:



        length += SCSI_INFORMATION_DESCRIPTOR_LENGTH;
        break;
    }

    return length;
}
