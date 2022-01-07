
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef scalar_t__ U32 ;
struct TYPE_9__ {int command_set_enabled0; } ;
struct TYPE_8__ {int number_data_bytes_set; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_2__ ATA_IDENTIFY_DEVICE_DATA_T ;


 int ATA_IDENTIFY_DEVICE_RA_ENABLE ;
 int ATA_IDENTIFY_DEVICE_WCE_ENABLE ;
 scalar_t__ SCSI_MODE_PAGE_CACHE_PAGE_DRA_BIT ;
 scalar_t__ SCSI_MODE_PAGE_CACHE_PAGE_WCE_BIT ;
 int SCSI_MODE_PAGE_CACHING ;
 scalar_t__ SCSI_MODE_SENSE_PC_CURRENT ;
 scalar_t__ SCSI_MODE_SENSE_PC_SHIFT ;
 scalar_t__* sati_cb_get_cdb_address (void*) ;
 scalar_t__ sati_get_cdb_byte (scalar_t__*,int) ;
 int sati_get_data_byte (TYPE_1__*,void*,scalar_t__,scalar_t__*) ;
 scalar_t__ sati_mode_sense_copy_initial_data (TYPE_1__*,void*,scalar_t__,scalar_t__,int ) ;
 int sati_set_data_byte (TYPE_1__*,void*,scalar_t__,scalar_t__) ;

U32 sati_mode_sense_caching_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 offset
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 page_control = sati_get_cdb_byte(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT;
   U32 page_length;

   page_length = sati_mode_sense_copy_initial_data(
                    sequence,
                    scsi_io,
                    offset,
                    page_control,
                    SCSI_MODE_PAGE_CACHING
                 );



   if (page_control == SCSI_MODE_SENSE_PC_CURRENT)
   {
      U8 value;



      if ((identify->command_set_enabled0 & ATA_IDENTIFY_DEVICE_WCE_ENABLE) != 0)
      {
         sati_get_data_byte(sequence, scsi_io, offset+2, &value);
         value |= SCSI_MODE_PAGE_CACHE_PAGE_WCE_BIT;
         sati_set_data_byte(sequence, scsi_io, offset+2, value);

         sequence->number_data_bytes_set--;
      }



      if ((identify->command_set_enabled0 & ATA_IDENTIFY_DEVICE_RA_ENABLE) == 0)
      {



         sati_get_data_byte(sequence, scsi_io, offset+12, &value);
         value |= SCSI_MODE_PAGE_CACHE_PAGE_DRA_BIT;
         sati_set_data_byte(sequence, scsi_io, offset+12, value);




         sequence->number_data_bytes_set--;
      }
   }

   return page_length;
}
