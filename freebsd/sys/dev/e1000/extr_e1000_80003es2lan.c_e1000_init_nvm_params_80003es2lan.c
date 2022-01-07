
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int write; int validate; int valid_led_default; int update; int release; int read; int acquire; } ;
struct e1000_nvm_info {int opcode_bits; int delay_usec; int override; int page_size; int address_bits; int word_size; TYPE_1__ ops; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_ADDR_BITS ;
 int E1000_EECD_SIZE_EX_MASK ;
 int E1000_EECD_SIZE_EX_SHIFT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 scalar_t__ NVM_WORD_SIZE_BASE_SHIFT ;
 int e1000_acquire_nvm_80003es2lan ;
 int e1000_nvm_eeprom_spi ;


 int e1000_read_nvm_eerd ;
 int e1000_release_nvm_80003es2lan ;
 int e1000_update_nvm_checksum_generic ;
 int e1000_valid_led_default_generic ;
 int e1000_validate_nvm_checksum_generic ;
 int e1000_write_nvm_80003es2lan ;

__attribute__((used)) static s32 e1000_init_nvm_params_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);
 u16 size;

 DEBUGFUNC("e1000_init_nvm_params_80003es2lan");

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
  nvm->address_bits = eecd & E1000_EECD_ADDR_BITS ? 16 : 8;
  break;
 }

 nvm->type = e1000_nvm_eeprom_spi;

 size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
       E1000_EECD_SIZE_EX_SHIFT);




 size += NVM_WORD_SIZE_BASE_SHIFT;


 if (size > 14)
  size = 14;
 nvm->word_size = 1 << size;


 nvm->ops.acquire = e1000_acquire_nvm_80003es2lan;
 nvm->ops.read = e1000_read_nvm_eerd;
 nvm->ops.release = e1000_release_nvm_80003es2lan;
 nvm->ops.update = e1000_update_nvm_checksum_generic;
 nvm->ops.valid_led_default = e1000_valid_led_default_generic;
 nvm->ops.validate = e1000_validate_nvm_checksum_generic;
 nvm->ops.write = e1000_write_nvm_80003es2lan;

 return E1000_SUCCESS;
}
