
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_2__* v_mount; } ;
struct pnfsdsfile {int dsf_dir; int dsf_filename; } ;
struct nfsmount {int dummy; } ;
struct nfsdevice {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_4__ {TYPE_1__* mnt_vfc; } ;
struct TYPE_3__ {int vfc_name; } ;
typedef int NFSPROC_T ;


 int EISDIR ;
 int ENOTDIR ;
 int ENXIO ;
 int EPERM ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,int *) ;
 int NFSDDSLOCK () ;
 int NFSDDSUNLOCK () ;
 int NFSD_DEBUG (int,char*,...) ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 struct nfsmount* VFSTONFS (TYPE_2__*) ;
 scalar_t__ VREG ;
 int namei (struct nameidata*) ;
 int nfsrv_dsgetsockmnt (struct vnode*,int ,char*,int*,int*,int *,int *,int *,int *,char*,struct vnode**,struct nfsmount**,struct nfsmount*,int*,int*) ;
 struct nfsdevice* nfsrv_findmirroredds (struct nfsmount*) ;
 struct nfsdevice* nfsv4_findmirror (struct nfsmount*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (int ,char*,int) ;
 int vput (struct vnode*) ;

int
nfsrv_mdscopymr(char *mdspathp, char *dspathp, char *curdspathp, char *buf,
    int *buflenp, char *fname, NFSPROC_T *p, struct vnode **vpp,
    struct vnode **nvpp, struct pnfsdsfile **pfp, struct nfsdevice **dsp,
    struct nfsdevice **fdsp)
{
 struct nameidata nd;
 struct vnode *vp, *curvp;
 struct pnfsdsfile *pf;
 struct nfsmount *nmp, *curnmp;
 int dsdir, error, mirrorcnt, ippos;

 vp = ((void*)0);
 curvp = ((void*)0);
 curnmp = ((void*)0);
 *dsp = ((void*)0);
 *fdsp = ((void*)0);
 if (dspathp == ((void*)0) && curdspathp != ((void*)0))
  return (EPERM);





 NFSD_DEBUG(4, "mdsopen path=%s\n", mdspathp);
 NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF, UIO_SYSSPACE,
     mdspathp, p);
 error = namei(&nd);
 NFSD_DEBUG(4, "lookup=%d\n", error);
 if (error != 0)
  return (error);
 if (nd.ni_vp->v_type != VREG) {
  vput(nd.ni_vp);
  NFSD_DEBUG(4, "mdspath not reg\n");
  return (EISDIR);
 }
 vp = nd.ni_vp;

 if (curdspathp != ((void*)0)) {




  NFSD_DEBUG(4, "curmdsdev path=%s\n", curdspathp);
  NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF,
      UIO_SYSSPACE, curdspathp, p);
  error = namei(&nd);
  NFSD_DEBUG(4, "ds lookup=%d\n", error);
  if (error != 0) {
   vput(vp);
   return (error);
  }
  if (nd.ni_vp->v_type != VDIR) {
   vput(nd.ni_vp);
   vput(vp);
   NFSD_DEBUG(4, "curdspath not dir\n");
   return (ENOTDIR);
  }
  if (strcmp(nd.ni_vp->v_mount->mnt_vfc->vfc_name, "nfs") != 0) {
   vput(nd.ni_vp);
   vput(vp);
   NFSD_DEBUG(4, "curdspath not an NFS mount\n");
   return (ENXIO);
  }
  curnmp = VFSTONFS(nd.ni_vp->v_mount);


  NFSDDSLOCK();
  *fdsp = nfsv4_findmirror(curnmp);
  NFSDDSUNLOCK();
  if (*fdsp == ((void*)0))
   curnmp = ((void*)0);
  if (curnmp == ((void*)0)) {
   vput(nd.ni_vp);
   vput(vp);
   NFSD_DEBUG(4, "mdscopymr: no current ds\n");
   return (ENXIO);
  }
  curvp = nd.ni_vp;
 }

 if (dspathp != ((void*)0)) {

  NFSD_DEBUG(4, "mdsdev path=%s\n", dspathp);
  NDINIT(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF,
      UIO_SYSSPACE, dspathp, p);
  error = namei(&nd);
  NFSD_DEBUG(4, "ds lookup=%d\n", error);
  if (error != 0) {
   vput(vp);
   if (curvp != ((void*)0))
    vput(curvp);
   return (error);
  }
  if (nd.ni_vp->v_type != VDIR || nd.ni_vp == curvp) {
   vput(nd.ni_vp);
   vput(vp);
   if (curvp != ((void*)0))
    vput(curvp);
   NFSD_DEBUG(4, "dspath not dir\n");
   if (nd.ni_vp == curvp)
    return (EPERM);
   return (ENOTDIR);
  }
  if (strcmp(nd.ni_vp->v_mount->mnt_vfc->vfc_name, "nfs") != 0) {
   vput(nd.ni_vp);
   vput(vp);
   if (curvp != ((void*)0))
    vput(curvp);
   NFSD_DEBUG(4, "dspath not an NFS mount\n");
   return (ENXIO);
  }
  nmp = VFSTONFS(nd.ni_vp->v_mount);





  NFSDDSLOCK();
  if (curnmp == ((void*)0))
   *dsp = nfsrv_findmirroredds(nmp);
  else
   *dsp = nfsv4_findmirror(nmp);
  NFSDDSUNLOCK();
  if (*dsp == ((void*)0)) {
   vput(nd.ni_vp);
   vput(vp);
   if (curvp != ((void*)0))
    vput(curvp);
   NFSD_DEBUG(4, "mdscopymr: no ds\n");
   return (ENXIO);
  }
 } else {
  nd.ni_vp = ((void*)0);
  nmp = ((void*)0);
 }
 error = nfsrv_dsgetsockmnt(vp, 0, buf, buflenp, &mirrorcnt, p,
     ((void*)0), ((void*)0), ((void*)0), fname, nvpp, &nmp, curnmp, &ippos, &dsdir);
 if (curvp != ((void*)0))
  vput(curvp);
 if (nd.ni_vp == ((void*)0)) {
  if (error == 0 && nmp != ((void*)0)) {

   NFSDDSLOCK();
   *dsp = nfsrv_findmirroredds(nmp);
   NFSDDSUNLOCK();
  }
  if (error == 0 && (nmp == ((void*)0) || *dsp == ((void*)0))) {
   if (nvpp != ((void*)0) && *nvpp != ((void*)0)) {
    vput(*nvpp);
    *nvpp = ((void*)0);
   }
   error = ENXIO;
  }
 } else
  vput(nd.ni_vp);






 if (error == 0 && dspathp != ((void*)0) && ippos == -1) {
  if (nvpp != ((void*)0) && *nvpp != ((void*)0)) {
   vput(*nvpp);
   *nvpp = ((void*)0);
  }
  error = ENXIO;
 }
 if (error == 0) {
  *vpp = vp;

  pf = (struct pnfsdsfile *)buf;
  if (ippos == -1) {

   ippos = *buflenp / sizeof(*pf);
   *buflenp += sizeof(*pf);
   pf += ippos;
   pf->dsf_dir = dsdir;
   strlcpy(pf->dsf_filename, fname,
       sizeof(pf->dsf_filename));
  } else
   pf += ippos;
  *pfp = pf;
 } else
  vput(vp);
 return (error);
}
