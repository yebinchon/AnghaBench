
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm86_vme_args {int sub_op; char* sub_args; int state; int vmf; int intnum; int int_map; int debug; } ;
struct vm86_kernel {int vm86_has_vme; int vm86_inited; int vm86_intmap; int vm86_debug; } ;
struct vm86_intcall_args {int sub_op; char* sub_args; int state; int vmf; int intnum; int int_map; int debug; } ;
struct vm86_init_args {int sub_op; char* sub_args; int state; int vmf; int intnum; int int_map; int debug; } ;
struct thread {TYPE_2__* td_pcb; } ;
struct i386_vm86_args {int sub_op; char* sub_args; int state; int vmf; int intnum; int int_map; int debug; } ;
typedef int sa ;
struct TYPE_4__ {TYPE_1__* pcb_ext; } ;
struct TYPE_3__ {struct vm86_kernel ext_vm86; } ;


 int CPUID_VME ;
 int CR4_VME ;
 int EINVAL ;
 int ENODEV ;
 int PRIV_VM86_INTCALL ;




 int bcopy (int *,int ,int) ;
 int copyin (char*,struct vm86_vme_args*,int) ;
 int copyout (struct vm86_vme_args*,char*,int) ;
 int cpu_feature ;
 int i386_extend_pcb (struct thread*) ;
 int load_cr4 (int) ;
 int priv_check (struct thread*,int ) ;
 int rcr4 () ;
 int vm86_intcall (int ,int *) ;

int
vm86_sysarch(struct thread *td, char *args)
{
 int error = 0;
 struct i386_vm86_args ua;
 struct vm86_kernel *vm86;

 if ((error = copyin(args, &ua, sizeof(struct i386_vm86_args))) != 0)
  return (error);

 if (td->td_pcb->pcb_ext == 0)
  if ((error = i386_extend_pcb(td)) != 0)
   return (error);
 vm86 = &td->td_pcb->pcb_ext->ext_vm86;

 switch (ua.sub_op) {
 case 130: {
  struct vm86_init_args sa;

  if ((error = copyin(ua.sub_args, &sa, sizeof(sa))) != 0)
   return (error);
  if (cpu_feature & CPUID_VME)
   vm86->vm86_has_vme = (rcr4() & CR4_VME ? 1 : 0);
  else
   vm86->vm86_has_vme = 0;
  vm86->vm86_inited = 1;
  vm86->vm86_debug = sa.debug;
  bcopy(&sa.int_map, vm86->vm86_intmap, 32);
  }
  break;
 case 131: {
  struct vm86_vme_args sa;

  sa.state = (rcr4() & CR4_VME ? 1 : 0);
         error = copyout(&sa, ua.sub_args, sizeof(sa));
  }
  break;

 case 129: {
  struct vm86_intcall_args sa;

  if ((error = priv_check(td, PRIV_VM86_INTCALL)))
   return (error);
  if ((error = copyin(ua.sub_args, &sa, sizeof(sa))))
   return (error);
  if ((error = vm86_intcall(sa.intnum, &sa.vmf)))
   return (error);
  error = copyout(&sa, ua.sub_args, sizeof(sa));
  }
  break;

 default:
  error = EINVAL;
 }
 return (error);
}
