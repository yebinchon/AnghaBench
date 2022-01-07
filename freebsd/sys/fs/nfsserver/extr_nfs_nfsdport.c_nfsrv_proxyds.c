
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct pnfsdsattr {int dsa_mtime; int dsa_atime; int dsa_size; int dsa_filerev; } ;
struct nfsvattr {int na_mtime; int na_atime; int na_size; int na_filerev; } ;
struct nfsmount {int nm_privflag; } ;
struct nfsdevice {int dummy; } ;
struct mbuf {int dummy; } ;
struct acl {int dummy; } ;
typedef int off_t ;
typedef int fhandle_t ;
typedef int dsattr ;
struct TYPE_2__ {int mnt_flag; } ;


 int ENOATTR ;
 int ENOENT ;
 int ENXIO ;
 int EXTATTR_NAMESPACE_SYSTEM ;
 int IO_NODELOCKED ;
 scalar_t__ LK_EXCLUSIVE ;
 int LK_SHARED ;
 int MNT_EXPORTED ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSBCOPY (char*,struct pnfsdsattr*,int) ;
 int NFSDEV_MAXMIRRORS ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSLOCKMNT (struct nfsmount*) ;
 int NFSMNTP_CANCELRPCS ;
 int NFSMNTP_FORCEDISM ;
 int NFSPROC_GETATTR ;
 int NFSPROC_READDS ;
 int NFSPROC_SETACL ;
 int NFSPROC_SETATTR ;
 int NFSPROC_WRITEDS ;
 int NFSUNLOCKMNT (struct nfsmount*) ;
 scalar_t__ NFSVOPISLOCKED (struct vnode*) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int PNFSDOP_DELDSSERVER ;
 struct nfsmount* VFSTONFS (TYPE_1__*) ;
 scalar_t__ VREG ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 scalar_t__ nfsds_failerr (int) ;
 scalar_t__ nfsrv_checkdsattr (struct vnode*,struct thread*) ;
 struct nfsdevice* nfsrv_deldsnmp (int ,struct nfsmount*,struct thread*) ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_dsgetsockmnt (struct vnode*,int ,char*,int*,int*,struct thread*,struct vnode**,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int nfsrv_getattrdsrpc (int *,struct ucred*,struct thread*,struct vnode*,struct nfsmount*,struct nfsvattr*) ;
 int nfsrv_killrpcs (struct nfsmount*) ;
 scalar_t__ nfsrv_pnfsgetdsattr ;
 int nfsrv_readdsrpc (int *,int ,int,struct ucred*,struct thread*,struct nfsmount*,struct mbuf**,struct mbuf**) ;
 int nfsrv_setacldsrpc (int *,struct ucred*,struct thread*,struct vnode*,struct nfsmount**,int,struct acl*,int*) ;
 int nfsrv_setattrdsrpc (int *,struct ucred*,struct thread*,struct vnode*,struct nfsmount**,int,struct nfsvattr*,int*) ;
 int nfsrv_writedsrpc (int *,int ,int,struct ucred*,struct thread*,struct vnode*,struct nfsmount**,int,struct mbuf**,char*,int*) ;
 int printf (char*,...) ;
 int vn_extattr_get (struct vnode*,int ,int ,char*,int*,char*,struct thread*) ;
 int wakeup (struct nfsmount*) ;

__attribute__((used)) static int
nfsrv_proxyds(struct vnode *vp, off_t off, int cnt, struct ucred *cred,
    struct thread *p, int ioproc, struct mbuf **mpp, char *cp,
    struct mbuf **mpp2, struct nfsvattr *nap, struct acl *aclp)
{
 struct nfsmount *nmp[NFSDEV_MAXMIRRORS], *failnmp;
 fhandle_t fh[NFSDEV_MAXMIRRORS];
 struct vnode *dvp[NFSDEV_MAXMIRRORS];
 struct nfsdevice *ds;
 struct pnfsdsattr dsattr;
 char *buf;
 int buflen, error, failpos, i, mirrorcnt, origmircnt, trycnt;

 NFSD_DEBUG(4, "in nfsrv_proxyds\n");




 if (vp->v_type != VREG || (vp->v_mount->mnt_flag & MNT_EXPORTED) == 0 ||
     nfsrv_devidcnt == 0)
  return (ENOENT);

 buflen = 1024;
 buf = malloc(buflen, M_TEMP, M_WAITOK);
 error = 0;





 if (ioproc == NFSPROC_GETATTR) {
  error = vn_extattr_get(vp, IO_NODELOCKED,
      EXTATTR_NAMESPACE_SYSTEM, "pnfsd.dsattr", &buflen, buf,
      p);
  if (error == 0 && buflen != sizeof(dsattr))
   error = ENXIO;
  if (error == 0) {
   NFSBCOPY(buf, &dsattr, buflen);
   nap->na_filerev = dsattr.dsa_filerev;
   nap->na_size = dsattr.dsa_size;
   nap->na_atime = dsattr.dsa_atime;
   nap->na_mtime = dsattr.dsa_mtime;
   if (nfsrv_pnfsgetdsattr == 0 ||
       nfsrv_checkdsattr(vp, p) == 0) {
    free(buf, M_TEMP);
    return (error);
   }
  }






  if (error == ENOATTR)
   error = 0;
 }

 origmircnt = -1;
 trycnt = 0;
tryagain:
 if (error == 0) {
  buflen = 1024;
  if (ioproc == NFSPROC_READDS && NFSVOPISLOCKED(vp) ==
      LK_EXCLUSIVE)
   printf("nfsrv_proxyds: Readds vp exclusively locked\n");
  error = nfsrv_dsgetsockmnt(vp, LK_SHARED, buf, &buflen,
      &mirrorcnt, p, dvp, fh, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      ((void*)0), ((void*)0));
  if (error == 0) {
   for (i = 0; i < mirrorcnt; i++)
    nmp[i] = VFSTONFS(dvp[i]->v_mount);
  } else
   printf("pNFS: proxy getextattr sockaddr=%d\n", error);
 } else
  printf("pNFS: nfsrv_dsgetsockmnt=%d\n", error);
 if (error == 0) {
  failpos = -1;
  if (origmircnt == -1)
   origmircnt = mirrorcnt;
  if (ioproc == NFSPROC_READDS) {
   error = nfsrv_readdsrpc(fh, off, cnt, cred, p, nmp[0],
       mpp, mpp2);
   if (nfsds_failerr(error) && mirrorcnt > 1) {





    failpos = 0;
    error = 0;
    trycnt++;
   }
  } else if (ioproc == NFSPROC_WRITEDS)
   error = nfsrv_writedsrpc(fh, off, cnt, cred, p, vp,
       &nmp[0], mirrorcnt, mpp, cp, &failpos);
  else if (ioproc == NFSPROC_SETATTR)
   error = nfsrv_setattrdsrpc(fh, cred, p, vp, &nmp[0],
       mirrorcnt, nap, &failpos);
  else if (ioproc == NFSPROC_SETACL)
   error = nfsrv_setacldsrpc(fh, cred, p, vp, &nmp[0],
       mirrorcnt, aclp, &failpos);
  else {
   error = nfsrv_getattrdsrpc(&fh[mirrorcnt - 1], cred, p,
       vp, nmp[mirrorcnt - 1], nap);
   if (nfsds_failerr(error) && mirrorcnt > 1) {





    failpos = mirrorcnt - 1;
    error = 0;
    trycnt++;
   }
  }
  ds = ((void*)0);
  if (failpos >= 0) {
   failnmp = nmp[failpos];
   NFSLOCKMNT(failnmp);
   if ((failnmp->nm_privflag & (NFSMNTP_FORCEDISM |
        NFSMNTP_CANCELRPCS)) == 0) {
    failnmp->nm_privflag |= NFSMNTP_CANCELRPCS;
    NFSUNLOCKMNT(failnmp);
    ds = nfsrv_deldsnmp(PNFSDOP_DELDSSERVER,
        failnmp, p);
    NFSD_DEBUG(4, "dsldsnmp fail=%d ds=%p\n",
        failpos, ds);
    if (ds != ((void*)0))
     nfsrv_killrpcs(failnmp);
    NFSLOCKMNT(failnmp);
    failnmp->nm_privflag &= ~NFSMNTP_CANCELRPCS;
    wakeup(failnmp);
   }
   NFSUNLOCKMNT(failnmp);
  }
  for (i = 0; i < mirrorcnt; i++)
   NFSVOPUNLOCK(dvp[i], 0);
  NFSD_DEBUG(4, "nfsrv_proxyds: aft RPC=%d trya=%d\n", error,
      trycnt);

  if (ds != ((void*)0) && trycnt > 0 && trycnt < origmircnt)
   goto tryagain;
 } else {

  error = ENOENT;
 }
 free(buf, M_TEMP);
 NFSD_DEBUG(4, "nfsrv_proxyds: error=%d\n", error);
 return (error);
}
