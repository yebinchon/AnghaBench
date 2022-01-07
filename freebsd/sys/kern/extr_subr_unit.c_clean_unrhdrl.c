
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int mtx; int ppfree; } ;
struct unr {int dummy; } ;


 int Free (struct unr*) ;
 int MA_OWNED ;
 struct unr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct unr*,int ) ;
 int list ;
 int mtx_assert (int ,int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;

void
clean_unrhdrl(struct unrhdr *uh)
{
 struct unr *up;

 mtx_assert(uh->mtx, MA_OWNED);
 while ((up = TAILQ_FIRST(&uh->ppfree)) != ((void*)0)) {
  TAILQ_REMOVE(&uh->ppfree, up, list);
  mtx_unlock(uh->mtx);
  Free(up);
  mtx_lock(uh->mtx);
 }

}
