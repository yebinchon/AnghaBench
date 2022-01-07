
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {unsigned int length; scalar_t__ signature; } ;
typedef TYPE_1__ boot_header_t ;
typedef int adapter_t ;


 int BOOT_FLASH_BOOT_ADDR ;
 unsigned int BOOT_MAX_SIZE ;
 unsigned int BOOT_MIN_SIZE ;
 scalar_t__ BOOT_SIGNATURE ;
 unsigned int BOOT_SIZE_INC ;
 int CH_ERR (int *,char*,...) ;
 int EFBIG ;
 int EINVAL ;
 scalar_t__ le16_to_cpu (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int t3_flash_erase_sectors (int *,unsigned int,unsigned int) ;
 int t3_write_flash (int *,unsigned int,unsigned int,int *,int ) ;

int t3_load_boot(adapter_t *adapter, u8 *boot_data, unsigned int size)
{
 boot_header_t *header = (boot_header_t *)boot_data;
 int ret;
 unsigned int addr;
 unsigned int boot_sector = BOOT_FLASH_BOOT_ADDR >> 16;
 unsigned int boot_end = (BOOT_FLASH_BOOT_ADDR + size - 1) >> 16;






 if (size < BOOT_MIN_SIZE || size > BOOT_MAX_SIZE) {
  CH_ERR(adapter, "boot image too small/large\n");
  return -EFBIG;
 }
 if (le16_to_cpu(*(u16*)header->signature) != BOOT_SIGNATURE) {
  CH_ERR(adapter, "boot image missing signature\n");
  return -EINVAL;
 }
 if (header->length * BOOT_SIZE_INC != size) {
  CH_ERR(adapter, "boot image header length != image length\n");
  return -EINVAL;
 }

 ret = t3_flash_erase_sectors(adapter, boot_sector, boot_end);
 if (ret)
  goto out;

 for (addr = BOOT_FLASH_BOOT_ADDR; size; ) {
  unsigned int chunk_size = min(size, 256U);

  ret = t3_write_flash(adapter, addr, chunk_size, boot_data, 0);
  if (ret)
   goto out;

  addr += chunk_size;
  boot_data += chunk_size;
  size -= chunk_size;
 }

out:
 if (ret)
  CH_ERR(adapter, "boot image download failed, error %d\n", ret);
 return ret;
}
