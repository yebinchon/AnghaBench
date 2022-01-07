
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {TYPE_1__* device; int data_direction; int protocol; } ;
struct TYPE_5__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ;
 int ATA_READ_VERIFY_SECTORS ;
 int ATA_READ_VERIFY_SECTORS_EXT ;
 int SATI_DATA_DIRECTION_NONE ;
 int SATI_DEVICE_CAP_48BIT_ENABLE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SUCCESS ;
 int SAT_PROTOCOL_NON_DATA ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int SCSI_VERIFY_BYTCHK_ENABLED ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_device_head (int *,int ) ;

__attribute__((used)) static
SATI_STATUS sati_verify_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);





   if ((sati_get_cdb_byte(cdb, 1) & SCSI_VERIFY_BYTCHK_ENABLED))
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

   sequence->protocol = SAT_PROTOCOL_NON_DATA;
   sequence->data_direction = SATI_DATA_DIRECTION_NONE;

   sati_set_ata_device_head(register_fis, ATA_DEV_HEAD_REG_LBA_MODE_ENABLE);


   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      sati_set_ata_command(register_fis, ATA_READ_VERIFY_SECTORS_EXT);
   else
      sati_set_ata_command(register_fis, ATA_READ_VERIFY_SECTORS);

   return SATI_SUCCESS;
}
