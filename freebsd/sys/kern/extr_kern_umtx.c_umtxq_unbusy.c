
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_chain {scalar_t__ uc_busy; scalar_t__ uc_waiters; int uc_lock; } ;
struct umtx_key {int dummy; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 struct umtxq_chain* umtxq_getchain (struct umtx_key*) ;
 int wakeup_one (struct umtxq_chain*) ;

__attribute__((used)) static inline void
umtxq_unbusy(struct umtx_key *key)
{
 struct umtxq_chain *uc;

 uc = umtxq_getchain(key);
 mtx_assert(&uc->uc_lock, MA_OWNED);
 KASSERT(uc->uc_busy != 0, ("not busy"));
 uc->uc_busy = 0;
 if (uc->uc_waiters)
  wakeup_one(uc);
}
