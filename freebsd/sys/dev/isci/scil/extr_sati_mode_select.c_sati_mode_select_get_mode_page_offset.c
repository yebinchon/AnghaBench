
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_6_T ;
typedef int SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_10_T ;



__attribute__((used)) static
U32 sati_mode_select_get_mode_page_offset(
    U32 block_descriptor_length,
    U32 cdb_size
    )
{
   U32 mode_page_offset;

   if(cdb_size == 6)
   {
      mode_page_offset = sizeof(SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_6_T) + block_descriptor_length;
   }
   else if(cdb_size == 10)
   {
      mode_page_offset = sizeof(SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_10_T) + block_descriptor_length;
   }
   else
   {
      mode_page_offset = 0;
   }

   return mode_page_offset;
}
