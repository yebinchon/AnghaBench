
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct umtx_pi {TYPE_2__* pi_owner; } ;
struct TYPE_4__ {TYPE_1__* td_umtxq; } ;
struct TYPE_3__ {int uq_pi_contested; } ;


 int MA_OWNED ;
 int TAILQ_REMOVE (int *,struct umtx_pi*,int ) ;
 int mtx_assert (int *,int ) ;
 int pi_link ;
 int umtx_lock ;

__attribute__((used)) static void
umtx_pi_disown(struct umtx_pi *pi)
{

 mtx_assert(&umtx_lock, MA_OWNED);
 TAILQ_REMOVE(&pi->pi_owner->td_umtxq->uq_pi_contested, pi, pi_link);
 pi->pi_owner = ((void*)0);
}
