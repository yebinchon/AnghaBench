
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct seltd* td_sel; } ;
struct seltd {int st_flags; int st_selq; struct selfd* st_free2; struct selfd* st_free1; } ;
struct selinfo {struct mtx* si_mtx; int si_tdlist; } ;
struct selfd {int sf_refs; struct mtx* sf_mtx; struct selinfo* sf_si; } ;
struct mtx {int dummy; } ;


 int SELTD_RESCAN ;
 int STAILQ_INSERT_TAIL (int *,struct selfd*,int ) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct selfd*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct selinfo*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_select ;
 int panic (char*) ;
 int refcount_init (int *,int) ;
 int sf_link ;
 int sf_threads ;

void
selrecord(struct thread *selector, struct selinfo *sip)
{
 struct selfd *sfp;
 struct seltd *stp;
 struct mtx *mtxp;

 stp = selector->td_sel;



 if (stp->st_flags & SELTD_RESCAN)
  return;



 sfp = ((void*)0);
 if ((sfp = stp->st_free1) != ((void*)0))
  stp->st_free1 = ((void*)0);
 else if ((sfp = stp->st_free2) != ((void*)0))
  stp->st_free2 = ((void*)0);
 else
  panic("selrecord: No free selfd on selq");
 mtxp = sip->si_mtx;
 if (mtxp == ((void*)0))
  mtxp = mtx_pool_find(mtxpool_select, sip);



 sfp->sf_si = sip;
 sfp->sf_mtx = mtxp;
 refcount_init(&sfp->sf_refs, 2);
 STAILQ_INSERT_TAIL(&stp->st_selq, sfp, sf_link);



 mtx_lock(mtxp);
 if (sip->si_mtx == ((void*)0)) {
  sip->si_mtx = mtxp;
  TAILQ_INIT(&sip->si_tdlist);
 }



 TAILQ_INSERT_TAIL(&sip->si_tdlist, sfp, sf_threads);
 mtx_unlock(sip->si_mtx);
}
