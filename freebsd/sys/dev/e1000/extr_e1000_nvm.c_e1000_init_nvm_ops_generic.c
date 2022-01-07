
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write; void* validate; int valid_led_default; void* update; int reload; int release; int read; void* acquire; void* init_params; } ;
struct e1000_nvm_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int DEBUGFUNC (char*) ;
 int e1000_null_led_default ;
 int e1000_null_nvm_generic ;
 void* e1000_null_ops_generic ;
 int e1000_null_read_nvm ;
 int e1000_null_write_nvm ;
 int e1000_reload_nvm_generic ;

void e1000_init_nvm_ops_generic(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 DEBUGFUNC("e1000_init_nvm_ops_generic");


 nvm->ops.init_params = e1000_null_ops_generic;
 nvm->ops.acquire = e1000_null_ops_generic;
 nvm->ops.read = e1000_null_read_nvm;
 nvm->ops.release = e1000_null_nvm_generic;
 nvm->ops.reload = e1000_reload_nvm_generic;
 nvm->ops.update = e1000_null_ops_generic;
 nvm->ops.valid_led_default = e1000_null_led_default;
 nvm->ops.validate = e1000_null_ops_generic;
 nvm->ops.write = e1000_null_write_nvm;
}
