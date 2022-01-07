
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ BOOL ;


 scalar_t__ TRUE ;
 int sati_set_data_byte (int *,void*,int ,int) ;

__attribute__((used)) static
void sati_set_ascii_data_byte(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * destination_scsi_io,
   U32 destination_offset,
   U8 source_value,
   BOOL use_printable_chars
)
{


   if((use_printable_chars == TRUE)
     && ((source_value < 0x20) || (source_value > 0x7E)))
   {
      source_value = 0x20;
   }

   sati_set_data_byte(
      sequence, destination_scsi_io, destination_offset, source_value
   );
}
