
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* descriptor_entrys; } ;
struct TYPE_4__ {int status_byte; int time_stamp_high; int time_stamp_low; int failing_lba_low_ext; int failing_lba_high; int failing_lba_mid; int failing_lba_low; } ;
struct TYPE_5__ {TYPE_1__ SMART_DESCRIPTOR_ENTRY; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_3__ ATA_SMART_SELF_TEST_LOG_T ;


 int sati_self_test_log_header_construct (int *,void*) ;
 int sati_set_data_byte (int *,void*,int,int) ;
 int sati_translate_sense_values (int *,void*,int) ;

__attribute__((used)) static
void sati_self_test_log_page_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_data
)
{
   ATA_SMART_SELF_TEST_LOG_T * ata_log =
                        (ATA_SMART_SELF_TEST_LOG_T*) ata_data;

   sati_self_test_log_header_construct(sequence, scsi_io);


   sati_set_data_byte(
      sequence,
      scsi_io,
      8,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.status_byte
   );


   sati_set_data_byte(sequence, scsi_io, 9, 0x00);

   sati_set_data_byte(
      sequence,
      scsi_io,
      10,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.time_stamp_high
   );

   sati_set_data_byte(
      sequence,
      scsi_io,
      11,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.time_stamp_low
   );


   sati_set_data_byte(sequence, scsi_io, 12, 0x00);
   sati_set_data_byte(sequence, scsi_io, 13, 0x00);
   sati_set_data_byte(sequence, scsi_io, 14, 0x00);
   sati_set_data_byte(sequence, scsi_io, 15, 0x00);

   sati_set_data_byte(
      sequence,
      scsi_io,
      16,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.failing_lba_low_ext
   );

   sati_set_data_byte(
      sequence,
      scsi_io,
      17,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.failing_lba_high
   );

   sati_set_data_byte(
      sequence,
      scsi_io,
      18,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.failing_lba_mid
   );

   sati_set_data_byte(
      sequence,
      scsi_io,
      19,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.failing_lba_low
   );

   sati_translate_sense_values(
      sequence,
      scsi_io,
      ata_log->descriptor_entrys[0].SMART_DESCRIPTOR_ENTRY.status_byte
   );
}
