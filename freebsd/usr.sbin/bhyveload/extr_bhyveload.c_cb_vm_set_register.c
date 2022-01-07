
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ctx ;
 int vm_set_register (int ,int,int,int ) ;

__attribute__((used)) static int
cb_vm_set_register(void *arg, int vcpu, int reg, uint64_t val)
{

 return (vm_set_register(ctx, vcpu, reg, val));
}
