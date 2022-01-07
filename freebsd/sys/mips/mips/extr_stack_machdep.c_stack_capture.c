
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_register_t ;
struct stack {int dummy; } ;
typedef int insn ;
struct TYPE_6__ {int rs; int func; } ;
struct TYPE_5__ {int op; scalar_t__ imm; int rt; int rs; } ;
struct TYPE_7__ {int word; TYPE_2__ RType; TYPE_1__ IType; } ;
typedef TYPE_3__ InstFmt ;






 int OP_JR ;



 int RA ;
 int SP ;
 int bcopy (void*,TYPE_3__*,int) ;
 scalar_t__ btext ;
 int stack_put (struct stack*,scalar_t__) ;
 scalar_t__ stack_register_fetch (scalar_t__,short) ;
 int stack_zero (struct stack*) ;

__attribute__((used)) static void
stack_capture(struct stack *st, u_register_t pc, u_register_t sp)
{
 u_register_t ra = 0, i, stacksize;
 short ra_stack_pos = 0;
 InstFmt insn;

 stack_zero(st);

 for (;;) {
  stacksize = 0;
  if (pc <= (u_register_t)(intptr_t)btext)
   break;
  for (i = pc; i >= (u_register_t)(intptr_t)btext; i -= sizeof (insn)) {
   bcopy((void *)(intptr_t)i, &insn, sizeof insn);
   switch (insn.IType.op) {
   case 134:
   case 133:
   case 132:
   case 131:
    if (insn.IType.rs != SP || insn.IType.rt != SP)
     break;
    stacksize = -(short)insn.IType.imm;
    break;

   case 128:
   case 130:
    if (insn.IType.rs != SP || insn.IType.rt != RA)
     break;
    ra_stack_pos = (short)insn.IType.imm;
    break;
   default:
    break;
   }

   if (stacksize)
    break;
  }

  if (stack_put(st, pc) == -1)
   break;

  for (i = pc; !ra; i += sizeof (insn)) {
   bcopy((void *)(intptr_t)i, &insn, sizeof insn);

   switch (insn.IType.op) {
   case 129:
    if (insn.RType.func == OP_JR) {
     if (ra >= (u_register_t)(intptr_t)btext)
      break;
     if (insn.RType.rs != RA)
      break;
     ra = stack_register_fetch(sp,
         ra_stack_pos);
     if (!ra)
      goto done;
     ra -= 8;
    }
    break;
   default:
    break;
   }

   if (insn.word == 0x42000018)
    goto done;
  }

  if (pc == ra && stacksize == 0)
   break;

  sp += stacksize;
  pc = ra;
  ra = 0;
 }
done:
 return;
}
