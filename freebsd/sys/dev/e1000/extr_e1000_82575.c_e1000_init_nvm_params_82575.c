
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int update; int validate; int valid_led_default; int write; int read; int release; int acquire; } ;
struct e1000_nvm_info {int word_size; int opcode_bits; int delay_usec; int override; int page_size; int address_bits; TYPE_2__ ops; int type; } ;
struct TYPE_3__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_ADDR_BITS ;
 int E1000_EECD_SIZE_EX_MASK ;
 int E1000_EECD_SIZE_EX_SHIFT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 scalar_t__ NVM_WORD_SIZE_BASE_SHIFT ;

 int e1000_acquire_nvm_82575 ;
 int e1000_i210 ;


 int e1000_nvm_eeprom_spi ;
 int e1000_nvm_flash_hw ;


 int e1000_read_nvm_eerd ;
 int e1000_read_nvm_spi ;
 int e1000_release_nvm_82575 ;
 int e1000_update_nvm_checksum_82580 ;
 int e1000_update_nvm_checksum_generic ;
 int e1000_update_nvm_checksum_i350 ;
 int e1000_valid_led_default_82575 ;
 int e1000_validate_nvm_checksum_82580 ;
 int e1000_validate_nvm_checksum_generic ;
 int e1000_validate_nvm_checksum_i350 ;
 int e1000_write_nvm_spi ;

s32 e1000_init_nvm_params_82575(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);
 u16 size;

 DEBUGFUNC("e1000_init_nvm_params_82575");

 size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
       E1000_EECD_SIZE_EX_SHIFT);




 size += NVM_WORD_SIZE_BASE_SHIFT;




 if (size > 15)
  size = 15;

 nvm->word_size = 1 << size;
 if (hw->mac.type < e1000_i210) {
  nvm->opcode_bits = 8;
  nvm->delay_usec = 1;

  switch (nvm->override) {
  case 129:
   nvm->page_size = 32;
   nvm->address_bits = 16;
   break;
  case 128:
   nvm->page_size = 8;
   nvm->address_bits = 8;
   break;
  default:
   nvm->page_size = eecd & E1000_EECD_ADDR_BITS ? 32 : 8;
   nvm->address_bits = eecd & E1000_EECD_ADDR_BITS ?
         16 : 8;
   break;
  }
  if (nvm->word_size == (1 << 15))
   nvm->page_size = 128;

  nvm->type = e1000_nvm_eeprom_spi;
 } else {
  nvm->type = e1000_nvm_flash_hw;
 }


 nvm->ops.acquire = e1000_acquire_nvm_82575;
 nvm->ops.release = e1000_release_nvm_82575;
 if (nvm->word_size < (1 << 15))
  nvm->ops.read = e1000_read_nvm_eerd;
 else
  nvm->ops.read = e1000_read_nvm_spi;

 nvm->ops.write = e1000_write_nvm_spi;
 nvm->ops.validate = e1000_validate_nvm_checksum_generic;
 nvm->ops.update = e1000_update_nvm_checksum_generic;
 nvm->ops.valid_led_default = e1000_valid_led_default_82575;


 switch (hw->mac.type) {
 case 132:
  nvm->ops.validate = e1000_validate_nvm_checksum_82580;
  nvm->ops.update = e1000_update_nvm_checksum_82580;
  break;
 case 131:
 case 130:
  nvm->ops.validate = e1000_validate_nvm_checksum_i350;
  nvm->ops.update = e1000_update_nvm_checksum_i350;
  break;
 default:
  break;
 }

 return E1000_SUCCESS;
}
