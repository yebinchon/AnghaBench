
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ata_transfer_length; int protocol; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int SATI_DATA_DIRECTION_NONE ;
 int SAT_PROTOCOL_NON_DATA ;

void sati_ata_non_data_command(
   void * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   sequence->data_direction = SATI_DATA_DIRECTION_NONE;
   sequence->protocol = SAT_PROTOCOL_NON_DATA;
   sequence->ata_transfer_length = 0;
}
