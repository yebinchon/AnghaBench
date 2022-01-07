
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;


 int SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT ;
 int SATI_DEVICE_CAP_SMART_SUPPORT ;
 int SCSI_LOG_PAGE_INFORMATION_EXCEPTION ;
 int SCSI_LOG_PAGE_SELF_TEST ;
 int sati_set_data_byte (TYPE_2__*,void*,int,int) ;

__attribute__((used)) static
void sati_supported_log_page_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io
)
{
   U32 next_byte;

   sati_set_data_byte(sequence, scsi_io, 0, 0x00);


   sati_set_data_byte(sequence, scsi_io, 1, 0x00);


   sati_set_data_byte(sequence, scsi_io, 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, 3, 0x02);


   next_byte = 4;

   if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_SUPPORT)
   {
      sati_set_data_byte(
         sequence,
         scsi_io,
         next_byte,
         SCSI_LOG_PAGE_INFORMATION_EXCEPTION
      );
      next_byte = 5;
   }

   if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT)
   {
      sati_set_data_byte(
         sequence,
         scsi_io,
         next_byte,
         SCSI_LOG_PAGE_SELF_TEST
      );
   }
}
