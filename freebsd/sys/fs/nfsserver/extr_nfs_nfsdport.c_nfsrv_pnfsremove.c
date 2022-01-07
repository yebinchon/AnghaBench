
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct ucred {int dummy; } ;
struct nfsrvdsremove {scalar_t__ inprog; scalar_t__ done; int err; int tsk; int fname; struct vnode* dvp; int * p; struct ucred* tcred; } ;
struct nfsmount {int nm_privflag; } ;
struct nfsdevice {int dummy; } ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int EIO ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSD_DEBUG (int,char*,int,...) ;
 int NFSFREECRED (struct ucred*) ;
 int NFSLOCKMNT (struct nfsmount*) ;
 int NFSMNTP_CANCELRPCS ;
 int NFSMNTP_FORCEDISM ;
 int NFSUNLOCKMNT (struct nfsmount*) ;
 int PNFSDOP_DELDSSERVER ;
 scalar_t__ PNFS_FILENAME_LEN ;
 int PVFS ;
 struct nfsmount* VFSTONFS (int ) ;
 int free (struct nfsrvdsremove*,int ) ;
 int hz ;
 struct nfsrvdsremove* malloc (int,int ,int ) ;
 struct ucred* newnfs_getcred () ;
 int nfs_pnfsio (int ,struct nfsrvdsremove*) ;
 scalar_t__ nfs_pnfsiothreads ;
 scalar_t__ nfsds_failerr (int) ;
 struct nfsdevice* nfsrv_deldsnmp (int ,struct nfsmount*,int *) ;
 int nfsrv_dsremove (struct vnode*,char*,struct ucred*,int *) ;
 int nfsrv_freefilelayouts (int *) ;
 int nfsrv_killrpcs (struct nfsmount*) ;
 int start_dsremove ;
 int strlcpy (int ,char*,scalar_t__) ;
 int tsleep (int *,int ,char*,int) ;
 int wakeup (struct nfsmount*) ;

__attribute__((used)) static void
nfsrv_pnfsremove(struct vnode **dvp, int mirrorcnt, char *fname, fhandle_t *fhp,
    NFSPROC_T *p)
{
 struct ucred *tcred;
 struct nfsrvdsremove *dsrm, *tdsrm;
 struct nfsdevice *ds;
 struct nfsmount *nmp;
 int failpos, i, ret, timo;

 tcred = newnfs_getcred();
 dsrm = ((void*)0);
 if (mirrorcnt > 1)
  dsrm = malloc(sizeof(*dsrm) * mirrorcnt - 1, M_TEMP, M_WAITOK);




 failpos = -1;
 for (tdsrm = dsrm, i = 0; i < mirrorcnt - 1; i++, tdsrm++) {
  tdsrm->tcred = tcred;
  tdsrm->p = p;
  tdsrm->dvp = dvp[i];
  strlcpy(tdsrm->fname, fname, PNFS_FILENAME_LEN + 1);
  tdsrm->inprog = 0;
  tdsrm->done = 0;
  tdsrm->err = 0;
  ret = EIO;
  if (nfs_pnfsiothreads != 0) {
   ret = nfs_pnfsio(start_dsremove, tdsrm);
   NFSD_DEBUG(4, "nfsrv_pnfsremove: nfs_pnfsio=%d\n", ret);
  }
  if (ret != 0) {
   ret = nfsrv_dsremove(dvp[i], fname, tcred, p);
   if (failpos == -1 && nfsds_failerr(ret))
    failpos = i;
  }
 }
 ret = nfsrv_dsremove(dvp[mirrorcnt - 1], fname, tcred, p);
 if (failpos == -1 && mirrorcnt > 1 && nfsds_failerr(ret))
  failpos = mirrorcnt - 1;
 timo = hz / 50;
 if (timo < 1)
  timo = 1;

 for (tdsrm = dsrm, i = 0; i < mirrorcnt - 1; i++, tdsrm++) {
  while (tdsrm->inprog != 0 && tdsrm->done == 0)
   tsleep(&tdsrm->tsk, PVFS, "srvdsrm", timo);
  if (failpos == -1 && nfsds_failerr(tdsrm->err))
   failpos = i;
 }





 if (failpos >= 0) {
  nmp = VFSTONFS(dvp[failpos]->v_mount);
  NFSLOCKMNT(nmp);
  if ((nmp->nm_privflag & (NFSMNTP_FORCEDISM |
       NFSMNTP_CANCELRPCS)) == 0) {
   nmp->nm_privflag |= NFSMNTP_CANCELRPCS;
   NFSUNLOCKMNT(nmp);
   ds = nfsrv_deldsnmp(PNFSDOP_DELDSSERVER, nmp, p);
   NFSD_DEBUG(4, "dsremovefail fail=%d ds=%p\n", failpos,
       ds);
   if (ds != ((void*)0))
    nfsrv_killrpcs(nmp);
   NFSLOCKMNT(nmp);
   nmp->nm_privflag &= ~NFSMNTP_CANCELRPCS;
   wakeup(nmp);
  }
  NFSUNLOCKMNT(nmp);
 }


 nfsrv_freefilelayouts(fhp);

 NFSFREECRED(tcred);
 free(dsrm, M_TEMP);
}
