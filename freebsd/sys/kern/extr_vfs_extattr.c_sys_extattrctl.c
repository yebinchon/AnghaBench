
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
struct extattrctl_args {int * attrname; int attrnamespace; int cmd; int * path; int * filename; } ;


 int AUDITVNODE1 ;
 int AUDITVNODE2 ;
 int AUDIT_ARG_CMD (int ) ;
 int AUDIT_ARG_TEXT (char*) ;
 int AUDIT_ARG_VALUE (int ) ;
 int EXTATTR_MAXNAMELEN ;
 int FOLLOW ;
 int LK_EXCLUSIVE ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_NO_VP_RELE ;
 int NDF_NO_VP_UNLOCK ;
 int NDINIT (struct nameidata*,int ,int,int ,int *,struct thread*) ;
 int PCATCH ;
 int UIO_USERSPACE ;
 int VFS_EXTATTRCTL (struct mount*,int ,struct vnode*,int ,char*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int copyinstr (int *,char*,int,int *) ;
 int namei (struct nameidata*) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int ) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vrele (struct vnode*) ;

int
sys_extattrctl(struct thread *td, struct extattrctl_args *uap)
{
 struct vnode *filename_vp;
 struct nameidata nd;
 struct mount *mp, *mp_writable;
 char attrname[EXTATTR_MAXNAMELEN];
 int error;

 AUDIT_ARG_CMD(uap->cmd);
 AUDIT_ARG_VALUE(uap->attrnamespace);




 if (uap->attrname != ((void*)0)) {
  error = copyinstr(uap->attrname, attrname, EXTATTR_MAXNAMELEN,
      ((void*)0));
  if (error)
   return (error);
 }
 AUDIT_ARG_TEXT(attrname);

 mp = ((void*)0);
 filename_vp = ((void*)0);
 if (uap->filename != ((void*)0)) {
  NDINIT(&nd, LOOKUP, FOLLOW | AUDITVNODE2,
      UIO_USERSPACE, uap->filename, td);
  error = namei(&nd);
  if (error)
   return (error);
  filename_vp = nd.ni_vp;
  NDFREE(&nd, NDF_NO_VP_RELE);
 }


 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1,
     UIO_USERSPACE, uap->path, td);
 error = namei(&nd);
 if (error)
  goto out;
 mp = nd.ni_vp->v_mount;
 error = vfs_busy(mp, 0);
 if (error) {
  NDFREE(&nd, 0);
  mp = ((void*)0);
  goto out;
 }
 VOP_UNLOCK(nd.ni_vp, 0);
 error = vn_start_write(nd.ni_vp, &mp_writable, V_WAIT | PCATCH);
 NDFREE(&nd, NDF_NO_VP_UNLOCK);
 if (error)
  goto out;
 if (filename_vp != ((void*)0)) {





  error = vn_lock(filename_vp, LK_EXCLUSIVE);
  if (error) {
   vn_finished_write(mp_writable);
   goto out;
  }
 }

 error = VFS_EXTATTRCTL(mp, uap->cmd, filename_vp, uap->attrnamespace,
     uap->attrname != ((void*)0) ? attrname : ((void*)0));

 vn_finished_write(mp_writable);
out:
 if (mp != ((void*)0))
  vfs_unbusy(mp);





 if (filename_vp != ((void*)0))
  vrele(filename_vp);
 return (error);
}
