
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_send_entry {int dummy; } ;


 int PF_SENDQ_LOCK () ;
 int PF_SENDQ_UNLOCK () ;
 int STAILQ_INSERT_TAIL (int *,struct pf_send_entry*,int ) ;
 int V_pf_sendqueue ;
 int V_pf_swi_cookie ;
 int pfse_next ;
 int swi_sched (int ,int ) ;

__attribute__((used)) static void
pf_send(struct pf_send_entry *pfse)
{

 PF_SENDQ_LOCK();
 STAILQ_INSERT_TAIL(&V_pf_sendqueue, pfse, pfse_next);
 PF_SENDQ_UNLOCK();
 swi_sched(V_pf_swi_cookie, 0);
}
