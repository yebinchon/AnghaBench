
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef int accmode_t ;


 int EPERM ;


 int FSESS_DEFAULT_PERMISSIONS ;
 struct ucred* NOCRED ;
 int PRIV_VFS_EXTATTR_SYSTEM ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int fuse_internal_access (struct vnode*,int ,struct thread*,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;
 struct mount* vnode_mount (struct vnode*) ;

__attribute__((used)) static int
fuse_extattr_check_cred(struct vnode *vp, int ns, struct ucred *cred,
 struct thread *td, accmode_t accmode)
{
 struct mount *mp = vnode_mount(vp);
 struct fuse_data *data = fuse_get_mpdata(mp);




 if (cred == NOCRED)
  return (0);





 switch (ns) {
 case 129:
  if (data->dataflags & FSESS_DEFAULT_PERMISSIONS) {
   return (priv_check_cred(cred, PRIV_VFS_EXTATTR_SYSTEM));
  }

 case 128:
  return (fuse_internal_access(vp, accmode, td, cred));
 default:
  return (EPERM);
 }
}
