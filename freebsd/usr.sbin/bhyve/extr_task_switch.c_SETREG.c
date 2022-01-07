
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;


 int assert (int) ;
 int vm_set_register (struct vmctx*,int,int,int ) ;

__attribute__((used)) static void
SETREG(struct vmctx *ctx, int vcpu, int reg, uint64_t val)
{
 int error;

 error = vm_set_register(ctx, vcpu, reg, val);
 assert(error == 0);
}
