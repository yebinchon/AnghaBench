
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {scalar_t__ pr_uref; int pr_mtx; int pr_id; } ;


 int KASSERT (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
prison_proc_hold(struct prison *pr)
{

 mtx_lock(&pr->pr_mtx);
 KASSERT(pr->pr_uref > 0,
     ("Cannot add a process to a non-alive prison (jid=%d)", pr->pr_id));
 pr->pr_uref++;
 mtx_unlock(&pr->pr_mtx);
}
