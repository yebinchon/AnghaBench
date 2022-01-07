
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vmctx {int dummy; } ;


 int vm_inject_fault (struct vmctx*,int,int,int,int) ;

__attribute__((used)) static void
sel_exception(struct vmctx *ctx, int vcpu, int vector, uint16_t sel, int ext)
{
 sel &= ~0x3;
 if (ext)
  sel |= 0x1;
 vm_inject_fault(ctx, vcpu, vector, 1, sel);
}
