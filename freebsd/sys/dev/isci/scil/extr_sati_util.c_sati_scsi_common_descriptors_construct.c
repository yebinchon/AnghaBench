
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U8 ;
typedef scalar_t__ U32 ;


 scalar_t__ SCSI_BLOCK_DESCRIPTOR_LENGTH ;
 scalar_t__ SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH ;
 scalar_t__ SCSI_INFORMATION_DESCRIPTOR_LENGTH ;
 scalar_t__* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (scalar_t__*,int ) ;
 int sati_scsi_block_descriptor_construct (scalar_t__*,scalar_t__) ;
 int sati_scsi_command_specific_descriptor_construct (scalar_t__*,scalar_t__,int *) ;
 int sati_scsi_information_descriptor_construct (scalar_t__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static
void sati_scsi_common_descriptors_construct(
    void * scsi_io,
    U8 * sense_data,
    U32 sense_len,
    U8 * information_buff)
{
    U8 * cdb = sati_cb_get_cdb_address(scsi_io);
    U8 offset = 0;

    switch (sati_get_cdb_byte(cdb, 0))
    {

    case 129:
    case 128:
        sati_scsi_block_descriptor_construct(
                sense_data + offset,
                sense_len - offset);

        offset += SCSI_BLOCK_DESCRIPTOR_LENGTH;
        sati_scsi_information_descriptor_construct(
                  sense_data + offset,
                  sense_len - offset,
                  information_buff);

        offset += SCSI_INFORMATION_DESCRIPTOR_LENGTH;
        break;


    case 140:
        sati_scsi_command_specific_descriptor_construct(
          sense_data + offset,
          sense_len - offset,
          ((void*)0));

        offset += SCSI_CMD_SPECIFIC_DESCRIPTOR_LENGTH;
        sati_scsi_information_descriptor_construct(
                  sense_data + offset,
                  sense_len - offset,
                  information_buff);

        offset += SCSI_INFORMATION_DESCRIPTOR_LENGTH;
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



        sati_scsi_information_descriptor_construct(
                  sense_data + offset,
                  sense_len - offset,
                  information_buff);

        offset += SCSI_INFORMATION_DESCRIPTOR_LENGTH;
        break;
    }
}
