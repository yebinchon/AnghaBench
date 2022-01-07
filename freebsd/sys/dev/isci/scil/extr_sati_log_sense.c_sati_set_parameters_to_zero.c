
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_set_data_byte (int *,void*,int,int) ;

__attribute__((used)) static
void sati_set_parameters_to_zero(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io
)
{
      sati_set_data_byte(sequence, scsi_io, 8, 0x00);
      sati_set_data_byte(sequence, scsi_io, 9, 0x00);
      sati_set_data_byte(sequence, scsi_io, 10, 0x00);
      sati_set_data_byte(sequence, scsi_io, 11, 0x00);
      sati_set_data_byte(sequence, scsi_io, 12, 0x00);
      sati_set_data_byte(sequence, scsi_io, 13, 0x00);
      sati_set_data_byte(sequence, scsi_io, 14, 0x00);
      sati_set_data_byte(sequence, scsi_io, 15, 0x00);
      sati_set_data_byte(sequence, scsi_io, 16, 0x00);
      sati_set_data_byte(sequence, scsi_io, 17, 0x00);
      sati_set_data_byte(sequence, scsi_io, 18, 0x00);
      sati_set_data_byte(sequence, scsi_io, 19, 0x00);
      sati_set_data_byte(sequence, scsi_io, 20, 0x00);
      sati_set_data_byte(sequence, scsi_io, 21, 0x00);
      sati_set_data_byte(sequence, scsi_io, 22, 0x00);
      sati_set_data_byte(sequence, scsi_io, 23, 0x00);
}
