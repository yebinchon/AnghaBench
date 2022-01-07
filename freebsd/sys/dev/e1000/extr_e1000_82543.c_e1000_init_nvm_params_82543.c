
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write; int validate; int valid_led_default; int update; int read; } ;
struct e1000_nvm_info {int word_size; int delay_usec; int address_bits; int opcode_bits; TYPE_1__ ops; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 int e1000_nvm_eeprom_microwire ;
 int e1000_read_nvm_microwire ;
 int e1000_update_nvm_checksum_generic ;
 int e1000_valid_led_default_generic ;
 int e1000_validate_nvm_checksum_generic ;
 int e1000_write_nvm_microwire ;

__attribute__((used)) static s32 e1000_init_nvm_params_82543(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;

 DEBUGFUNC("e1000_init_nvm_params_82543");

 nvm->type = e1000_nvm_eeprom_microwire;
 nvm->word_size = 64;
 nvm->delay_usec = 50;
 nvm->address_bits = 6;
 nvm->opcode_bits = 3;


 nvm->ops.read = e1000_read_nvm_microwire;
 nvm->ops.update = e1000_update_nvm_checksum_generic;
 nvm->ops.valid_led_default = e1000_valid_led_default_generic;
 nvm->ops.validate = e1000_validate_nvm_checksum_generic;
 nvm->ops.write = e1000_write_nvm_microwire;

 return E1000_SUCCESS;
}
