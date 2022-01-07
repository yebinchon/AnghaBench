
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_guest_paging {int cr3; int paging_mode; int cpu_mode; scalar_t__ cpl; } ;


 int CPU_MODE_64BIT ;
 int CPU_MODE_PROTECTED ;
 int CPU_MODE_REAL ;
 int CR0_PE ;
 int CR0_PG ;
 int CR4_PAE ;
 int EFER_LMA ;
 int EFER_LME ;
 int PAGING_MODE_32 ;
 int PAGING_MODE_64 ;
 int PAGING_MODE_FLAT ;
 int PAGING_MODE_PAE ;
 int const VM_REG_GUEST_CR0 ;
 int const VM_REG_GUEST_CR3 ;
 int const VM_REG_GUEST_CR4 ;
 int const VM_REG_GUEST_EFER ;
 int ctx ;
 int nitems (int const*) ;
 int vm_get_register_set (int ,int,int ,int const*,int*) ;

__attribute__((used)) static int
guest_paging_info(int vcpu, struct vm_guest_paging *paging)
{
 uint64_t regs[4];
 const int regset[4] = {
  VM_REG_GUEST_CR0,
  VM_REG_GUEST_CR3,
  VM_REG_GUEST_CR4,
  VM_REG_GUEST_EFER
 };

 if (vm_get_register_set(ctx, vcpu, nitems(regset), regset, regs) == -1)
  return (-1);






 paging->cr3 = regs[1];
 paging->cpl = 0;
 if (regs[3] & EFER_LMA)
  paging->cpu_mode = CPU_MODE_64BIT;
 else if (regs[0] & CR0_PE)
  paging->cpu_mode = CPU_MODE_PROTECTED;
 else
  paging->cpu_mode = CPU_MODE_REAL;
 if (!(regs[0] & CR0_PG))
  paging->paging_mode = PAGING_MODE_FLAT;
 else if (!(regs[2] & CR4_PAE))
  paging->paging_mode = PAGING_MODE_32;
 else if (regs[3] & EFER_LME)
  paging->paging_mode = PAGING_MODE_64;
 else
  paging->paging_mode = PAGING_MODE_PAE;
 return (0);
}
