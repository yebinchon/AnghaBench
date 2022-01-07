
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_nlminfo; } ;


 int M_NLMINFO ;
 int free (int *,int ) ;

void
nlminfo_release(struct proc *p)
{
 free(p->p_nlminfo, M_NLMINFO);
 p->p_nlminfo = ((void*)0);
}
