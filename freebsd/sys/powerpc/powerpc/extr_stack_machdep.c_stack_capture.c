
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct stack {int dummy; } ;


 scalar_t__ CALLOFFSET ;
 scalar_t__ PAGE_SIZE ;
 int asttrapexit ;
 int stack_put (struct stack*,scalar_t__) ;
 int stack_zero (struct stack*) ;
 int trapexit ;

__attribute__((used)) static void
stack_capture(struct stack *st, vm_offset_t frame)
{
 vm_offset_t callpc;

 stack_zero(st);
 if (frame < PAGE_SIZE)
  return;
 while (1) {
  frame = *(vm_offset_t *)frame;
  if (frame < PAGE_SIZE)
   break;




  callpc = *(vm_offset_t *)(frame + 4) - 4;

  if ((callpc & 3) || (callpc < 0x100))
   break;







  if (callpc + CALLOFFSET == (vm_offset_t) &trapexit ||
      callpc + CALLOFFSET == (vm_offset_t) &asttrapexit)
   break;

  if (stack_put(st, callpc) == -1)
   break;
 }
}
