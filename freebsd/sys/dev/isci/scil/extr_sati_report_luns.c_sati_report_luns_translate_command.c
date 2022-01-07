
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {int allocation_length; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_set_data_byte (TYPE_1__*,void*,int,int) ;

SATI_STATUS sati_report_luns_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);


   sequence->allocation_length = (sati_get_cdb_byte(cdb, 6) << 24) |
                                 (sati_get_cdb_byte(cdb, 7) << 16) |
                                 (sati_get_cdb_byte(cdb, 8) << 8) |
                                 (sati_get_cdb_byte(cdb, 9));





   sati_set_data_byte(sequence, scsi_io, 0, 0);
   sati_set_data_byte(sequence, scsi_io, 1, 0);
   sati_set_data_byte(sequence, scsi_io, 2, 0);
   sati_set_data_byte(sequence, scsi_io, 3, 8);


   sati_set_data_byte(sequence, scsi_io, 4, 0);
   sati_set_data_byte(sequence, scsi_io, 5, 0);
   sati_set_data_byte(sequence, scsi_io, 6, 0);
   sati_set_data_byte(sequence, scsi_io, 7, 0);


   sati_set_data_byte(sequence, scsi_io, 8, 0);
   sati_set_data_byte(sequence, scsi_io, 9, 0);
   sati_set_data_byte(sequence, scsi_io, 10, 0);
   sati_set_data_byte(sequence, scsi_io, 11, 0);
   sati_set_data_byte(sequence, scsi_io, 12, 0);
   sati_set_data_byte(sequence, scsi_io, 13, 0);
   sati_set_data_byte(sequence, scsi_io, 14, 0);
   sati_set_data_byte(sequence, scsi_io, 15, 0);

   return SATI_COMPLETE;
}
