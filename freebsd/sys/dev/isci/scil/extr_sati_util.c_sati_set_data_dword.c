
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_set_data_byte (int *,void*,int,int) ;

void sati_set_data_dword(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U32 byte_offset,
   U32 value
)
{


   sati_set_data_byte(sequence, scsi_io, byte_offset, (U8)value & 0xFF);
       byte_offset++;
   sati_set_data_byte(sequence, scsi_io, byte_offset, (U8)(value >> 8) & 0xFF);
       byte_offset++;
   sati_set_data_byte(sequence, scsi_io, byte_offset, (U8)(value >> 16) & 0xFF);
       byte_offset++;
   sati_set_data_byte(sequence, scsi_io, byte_offset, (U8)(value >> 24) & 0xFF);
}
