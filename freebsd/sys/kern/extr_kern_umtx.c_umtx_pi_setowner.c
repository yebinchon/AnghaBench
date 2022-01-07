
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {int uq_pi_contested; } ;
struct umtx_pi {struct thread* pi_owner; } ;
struct thread {struct umtx_q* td_umtxq; } ;


 int MA_OWNED ;
 int MPASS (int ) ;
 int TAILQ_INSERT_TAIL (int *,struct umtx_pi*,int ) ;
 int mtx_assert (int *,int ) ;
 int pi_link ;
 int umtx_lock ;

__attribute__((used)) static void
umtx_pi_setowner(struct umtx_pi *pi, struct thread *owner)
{
 struct umtx_q *uq_owner;

 uq_owner = owner->td_umtxq;
 mtx_assert(&umtx_lock, MA_OWNED);
 MPASS(pi->pi_owner == ((void*)0));
 pi->pi_owner = owner;
 TAILQ_INSERT_TAIL(&uq_owner->uq_pi_contested, pi, pi_link);
}
