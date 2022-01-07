
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int const u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;
struct TYPE_5__ {scalar_t__ device_id; scalar_t__ vendor_id; scalar_t__ signature; } ;
typedef TYPE_2__ pcir_data_t ;
struct TYPE_6__ {scalar_t__ signature; scalar_t__ pcir_offset; } ;
typedef TYPE_3__ pci_exp_rom_header_t ;


 unsigned int BOOT_MAX_SIZE ;
 unsigned int BOOT_MIN_SIZE ;
 int BOOT_SIGNATURE ;
 int CH_ERR (struct adapter*,char*,...) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EFBIG ;
 int EINVAL ;
 unsigned int FLASH_FW_START ;
 int FLASH_FW_START_SEC ;
 scalar_t__ PCIR_SIGNATURE ;
 int PCI_DEVICE_ID ;
 scalar_t__ SF_PAGE_SIZE ;
 int VENDOR_ID ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int modify_device_id (int,int const*) ;
 int t4_flash_erase_sectors (struct adapter*,unsigned int,unsigned int) ;
 int t4_os_pci_read_cfg2 (struct adapter*,int ,int*) ;
 int t4_write_flash (struct adapter*,unsigned int,scalar_t__,int const*,int ) ;

int t4_load_boot(struct adapter *adap, u8 *boot_data,
   unsigned int boot_addr, unsigned int size)
{
 pci_exp_rom_header_t *header;
 int pcir_offset ;
 pcir_data_t *pcir_header;
 int ret, addr;
 uint16_t device_id;
 unsigned int i;
 unsigned int boot_sector = (boot_addr * 1024 );
 unsigned int sf_sec_size = adap->params.sf_size / adap->params.sf_nsec;




 if ((boot_sector + size) >> 16 > FLASH_FW_START_SEC) {
  CH_ERR(adap, "boot image encroaching on firmware region\n");
  return -EFBIG;
 }






 i = DIV_ROUND_UP(size ? size : FLASH_FW_START,
   sf_sec_size);
 ret = t4_flash_erase_sectors(adap, boot_sector >> 16,
         (boot_sector >> 16) + i - 1);





 if (ret || (size == 0))
  goto out;


 header = (pci_exp_rom_header_t *)boot_data;
 pcir_offset = le16_to_cpu(*(u16 *)header->pcir_offset);

 pcir_header = (pcir_data_t *) &boot_data[pcir_offset];






 if (size < BOOT_MIN_SIZE || size > BOOT_MAX_SIZE) {
  CH_ERR(adap, "boot image too small/large\n");
  return -EFBIG;
 }





 if (le16_to_cpu(*(u16*)header->signature) != BOOT_SIGNATURE ) {
  CH_ERR(adap, "Boot image missing signature\n");
  return -EINVAL;
 }




 if (le32_to_cpu(*(u32*)pcir_header->signature) != PCIR_SIGNATURE) {
  CH_ERR(adap, "PCI header missing signature\n");
  return -EINVAL;
 }




 if (le16_to_cpu(*(u16*)pcir_header->vendor_id) != VENDOR_ID) {
  CH_ERR(adap, "Vendor ID missing signature\n");
  return -EINVAL;
 }





 t4_os_pci_read_cfg2(adap, PCI_DEVICE_ID, &device_id);

 device_id = device_id & 0xf0ff;




 if (le16_to_cpu(*(u16*)pcir_header->device_id) != device_id) {




  modify_device_id(device_id, boot_data);
 }







 addr = boot_sector;
 for (size -= SF_PAGE_SIZE; size; size -= SF_PAGE_SIZE) {
  addr += SF_PAGE_SIZE;
  boot_data += SF_PAGE_SIZE;
  ret = t4_write_flash(adap, addr, SF_PAGE_SIZE, boot_data, 0);
  if (ret)
   goto out;
 }

 ret = t4_write_flash(adap, boot_sector, SF_PAGE_SIZE,
        (const u8 *)header, 0);

out:
 if (ret)
  CH_ERR(adap, "boot image download failed, error %d\n", ret);
 return ret;
}
