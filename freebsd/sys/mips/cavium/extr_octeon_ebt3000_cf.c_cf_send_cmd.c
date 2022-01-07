
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;





 int DELAY (int ) ;
 int STATUS_BSY ;
 int TF_COMMAND ;
 int TF_CYL_LSB ;
 int TF_CYL_MSB ;
 int TF_DRV_HEAD ;
 int TF_SECTOR_COUNT ;
 int TF_SECTOR_NUMBER ;
 int TF_STATUS ;
 int WAIT_DELAY ;
 int bus_type ;
 int cf_inb_16 (int ) ;
 int cf_inb_8 (int ) ;
 int cf_outb_8 (int ,int) ;
 int cf_outw_16 (int ,int) ;
 int cf_wait_busy () ;

__attribute__((used)) static int cf_send_cmd (uint32_t lba, uint8_t cmd)
{
 switch (bus_type)
 {
 case 129:
 case 128:
  while (cf_inb_8(TF_STATUS) & STATUS_BSY)
   DELAY(WAIT_DELAY);
  cf_outb_8(TF_SECTOR_COUNT, 1);
  cf_outb_8(TF_SECTOR_NUMBER, lba & 0xff);
  cf_outb_8(TF_CYL_LSB, (lba >> 8) & 0xff);
  cf_outb_8(TF_CYL_MSB, (lba >> 16) & 0xff);
  cf_outb_8(TF_DRV_HEAD, ((lba >> 24) & 0xff) | 0xe0);
  cf_outb_8(TF_COMMAND, cmd);
  break;
 case 130:
 default:
  while (cf_inb_16(TF_STATUS) & STATUS_BSY)
   DELAY(WAIT_DELAY);
  cf_outw_16(TF_SECTOR_COUNT, 1 | ((lba & 0xff) << 8));
  cf_outw_16(TF_CYL_LSB, ((lba >> 8) & 0xff) | (((lba >> 16) & 0xff) << 8));
  cf_outw_16(TF_DRV_HEAD, (((lba >> 24) & 0xff) | 0xe0) | (cmd << 8));
  break;
 }

 return (cf_wait_busy());
}
