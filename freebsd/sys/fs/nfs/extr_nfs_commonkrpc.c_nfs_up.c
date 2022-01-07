
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct nfsmount {int nm_state; int nm_mtx; TYPE_2__* nm_mountp; } ;
struct TYPE_3__ {int f_fsid; int f_mntfromname; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int NFSSTA_LOCKTIMEO ;
 int NFSSTA_TIMEO ;
 int VQ_NOTRESP ;
 int VQ_NOTRESPLOCK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfs_msg (struct thread*,int ,char const*,int ) ;
 int vfs_event_signal (int *,int ,int) ;

__attribute__((used)) static void
nfs_up(struct nfsmount *nmp, struct thread *td, const char *msg,
    int flags, int tprintfmsg)
{
 if (nmp == ((void*)0))
  return;
 if (tprintfmsg) {
  nfs_msg(td, nmp->nm_mountp->mnt_stat.f_mntfromname, msg, 0);
 }

 mtx_lock(&nmp->nm_mtx);
 if ((flags & NFSSTA_TIMEO) && (nmp->nm_state & NFSSTA_TIMEO)) {
  nmp->nm_state &= ~NFSSTA_TIMEO;
  mtx_unlock(&nmp->nm_mtx);
  vfs_event_signal(&nmp->nm_mountp->mnt_stat.f_fsid,
      VQ_NOTRESP, 1);
 } else
  mtx_unlock(&nmp->nm_mtx);

 mtx_lock(&nmp->nm_mtx);
 if ((flags & NFSSTA_LOCKTIMEO) && (nmp->nm_state & NFSSTA_LOCKTIMEO)) {
  nmp->nm_state &= ~NFSSTA_LOCKTIMEO;
  mtx_unlock(&nmp->nm_mtx);
  vfs_event_signal(&nmp->nm_mountp->mnt_stat.f_fsid,
      VQ_NOTRESPLOCK, 1);
 } else
  mtx_unlock(&nmp->nm_mtx);
}
