
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;



 int* sati_cb_get_cdb_address (void*) ;
 int sati_cb_get_data_byte (void*,int,int*) ;

U32 sati_atapi_translate_number_of_bytes_transferred(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * atapi_io
)
{
   U8* cdb = sati_cb_get_cdb_address(scsi_io);
   U8 response_data;
   U32 data_length = 0;

   switch(cdb[0])
   {
      case 128:
         sati_cb_get_data_byte(scsi_io, 1, &response_data);
         data_length = response_data+2;
         break;

      case 0x51:
         sati_cb_get_data_byte(scsi_io, 1, &response_data);
         data_length = response_data+2;
         break;

      default:
         break;
   }

   return data_length;
}
