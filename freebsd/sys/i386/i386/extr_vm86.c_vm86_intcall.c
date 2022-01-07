
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm86frame {int vmf_trapno; } ;


 int EINVAL ;
 int critical_enter () ;
 int critical_exit () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ setidt_disp ;
 scalar_t__ vm86_bioscall ;
 int vm86_lock ;

int
vm86_intcall(int intnum, struct vm86frame *vmf)
{
 int (*p)(struct vm86frame *);
 int retval;

 if (intnum < 0 || intnum > 0xff)
  return (EINVAL);

 vmf->vmf_trapno = intnum;
 p = (int (*)(struct vm86frame *))((uintptr_t)vm86_bioscall +
     setidt_disp);
 mtx_lock(&vm86_lock);
 critical_enter();
 retval = p(vmf);
 critical_exit();
 mtx_unlock(&vm86_lock);
 return (retval);
}
