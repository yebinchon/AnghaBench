
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {int allocation_length; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_mode_sense_translate_command (TYPE_1__*,void*,void*,int) ;

SATI_STATUS sati_mode_sense_6_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);


   sequence->allocation_length = sati_get_cdb_byte(cdb, 4);

   return sati_mode_sense_translate_command(sequence, scsi_io, ata_io, 6);
}
