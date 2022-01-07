
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag2; int p_fctl0; } ;


 int NT_FREEBSD_FCTL_PROTMAX_DISABLE ;
 int P2_PROTMAX_DISABLE ;
 int P2_PROTMAX_ENABLE ;
 int PROT_NONE ;
 int _PROT_ALL ;
 scalar_t__ imply_prot_max ;

int
kern_mmap_maxprot(struct proc *p, int prot)
{

 if ((p->p_flag2 & P2_PROTMAX_DISABLE) != 0 ||
     (p->p_fctl0 & NT_FREEBSD_FCTL_PROTMAX_DISABLE) != 0)
  return (_PROT_ALL);
 if (((p->p_flag2 & P2_PROTMAX_ENABLE) != 0 || imply_prot_max) &&
     prot != PROT_NONE)
   return (prot);
 return (_PROT_ALL);
}
