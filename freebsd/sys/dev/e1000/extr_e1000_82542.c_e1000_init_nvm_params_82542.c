
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int validate; int update; int write; int release; int read; } ;
struct e1000_nvm_info {int address_bits; int delay_usec; int opcode_bits; int word_size; TYPE_1__ ops; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 int e1000_nvm_eeprom_microwire ;
 int e1000_read_nvm_microwire ;
 int e1000_stop_nvm ;
 int e1000_update_nvm_checksum_generic ;
 int e1000_validate_nvm_checksum_generic ;
 int e1000_write_nvm_microwire ;

__attribute__((used)) static s32 e1000_init_nvm_params_82542(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;

 DEBUGFUNC("e1000_init_nvm_params_82542");

 nvm->address_bits = 6;
 nvm->delay_usec = 50;
 nvm->opcode_bits = 3;
 nvm->type = e1000_nvm_eeprom_microwire;
 nvm->word_size = 64;


 nvm->ops.read = e1000_read_nvm_microwire;
 nvm->ops.release = e1000_stop_nvm;
 nvm->ops.write = e1000_write_nvm_microwire;
 nvm->ops.update = e1000_update_nvm_checksum_generic;
 nvm->ops.validate = e1000_validate_nvm_checksum_generic;

 return E1000_SUCCESS;
}
