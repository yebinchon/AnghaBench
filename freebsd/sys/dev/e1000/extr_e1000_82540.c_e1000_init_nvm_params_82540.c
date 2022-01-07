
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int write; int validate; int valid_led_default; int update; int release; int read; int acquire; } ;
struct e1000_nvm_info {int delay_usec; int opcode_bits; int override; int address_bits; int word_size; TYPE_1__ ops; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_SIZE ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int e1000_acquire_nvm_generic ;
 int e1000_nvm_eeprom_microwire ;


 int e1000_read_nvm_microwire ;
 int e1000_release_nvm_generic ;
 int e1000_update_nvm_checksum_generic ;
 int e1000_valid_led_default_generic ;
 int e1000_validate_nvm_checksum_generic ;
 int e1000_write_nvm_microwire ;

__attribute__((used)) static s32 e1000_init_nvm_params_82540(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);

 DEBUGFUNC("e1000_init_nvm_params_82540");

 nvm->type = e1000_nvm_eeprom_microwire;
 nvm->delay_usec = 50;
 nvm->opcode_bits = 3;
 switch (nvm->override) {
 case 129:
  nvm->address_bits = 8;
  nvm->word_size = 256;
  break;
 case 128:
  nvm->address_bits = 6;
  nvm->word_size = 64;
  break;
 default:
  nvm->address_bits = eecd & E1000_EECD_SIZE ? 8 : 6;
  nvm->word_size = eecd & E1000_EECD_SIZE ? 256 : 64;
  break;
 }


 nvm->ops.acquire = e1000_acquire_nvm_generic;
 nvm->ops.read = e1000_read_nvm_microwire;
 nvm->ops.release = e1000_release_nvm_generic;
 nvm->ops.update = e1000_update_nvm_checksum_generic;
 nvm->ops.valid_led_default = e1000_valid_led_default_generic;
 nvm->ops.validate = e1000_validate_nvm_checksum_generic;
 nvm->ops.write = e1000_write_nvm_microwire;

 return E1000_SUCCESS;
}
