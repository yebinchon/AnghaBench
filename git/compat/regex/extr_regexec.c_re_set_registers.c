
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {unsigned int num_regs; int * end; int * start; } ;
struct re_pattern_buffer {int regs_allocated; } ;
typedef int regoff_t ;


 int REGS_REALLOCATE ;
 int REGS_UNALLOCATED ;

void
re_set_registers (struct re_pattern_buffer *bufp,
    struct re_registers *regs,
    unsigned num_regs,
    regoff_t *starts,
    regoff_t *ends)
{
  if (num_regs)
    {
      bufp->regs_allocated = REGS_REALLOCATE;
      regs->num_regs = num_regs;
      regs->start = starts;
      regs->end = ends;
    }
  else
    {
      bufp->regs_allocated = REGS_UNALLOCATED;
      regs->num_regs = 0;
      regs->start = regs->end = (regoff_t *) 0;
    }
}
