
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_set_data_byte (int *,void*,int,int) ;

__attribute__((used)) static
void sati_self_test_log_header_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io
)
{

   sati_set_data_byte(sequence, scsi_io, 0, 0x10);
   sati_set_data_byte(sequence, scsi_io, 1, 0x00);


   sati_set_data_byte(sequence, scsi_io, 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, 3, 0x14);





   sati_set_data_byte(sequence, scsi_io, 4, 0x00);
   sati_set_data_byte(sequence, scsi_io, 5, 0x01);


   sati_set_data_byte(sequence, scsi_io, 6, 0x03);


   sati_set_data_byte(sequence, scsi_io, 7, 0x10);
}
