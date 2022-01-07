
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct vm86frame {int vmf_eflags; int vmf_trapno; int vmf_ip; int vmf_cs; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ HLT ;
 scalar_t__ MAKE_ADDR (int ,int ) ;
 int PSL_C ;
 int PSL_VM ;
 int panic (char*) ;
 scalar_t__ setidt_disp ;
 scalar_t__ vm86_biosret ;

void
vm86_trap(struct vm86frame *vmf)
{
 void (*p)(struct vm86frame *);
 caddr_t addr;


 if ((vmf->vmf_eflags & PSL_VM) == 0)
  panic("vm86_trap called, but not in vm86 mode");

 addr = MAKE_ADDR(vmf->vmf_cs, vmf->vmf_ip);
 if (*(u_char *)addr == HLT)
  vmf->vmf_trapno = vmf->vmf_eflags & PSL_C;
 else
  vmf->vmf_trapno = vmf->vmf_trapno << 16;

 p = (void (*)(struct vm86frame *))((uintptr_t)vm86_biosret +
     setidt_disp);
 p(vmf);
}
