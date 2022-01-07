
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int tstateid ;
typedef int tfh ;
struct nfsstate {int ls_flags; scalar_t__ ls_delegtime; TYPE_1__* ls_lfp; int ls_stateid; scalar_t__ ls_delegtimelimit; struct nfsclient* ls_clp; } ;
struct nfsclient {scalar_t__ lc_delegtime; scalar_t__ lc_expiry; int lc_olddeleg; int lc_deleg; int lc_idlen; int lc_id; } ;
typedef int nfsv4stateid_t ;
typedef int fhandle_t ;
typedef int caddr_t ;
struct TYPE_8__ {int v_iflag; } ;
struct TYPE_7__ {int lf_fh; } ;
typedef int NFSPROC_T ;


 int LIST_REMOVE (struct nfsclient*,int ) ;
 int LK_RETRY ;
 int NFSBCOPY (int ,int ,int) ;
 scalar_t__ NFSD_MONOSEC ;
 int NFSERR_BADHANDLE ;
 int NFSERR_BADSTATEID ;
 int NFSERR_DELAY ;
 int NFSERR_PERM ;
 int NFSEXITCODE (int) ;
 int NFSLCK_DELEGRECALL ;
 int NFSLCK_OLDDELEG ;
 int NFSLOCKV4ROOTMUTEX () ;
 int NFSNST_REVOKE ;
 scalar_t__ NFSRV_LEASEDELTA ;
 int NFSUNLOCKSTATE () ;
 int NFSUNLOCKV4ROOTMUTEX () ;
 int NFSV4OP_CBRECALL ;
 int NFSV4ROOTLOCKMUTEXPTR ;
 int NFSV4_CBRETRYCNT ;
 int NFSVOPISLOCKED (TYPE_2__*) ;
 int NFSVOPLOCK (TYPE_2__*,int) ;
 int NFSVOPUNLOCK (TYPE_2__*,int ) ;
 int VI_DOOMED ;
 int lc_hash ;
 int nfsrv_backupstable () ;
 int nfsrv_cleanclient (struct nfsclient*,int *) ;
 int nfsrv_docallback (struct nfsclient*,int ,int *,int ,int *,int *,int *,int ,int *) ;
 int nfsrv_freedeleg (struct nfsstate*) ;
 int nfsrv_freedeleglist (int *) ;
 int nfsrv_lease ;
 int nfsrv_writestable (int ,int ,int ,int *) ;
 int nfsrv_zapclient (struct nfsclient*,int *) ;
 int nfsv4_lock (int *,int,int *,int ,int *) ;
 int nfsv4_relref (int *) ;
 int nfsv4_unlock (int *,int) ;
 int nfsv4rootfs_lock ;

__attribute__((used)) static int
nfsrv_delegconflict(struct nfsstate *stp, int *haslockp, NFSPROC_T *p,
    vnode_t vp)
{
 struct nfsclient *clp = stp->ls_clp;
 int gotlock, error, lktype = 0, retrycnt, zapped_clp;
 nfsv4stateid_t tstateid;
 fhandle_t tfh;




 if (stp->ls_flags & NFSLCK_OLDDELEG) {



  if (clp->lc_delegtime < NFSD_MONOSEC) {
   nfsrv_freedeleg(stp);
   NFSUNLOCKSTATE();
   error = -1;
   goto out;
  }
  NFSUNLOCKSTATE();






  if (*haslockp) {
   *haslockp = 0;
   NFSLOCKV4ROOTMUTEX();
   nfsv4_unlock(&nfsv4rootfs_lock, 1);
   NFSUNLOCKV4ROOTMUTEX();
  }
  error = NFSERR_DELAY;
  goto out;
 }






 if (!(stp->ls_flags & NFSLCK_DELEGRECALL)) {
  stp->ls_delegtime = NFSD_MONOSEC + (2 * nfsrv_lease) +
      NFSRV_LEASEDELTA;
  stp->ls_delegtimelimit = NFSD_MONOSEC + (6 * nfsrv_lease) +
      NFSRV_LEASEDELTA;
  stp->ls_flags |= NFSLCK_DELEGRECALL;
  NFSBCOPY((caddr_t)&stp->ls_stateid, (caddr_t)&tstateid,
      sizeof (tstateid));
  NFSBCOPY((caddr_t)&stp->ls_lfp->lf_fh, (caddr_t)&tfh,
      sizeof (tfh));
  NFSUNLOCKSTATE();
  if (*haslockp) {
   *haslockp = 0;
   NFSLOCKV4ROOTMUTEX();
   nfsv4_unlock(&nfsv4rootfs_lock, 1);
   NFSUNLOCKV4ROOTMUTEX();
  }
  retrycnt = 0;
  do {
      error = nfsrv_docallback(clp, NFSV4OP_CBRECALL,
   &tstateid, 0, &tfh, ((void*)0), ((void*)0), 0, p);
      retrycnt++;
  } while ((error == NFSERR_BADSTATEID ||
      error == NFSERR_BADHANDLE) && retrycnt < NFSV4_CBRETRYCNT);
  error = NFSERR_DELAY;
  goto out;
 }

 if (clp->lc_expiry >= NFSD_MONOSEC &&
     stp->ls_delegtime >= NFSD_MONOSEC) {
  NFSUNLOCKSTATE();




  if (*haslockp) {
   *haslockp = 0;
   NFSLOCKV4ROOTMUTEX();
   nfsv4_unlock(&nfsv4rootfs_lock, 1);
   NFSUNLOCKV4ROOTMUTEX();
  }
  error = NFSERR_DELAY;
  goto out;
 }
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
   if ((vp->v_iflag & VI_DOOMED) != 0) {
    *haslockp = 0;
    NFSLOCKV4ROOTMUTEX();
    nfsv4_unlock(&nfsv4rootfs_lock, 1);
    NFSUNLOCKV4ROOTMUTEX();
    error = NFSERR_PERM;
    goto out;
   }
  }
  error = -1;
  goto out;
 }

 NFSUNLOCKSTATE();







 nfsrv_writestable(clp->lc_id, clp->lc_idlen, NFSNST_REVOKE, p);
 nfsrv_backupstable();
 if (clp->lc_expiry < NFSD_MONOSEC) {
  nfsrv_cleanclient(clp, p);
  nfsrv_freedeleglist(&clp->lc_deleg);
  nfsrv_freedeleglist(&clp->lc_olddeleg);
  LIST_REMOVE(clp, lc_hash);
  zapped_clp = 1;
 } else {
  nfsrv_freedeleg(stp);
  zapped_clp = 0;
 }
 if (zapped_clp)
  nfsrv_zapclient(clp, p);
 error = -1;

out:
 NFSEXITCODE(error);
 return (error);
}
