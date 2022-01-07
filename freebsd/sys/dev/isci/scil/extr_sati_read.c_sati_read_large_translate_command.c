
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_4__ {int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_DATA_DIRECTION_IN ;
 int sati_move_large_translate_command (TYPE_1__*,void*,void*,int ,int *) ;

__attribute__((used)) static
SATI_STATUS sati_read_large_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U32 sector_count,
   U8 * device_head
)
{
   sequence->data_direction = SATI_DATA_DIRECTION_IN;

   return sati_move_large_translate_command(
             sequence,
             scsi_io,
             ata_io,
             sector_count,
             device_head
          );
}
