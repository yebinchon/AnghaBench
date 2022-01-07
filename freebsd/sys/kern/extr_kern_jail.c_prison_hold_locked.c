
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {scalar_t__ pr_ref; int pr_id; int pr_mtx; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

void
prison_hold_locked(struct prison *pr)
{

 mtx_assert(&pr->pr_mtx, MA_OWNED);
 KASSERT(pr->pr_ref > 0,
     ("Trying to hold dead prison %p (jid=%d).", pr, pr->pr_id));
 pr->pr_ref++;
}
