
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U8 ;
typedef int U32 ;
typedef size_t U16 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 scalar_t__ SCSI_MODE_SENSE_PC_CHANGEABLE ;
 int * sat_changeable_mode_pages ;
 int * sat_default_mode_pages ;
 int * sat_mode_page_sizes ;
 int sati_copy_data (int *,void*,int ,int ,int ) ;
 size_t sati_mode_page_get_page_index (scalar_t__) ;

U32 sati_mode_sense_copy_initial_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U32 page_start,
   U8 page_control,
   U8 page_code
)
{
   U16 page_index = sati_mode_page_get_page_index(page_code);
   U32 page_length = sat_mode_page_sizes[page_index];



   if (page_control == SCSI_MODE_SENSE_PC_CHANGEABLE)
   {

      sati_copy_data(
         sequence,
         scsi_io,
         page_start,
         sat_changeable_mode_pages[page_index],
         page_length
      );
   }
   else
   {

      sati_copy_data(
         sequence,
         scsi_io,
         page_start,
         sat_default_mode_pages[page_index],
         page_length
      );
   }

   return page_length;
}
