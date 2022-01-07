
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int prison_hold_locked (struct prison*) ;

void
prison_hold(struct prison *pr)
{

 mtx_lock(&pr->pr_mtx);
 prison_hold_locked(pr);
 mtx_unlock(&pr->pr_mtx);
}
