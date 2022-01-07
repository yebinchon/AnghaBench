
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int SCSI_CMD_SPECIFIC_DESCRIPTOR_ADDITIONAL_LENGTH ;
 int SCSI_CMD_SPECIFIC_DESCRIPTOR_TYPE ;
 int sati_set_sense_data_byte (int*,int ,int,int) ;

__attribute__((used)) static
void sati_scsi_command_specific_descriptor_construct(
    U8 * sense_data,
    U32 sense_len,
    U8 * information_buff)
{
    U8 i;

    sati_set_sense_data_byte(sense_data, sense_len, 0, SCSI_CMD_SPECIFIC_DESCRIPTOR_TYPE);
    sati_set_sense_data_byte(sense_data, sense_len, 1, SCSI_CMD_SPECIFIC_DESCRIPTOR_ADDITIONAL_LENGTH);
    sati_set_sense_data_byte(sense_data, sense_len, 2, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 3, 0);





    for (i=0; i<8; i++)
        sati_set_sense_data_byte(sense_data, sense_len, 4 + i, information_buff==((void*)0)?0xFF:information_buff[i]);
}
