
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef scalar_t__ U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_set_data_byte (int *,void*,scalar_t__,int ) ;

void sati_copy_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * destination_scsi_io,
   U32 destination_offset,
   U8 * source_buffer,
   U32 length
)
{
   while (length > 0)
   {
      sati_set_data_byte(
         sequence, destination_scsi_io, destination_offset, *source_buffer
      );

      destination_offset++;
      source_buffer++;
      length--;
   }
}
