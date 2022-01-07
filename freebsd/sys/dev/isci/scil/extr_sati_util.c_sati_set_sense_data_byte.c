
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef size_t U32 ;



void sati_set_sense_data_byte(
   U8 * sense_data,
   U32 max_sense_data_len,
   U32 byte_offset,
   U8 value
)
{


   if (byte_offset < max_sense_data_len)
      sense_data[byte_offset] = value;
}
