
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct nfsclient {scalar_t__ lc_expiry; int lc_olddeleg; int lc_deleg; int lc_idlen; int lc_id; } ;
struct TYPE_8__ {int nsf_flags; } ;
struct TYPE_7__ {int v_iflag; } ;
typedef int NFSPROC_T ;


 int LIST_REMOVE (struct nfsclient*,int ) ;
 int LK_RETRY ;
 scalar_t__ NFSD_MONOSEC ;
 int NFSLOCKV4ROOTMUTEX () ;
 int NFSNSF_UPDATEDONE ;
 int NFSNST_REVOKE ;
 int NFSUNLOCKSTATE () ;
 int NFSUNLOCKV4ROOTMUTEX () ;
 int NFSV4ROOTLOCKMUTEXPTR ;
 int NFSVOPISLOCKED (TYPE_1__*) ;
 int NFSVOPLOCK (TYPE_1__*,int) ;
 int NFSVOPUNLOCK (TYPE_1__*,int ) ;
 int VI_DOOMED ;
 int lc_hash ;
 int nfsrv_backupstable () ;
 int nfsrv_cleanclient (struct nfsclient*,int *) ;
 int nfsrv_freedeleglist (int *) ;
 TYPE_2__ nfsrv_stablefirst ;
 int nfsrv_writestable (int ,int ,int ,int *) ;
 int nfsrv_zapclient (struct nfsclient*,int *) ;
 int nfsv4_lock (int *,int,int *,int ,int *) ;
 int nfsv4_relref (int *) ;
 int nfsv4rootfs_lock ;

__attribute__((used)) static int
nfsrv_clientconflict(struct nfsclient *clp, int *haslockp, vnode_t vp,
    NFSPROC_T *p)
{
 int gotlock, lktype = 0;




 if (clp->lc_expiry >= NFSD_MONOSEC ||
     !(nfsrv_stablefirst.nsf_flags & NFSNSF_UPDATEDONE))
  return (0);
 if (*haslockp == 0) {
  NFSUNLOCKSTATE();
  if (vp != ((void*)0)) {
   lktype = NFSVOPISLOCKED(vp);
   NFSVOPUNLOCK(vp, 0);
  }
  NFSLOCKV4ROOTMUTEX();
  nfsv4_relref(&nfsv4rootfs_lock);
  do {
   gotlock = nfsv4_lock(&nfsv4rootfs_lock, 1, ((void*)0),
       NFSV4ROOTLOCKMUTEXPTR, ((void*)0));
  } while (!gotlock);
  NFSUNLOCKV4ROOTMUTEX();
  *haslockp = 1;
  if (vp != ((void*)0)) {
   NFSVOPLOCK(vp, lktype | LK_RETRY);
   if ((vp->v_iflag & VI_DOOMED) != 0)
    return (2);
  }
  return (1);
 }
 NFSUNLOCKSTATE();




 nfsrv_writestable(clp->lc_id, clp->lc_idlen, NFSNST_REVOKE, p);
 nfsrv_backupstable();
 nfsrv_cleanclient(clp, p);
 nfsrv_freedeleglist(&clp->lc_deleg);
 nfsrv_freedeleglist(&clp->lc_olddeleg);
 LIST_REMOVE(clp, lc_hash);
 nfsrv_zapclient(clp, p);
 return (1);
}
