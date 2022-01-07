
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {TYPE_1__* device; int data_direction; int protocol; int type; } ;
struct TYPE_4__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_FLUSH_CACHE ;
 int ATA_FLUSH_CACHE_EXT ;
 int SATI_DATA_DIRECTION_NONE ;
 int SATI_DEVICE_CAP_48BIT_ENABLE ;
 int SATI_SEQUENCE_SYNCHRONIZE_CACHE ;
 int SATI_SUCCESS ;
 int SAT_PROTOCOL_NON_DATA ;
 int SCSI_SYNCHRONIZE_CACHE_IMMED_ENABLED ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_set_ata_command (int *,int ) ;

SATI_STATUS sati_synchronize_cache_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sequence->type = SATI_SEQUENCE_SYNCHRONIZE_CACHE;
   sequence->protocol = SAT_PROTOCOL_NON_DATA;
   sequence->data_direction = SATI_DATA_DIRECTION_NONE;

   if (sati_get_cdb_byte(cdb, 1) & SCSI_SYNCHRONIZE_CACHE_IMMED_ENABLED)
   {

      ;
   }


   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      sati_set_ata_command(register_fis, ATA_FLUSH_CACHE_EXT);
   else
      sati_set_ata_command(register_fis, ATA_FLUSH_CACHE);

   return SATI_SUCCESS;
}
