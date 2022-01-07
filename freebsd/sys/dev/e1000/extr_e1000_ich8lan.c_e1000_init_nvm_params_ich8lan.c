
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_8__ {int write; int validate; int valid_led_default; int update; int read; int release; int acquire; } ;
struct e1000_nvm_info {int flash_base_addr; int flash_bank_size; size_t word_size; TYPE_4__ ops; int type; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct e1000_dev_spec_ich8lan {TYPE_2__* shadow_ram; } ;
struct TYPE_5__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_3__ mac; scalar_t__ flash_address; scalar_t__ hw_addr; TYPE_1__ dev_spec; struct e1000_nvm_info nvm; } ;
typedef int s32 ;
struct TYPE_6__ {int value; int modified; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_CONFIG ;
 scalar_t__ E1000_FLASH_BASE_ADDR ;
 int E1000_READ_FLASH_REG (struct e1000_hw*,int ) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 size_t E1000_SHADOW_RAM_WORDS ;
 int E1000_STRAP ;
 int E1000_SUCCESS ;
 int FALSE ;
 int FLASH_GFPREG_BASE_MASK ;
 int FLASH_SECTOR_ADDR_SHIFT ;
 int ICH_FLASH_GFPREG ;
 int NVM_SIZE_MULTIPLIER ;
 int e1000_acquire_nvm_ich8lan ;
 int e1000_nvm_flash_sw ;
 scalar_t__ e1000_pch_spt ;
 int e1000_read_nvm_ich8lan ;
 int e1000_read_nvm_spt ;
 int e1000_release_nvm_ich8lan ;
 int e1000_update_nvm_checksum_ich8lan ;
 int e1000_update_nvm_checksum_spt ;
 int e1000_valid_led_default_ich8lan ;
 int e1000_validate_nvm_checksum_ich8lan ;
 int e1000_write_nvm_ich8lan ;

__attribute__((used)) static s32 e1000_init_nvm_params_ich8lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 gfpreg, sector_base_addr, sector_end_addr;
 u16 i;
 u32 nvm_size;

 DEBUGFUNC("e1000_init_nvm_params_ich8lan");

 nvm->type = e1000_nvm_flash_sw;

 if (hw->mac.type >= e1000_pch_spt) {






  nvm->flash_base_addr = 0;
  nvm_size =
      (((E1000_READ_REG(hw, E1000_STRAP) >> 1) & 0x1F) + 1)
      * NVM_SIZE_MULTIPLIER;
  nvm->flash_bank_size = nvm_size / 2;

  nvm->flash_bank_size /= sizeof(u16);

  hw->flash_address = hw->hw_addr + E1000_FLASH_BASE_ADDR;
 } else {

  if (!hw->flash_address) {
   DEBUGOUT("ERROR: Flash registers not mapped\n");
   return -E1000_ERR_CONFIG;
  }

  gfpreg = E1000_READ_FLASH_REG(hw, ICH_FLASH_GFPREG);





  sector_base_addr = gfpreg & FLASH_GFPREG_BASE_MASK;
  sector_end_addr = ((gfpreg >> 16) & FLASH_GFPREG_BASE_MASK) + 1;


  nvm->flash_base_addr = sector_base_addr
           << FLASH_SECTOR_ADDR_SHIFT;




  nvm->flash_bank_size = ((sector_end_addr - sector_base_addr)
     << FLASH_SECTOR_ADDR_SHIFT);
  nvm->flash_bank_size /= 2;

  nvm->flash_bank_size /= sizeof(u16);
 }

 nvm->word_size = E1000_SHADOW_RAM_WORDS;


 for (i = 0; i < nvm->word_size; i++) {
  dev_spec->shadow_ram[i].modified = FALSE;
  dev_spec->shadow_ram[i].value = 0xFFFF;
 }


 nvm->ops.acquire = e1000_acquire_nvm_ich8lan;
 nvm->ops.release = e1000_release_nvm_ich8lan;
 if (hw->mac.type >= e1000_pch_spt) {
  nvm->ops.read = e1000_read_nvm_spt;
  nvm->ops.update = e1000_update_nvm_checksum_spt;
 } else {
  nvm->ops.read = e1000_read_nvm_ich8lan;
  nvm->ops.update = e1000_update_nvm_checksum_ich8lan;
 }
 nvm->ops.valid_led_default = e1000_valid_led_default_ich8lan;
 nvm->ops.validate = e1000_validate_nvm_checksum_ich8lan;
 nvm->ops.write = e1000_write_nvm_ich8lan;

 return E1000_SUCCESS;
}
