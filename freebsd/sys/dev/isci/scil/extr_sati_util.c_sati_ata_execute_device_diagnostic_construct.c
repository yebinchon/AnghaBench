
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {int ata_transfer_length; int protocol; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_EXECUTE_DEVICE_DIAG ;
 int SATI_DATA_DIRECTION_IN ;
 int SAT_PROTOCOL_DEVICE_DIAGNOSTIC ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;

void sati_ata_execute_device_diagnostic_construct(
   void * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_command(register_fis, ATA_EXECUTE_DEVICE_DIAG);

   sequence->data_direction = SATI_DATA_DIRECTION_IN;
   sequence->protocol = SAT_PROTOCOL_DEVICE_DIAGNOSTIC;
   sequence->ata_transfer_length = 16;
}
