
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_15__ {void* translated_command; } ;
struct TYPE_16__ {void* state; int type; TYPE_2__ command_specific_data; TYPE_1__* device; } ;
struct TYPE_14__ {int capabilities; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 void* ATA_FLUSH_CACHE ;
 void* ATA_IDLE ;
 void* ATA_IDLE_IMMED ;
 void* ATA_MEDIA_EJECT ;
 void* ATA_READ_VERIFY_SECTORS ;
 void* ATA_STANDBY ;
 void* ATA_STANDBY_IMMED ;
 int SATI_DEVICE_CAP_REMOVABLE_MEDIA ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_START_STOP_UNIT ;
 void* SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SATI_START_STOP_UNIT_IMMED_BIT (int *) ;
 int SATI_START_STOP_UNIT_LOEJ_BIT (int *) ;
 int SATI_START_STOP_UNIT_NO_FLUSH_BIT (int *) ;
 int SATI_START_STOP_UNIT_POWER_CONDITION (int *) ;
 int SATI_START_STOP_UNIT_POWER_CONDITION_MODIFIER (int *) ;
 int SATI_START_STOP_UNIT_START_BIT (int *) ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;






 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_ata_flush_cache_construct (void*,TYPE_3__*) ;
 int sati_ata_idle_construct (void*,TYPE_3__*) ;
 int sati_ata_idle_immediate_construct (void*,TYPE_3__*) ;
 int sati_ata_idle_immediate_unload_construct (void*,TYPE_3__*) ;
 int sati_ata_media_eject_construct (void*,TYPE_3__*) ;
 int sati_ata_read_verify_sectors_construct (void*,TYPE_3__*) ;
 int sati_ata_standby_construct (void*,TYPE_3__*,int ) ;
 int sati_ata_standby_immediate_construct (void*,TYPE_3__*) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_scsi_sense_data_construct (TYPE_3__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_start_stop_unit_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);

   switch ( SATI_START_STOP_UNIT_POWER_CONDITION(cdb) )
   {
      case 128:
         if ( SATI_START_STOP_UNIT_START_BIT(cdb) == 0
             && SATI_START_STOP_UNIT_LOEJ_BIT(cdb) == 0 )
         {
            if ( SATI_START_STOP_UNIT_NO_FLUSH_BIT(cdb) == 1 )
            {

               sati_ata_standby_immediate_construct(ata_io, sequence);
               sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;
            }
            else
            {
               if ( sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
               {

                  sati_ata_flush_cache_construct(ata_io, sequence);
                  sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;


                  sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
               }
               else
               {


                  sati_ata_standby_immediate_construct(ata_io, sequence);
                  sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;

               }
            }
         }
         else if ( SATI_START_STOP_UNIT_START_BIT(cdb) == 0
                  && SATI_START_STOP_UNIT_LOEJ_BIT(cdb) == 1 )
         {

            if (sequence->device->capabilities & SATI_DEVICE_CAP_REMOVABLE_MEDIA)
            {

               sati_ata_media_eject_construct(ata_io, sequence);
               sequence->command_specific_data.translated_command = ATA_MEDIA_EJECT;
            }
            else
            {
               sati_scsi_sense_data_construct(
                  sequence,
                  scsi_io,
                  SCSI_STATUS_CHECK_CONDITION,
                  SCSI_SENSE_ILLEGAL_REQUEST,
                  SCSI_ASC_INVALID_FIELD_IN_CDB,
                  SCSI_ASCQ_INVALID_FIELD_IN_CDB
               );
               return SATI_FAILURE_CHECK_RESPONSE_DATA;
            }
         }
         else if ( SATI_START_STOP_UNIT_START_BIT(cdb) == 1
                  && SATI_START_STOP_UNIT_LOEJ_BIT(cdb) == 0 )
         {

            sati_ata_read_verify_sectors_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_READ_VERIFY_SECTORS;
         }
         else if ( SATI_START_STOP_UNIT_START_BIT(cdb) == 1
                  && SATI_START_STOP_UNIT_LOEJ_BIT(cdb) == 1 )
         {
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );
            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         }

         break;

      case 133:

         if( sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            sati_ata_idle_construct(ata_io, sequence);
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
            sequence->command_specific_data.translated_command = ATA_IDLE;
         }
         else
         {
            sati_ata_read_verify_sectors_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_READ_VERIFY_SECTORS;
         }
         break;


      case 131:

         if( SATI_START_STOP_UNIT_NO_FLUSH_BIT(cdb) == 0 &&
             sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            sati_ata_flush_cache_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            if( SATI_START_STOP_UNIT_POWER_CONDITION_MODIFIER(cdb) == 0 )
            {
               sati_ata_idle_immediate_construct(ata_io, sequence);
            }
            else
            {
               sati_ata_idle_immediate_unload_construct(ata_io, sequence);
            }
            sequence->command_specific_data.translated_command = ATA_IDLE_IMMED;
         }
         break;


      case 129:
         if( SATI_START_STOP_UNIT_NO_FLUSH_BIT(cdb) == 0 &&
            sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            sati_ata_flush_cache_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            sati_ata_standby_immediate_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;
         }
         break;


      case 132:

         if( SATI_START_STOP_UNIT_NO_FLUSH_BIT(cdb) == 0 &&
            sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            sati_ata_flush_cache_construct(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            sati_ata_standby_construct(ata_io, sequence, 0);
            sequence->command_specific_data.translated_command = ATA_STANDBY;
         }
         break;

      case 130:
      default:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
         break;
   }

   if ( SATI_START_STOP_UNIT_IMMED_BIT(cdb) == 1 )
   {

      ;
   }
   sequence->type = SATI_SEQUENCE_START_STOP_UNIT;
   return SATI_SUCCESS;
}
