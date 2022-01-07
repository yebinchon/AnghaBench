
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ allocation_length; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_cb_get_data_byte (void*,scalar_t__,int *) ;

void sati_get_data_byte(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U32 byte_offset,
   U8 * value
)
{
   if (byte_offset < sequence->allocation_length)
      sati_cb_get_data_byte(scsi_io, byte_offset, value);
}
