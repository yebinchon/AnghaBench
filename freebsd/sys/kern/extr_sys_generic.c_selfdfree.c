
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seltd {int st_selq; } ;
struct selfd {int sf_refs; int sf_mtx; TYPE_1__* sf_si; } ;
struct TYPE_2__ {int si_tdlist; } ;


 int STAILQ_REMOVE (int *,struct selfd*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct selfd*,int ) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 scalar_t__ refcount_release (int *) ;
 int selfd ;
 int selfd_zone ;
 int sf_link ;
 int sf_threads ;
 int uma_zfree (int ,struct selfd*) ;

__attribute__((used)) static void
selfdfree(struct seltd *stp, struct selfd *sfp)
{
 STAILQ_REMOVE(&stp->st_selq, sfp, selfd, sf_link);
 if (sfp->sf_si != ((void*)0)) {
  mtx_lock(sfp->sf_mtx);
  if (sfp->sf_si != ((void*)0)) {
   TAILQ_REMOVE(&sfp->sf_si->si_tdlist, sfp, sf_threads);
   refcount_release(&sfp->sf_refs);
  }
  mtx_unlock(sfp->sf_mtx);
 }
 if (refcount_release(&sfp->sf_refs))
  uma_zfree(selfd_zone, sfp);
}
