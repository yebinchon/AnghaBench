
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef scalar_t__ U16 ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {scalar_t__ ata_standby_timer; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_STANDBY ;
 int sati_ata_non_data_command (void*,TYPE_2__*) ;
 scalar_t__* sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (scalar_t__*,int ) ;
 int sati_set_ata_sector_count (scalar_t__*,scalar_t__) ;

void sati_ata_standby_construct(
   void * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U16 count
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_command(register_fis, ATA_STANDBY);
   sati_set_ata_sector_count(register_fis, count);

   sequence->device->ata_standby_timer = (U8) count;

   sati_ata_non_data_command(ata_io, sequence);
}
