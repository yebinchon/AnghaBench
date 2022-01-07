
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int SCSI_MODE_PAGE_01_LENGTH ;
 int SCSI_MODE_PAGE_02_LENGTH ;
 int SCSI_MODE_PAGE_08_LENGTH ;
 int SCSI_MODE_PAGE_0A_LENGTH ;
 int SCSI_MODE_PAGE_1A_LENGTH ;
 int SCSI_MODE_PAGE_1C_LENGTH ;







__attribute__((used)) static
U32 sati_mode_select_get_mode_page_size(
   U8 page_code
)
{
   U32 page_size=0;

   switch (page_code)
   {
   case 128:
      page_size=SCSI_MODE_PAGE_01_LENGTH;
      break;

   case 131:
      page_size=SCSI_MODE_PAGE_02_LENGTH;
      break;

   case 133:
      page_size=SCSI_MODE_PAGE_08_LENGTH;
      break;

   case 132:
      page_size=SCSI_MODE_PAGE_0A_LENGTH;
      break;

   case 130:
      page_size=SCSI_MODE_PAGE_1C_LENGTH;
      break;

   case 129:
      page_size=SCSI_MODE_PAGE_1A_LENGTH;
      break;
   default:
      page_size=0;
      break;
   }

   return page_size;
}
