
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct nlm_feedback_arg {int nf_printed; struct nfsmount* nf_nmp; } ;
struct nfsmount {int nm_state; TYPE_2__* nm_mountp; int nm_mtx; } ;
struct TYPE_3__ {int f_mntfromname; int f_fsid; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int NFSSTA_LOCKTIMEO ;
 int TRUE ;
 int VQ_NOTRESPLOCK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nlm_msg (struct thread*,int ,char const*,int) ;
 int vfs_event_signal (int *,int ,int ) ;

__attribute__((used)) static void
nlm_down(struct nlm_feedback_arg *nf, struct thread *td,
    const char *msg, int error)
{
 struct nfsmount *nmp = nf->nf_nmp;

 if (nmp == ((void*)0))
  return;
 mtx_lock(&nmp->nm_mtx);
 if (!(nmp->nm_state & NFSSTA_LOCKTIMEO)) {
  nmp->nm_state |= NFSSTA_LOCKTIMEO;
  mtx_unlock(&nmp->nm_mtx);
  vfs_event_signal(&nmp->nm_mountp->mnt_stat.f_fsid,
      VQ_NOTRESPLOCK, 0);
 } else {
  mtx_unlock(&nmp->nm_mtx);
 }

 nf->nf_printed = TRUE;
 nlm_msg(td, nmp->nm_mountp->mnt_stat.f_mntfromname, msg, error);
}
