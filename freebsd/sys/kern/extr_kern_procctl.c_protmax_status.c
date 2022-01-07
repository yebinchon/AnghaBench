
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag2; } ;




 int PROC_ASLR_NOFORCE ;
 int PROC_PROTMAX_ACTIVE ;
 int PROC_PROTMAX_FORCE_DISABLE ;
 int PROC_PROTMAX_FORCE_ENABLE ;
 scalar_t__ PROT_READ ;
 scalar_t__ kern_mmap_maxprot (struct proc*,scalar_t__) ;

__attribute__((used)) static int
protmax_status(struct thread *td, struct proc *p, int *data)
{
 int d;

 switch (p->p_flag2 & (128 | 129)) {
 case 0:
  d = PROC_ASLR_NOFORCE;
  break;
 case 128:
  d = PROC_PROTMAX_FORCE_ENABLE;
  break;
 case 129:
  d = PROC_PROTMAX_FORCE_DISABLE;
  break;
 }
 if (kern_mmap_maxprot(p, PROT_READ) == PROT_READ)
  d |= PROC_PROTMAX_ACTIVE;
 *data = d;
 return (0);
}
