
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vfs_state {int vs_vnlocked; int vs_vp; TYPE_2__* vs_mp; } ;
struct ucred {scalar_t__ cr_uid; } ;
struct svc_req {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nlm_host {int nh_addr; } ;
struct TYPE_6__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_1__ fhandle_t ;
typedef scalar_t__ accmode_t ;
struct TYPE_7__ {int mnt_flag; } ;


 int EINVAL ;
 int EROFS ;
 int ESTALE ;
 int FALSE ;
 int LK_EXCLUSIVE ;
 int MNT_EXPORTANON ;
 int MNT_EXRDONLY ;
 int MNT_RDONLY ;
 int TRUE ;
 int VFS_CHECKEXP (TYPE_2__*,struct sockaddr*,int*,struct ucred**,int *,int *) ;
 int VFS_FHTOVP (TYPE_2__*,int *,int ,int *) ;
 int VOP_ACCESS (int ,scalar_t__,struct ucred*,int ) ;
 int VOP_UNLOCK (int ,int ,...) ;
 scalar_t__ VWRITE ;
 int crfree (struct ucred*) ;
 int curthread ;
 int memset (struct vfs_state*,int ,int) ;
 int svc_getcred (struct svc_req*,struct ucred**,int *) ;
 TYPE_2__* vfs_getvfs (int *) ;

__attribute__((used)) static int
nlm_get_vfs_state(struct nlm_host *host, struct svc_req *rqstp,
    fhandle_t *fhp, struct vfs_state *vs, accmode_t accmode)
{
 int error, exflags;
 struct ucred *cred = ((void*)0), *credanon = ((void*)0);

 memset(vs, 0, sizeof(*vs));

 vs->vs_mp = vfs_getvfs(&fhp->fh_fsid);
 if (!vs->vs_mp) {
  return (ESTALE);
 }


 if (accmode != 0) {
  error = VFS_CHECKEXP(vs->vs_mp,
      (struct sockaddr *)&host->nh_addr, &exflags, &credanon,
      ((void*)0), ((void*)0));
  if (error)
   goto out;

  if (exflags & MNT_EXRDONLY ||
      (vs->vs_mp->mnt_flag & MNT_RDONLY)) {
   error = EROFS;
   goto out;
  }
 }

 error = VFS_FHTOVP(vs->vs_mp, &fhp->fh_fid, LK_EXCLUSIVE, &vs->vs_vp);
 if (error)
  goto out;
 vs->vs_vnlocked = TRUE;

 if (accmode != 0) {
  if (!svc_getcred(rqstp, &cred, ((void*)0))) {
   error = EINVAL;
   goto out;
  }
  if (cred->cr_uid == 0 || (exflags & MNT_EXPORTANON)) {
   crfree(cred);
   cred = credanon;
   credanon = ((void*)0);
  }




  error = VOP_ACCESS(vs->vs_vp, accmode, cred, curthread);





  if (error != 0 && accmode != VWRITE)
   error = VOP_ACCESS(vs->vs_vp, VWRITE, cred, curthread);
  if (error)
   goto out;
 }


 VOP_UNLOCK(vs->vs_vp, 0, curthread);



 vs->vs_vnlocked = FALSE;

out:
 if (cred)
  crfree(cred);
 if (credanon)
  crfree(credanon);

 return (error);
}
