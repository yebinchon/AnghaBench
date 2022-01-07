
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int write; void* validate; void* valid_led_default; void* update; void* release; scalar_t__ (* read ) (struct e1000_hw*,int ,int,int*) ;void* acquire; } ;
struct e1000_nvm_info {int override; scalar_t__ type; int address_bits; int delay_usec; int opcode_bits; int page_size; int word_size; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_ADDR_BITS ;
 int E1000_EECD_SIZE ;
 int E1000_EECD_TYPE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int NVM_CFG ;
 int NVM_SIZE_MASK ;
 int NVM_SIZE_SHIFT ;
 scalar_t__ NVM_WORD_SIZE_BASE_SHIFT_82541 ;
 void* e1000_acquire_nvm_generic ;
 scalar_t__ e1000_nvm_eeprom_microwire ;
 scalar_t__ e1000_nvm_eeprom_spi ;




 scalar_t__ e1000_read_nvm_microwire (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ e1000_read_nvm_spi (struct e1000_hw*,int ,int,int*) ;
 void* e1000_release_nvm_generic ;
 void* e1000_update_nvm_checksum_generic ;
 void* e1000_valid_led_default_generic ;
 void* e1000_validate_nvm_checksum_generic ;
 int e1000_write_nvm_microwire ;
 int e1000_write_nvm_spi ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static s32 e1000_init_nvm_params_82541(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 s32 ret_val = E1000_SUCCESS;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);
 u16 size;

 DEBUGFUNC("e1000_init_nvm_params_82541");

 switch (nvm->override) {
 case 129:
  nvm->type = e1000_nvm_eeprom_spi;
  eecd |= E1000_EECD_ADDR_BITS;
  break;
 case 128:
  nvm->type = e1000_nvm_eeprom_spi;
  eecd &= ~E1000_EECD_ADDR_BITS;
  break;
 case 131:
  nvm->type = e1000_nvm_eeprom_microwire;
  eecd |= E1000_EECD_SIZE;
  break;
 case 130:
  nvm->type = e1000_nvm_eeprom_microwire;
  eecd &= ~E1000_EECD_SIZE;
  break;
 default:
  nvm->type = eecd & E1000_EECD_TYPE ? e1000_nvm_eeprom_spi
       : e1000_nvm_eeprom_microwire;
  break;
 }

 if (nvm->type == e1000_nvm_eeprom_spi) {
  nvm->address_bits = (eecd & E1000_EECD_ADDR_BITS) ? 16 : 8;
  nvm->delay_usec = 1;
  nvm->opcode_bits = 8;
  nvm->page_size = (eecd & E1000_EECD_ADDR_BITS) ? 32 : 8;


  nvm->ops.acquire = e1000_acquire_nvm_generic;
  nvm->ops.read = e1000_read_nvm_spi;
  nvm->ops.release = e1000_release_nvm_generic;
  nvm->ops.update = e1000_update_nvm_checksum_generic;
  nvm->ops.valid_led_default = e1000_valid_led_default_generic;
  nvm->ops.validate = e1000_validate_nvm_checksum_generic;
  nvm->ops.write = e1000_write_nvm_spi;







  nvm->word_size = 64;
  ret_val = nvm->ops.read(hw, NVM_CFG, 1, &size);
  if (ret_val)
   goto out;
  size = (size & NVM_SIZE_MASK) >> NVM_SIZE_SHIFT;





  if (size) {
   size += NVM_WORD_SIZE_BASE_SHIFT_82541;
   nvm->word_size = 1 << size;
  }
 } else {
  nvm->address_bits = (eecd & E1000_EECD_ADDR_BITS) ? 8 : 6;
  nvm->delay_usec = 50;
  nvm->opcode_bits = 3;
  nvm->word_size = (eecd & E1000_EECD_ADDR_BITS) ? 256 : 64;


  nvm->ops.acquire = e1000_acquire_nvm_generic;
  nvm->ops.read = e1000_read_nvm_microwire;
  nvm->ops.release = e1000_release_nvm_generic;
  nvm->ops.update = e1000_update_nvm_checksum_generic;
  nvm->ops.valid_led_default = e1000_valid_led_default_generic;
  nvm->ops.validate = e1000_validate_nvm_checksum_generic;
  nvm->ops.write = e1000_write_nvm_microwire;
 }

out:
 return ret_val;
}
