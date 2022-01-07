
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_vptocnp_args {char* a_buf; int* a_buflen; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct devfs_dirent* v_data; int v_mount; } ;
struct devfs_mount {int dm_lock; struct devfs_dirent* dm_rootdir; } ;
struct devfs_dirent {struct vnode* de_vnode; TYPE_1__* de_dirent; } ;
struct TYPE_2__ {scalar_t__ d_namlen; int d_name; } ;


 int ENOENT ;
 int ENOMEM ;
 scalar_t__ VCHR ;
 scalar_t__ VDIR ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int bcopy (int ,char*,scalar_t__) ;
 int devfs_de_interlock ;
 struct devfs_dirent* devfs_parent_dirent (struct devfs_dirent*) ;
 int devfs_populate_vp (struct vnode*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xunlock (int *) ;
 int vdrop (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vref (struct vnode*) ;

__attribute__((used)) static int
devfs_vptocnp(struct vop_vptocnp_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode **dvp = ap->a_vpp;
 struct devfs_mount *dmp;
 char *buf = ap->a_buf;
 int *buflen = ap->a_buflen;
 struct devfs_dirent *dd, *de;
 int i, error;

 dmp = VFSTODEVFS(vp->v_mount);

 error = devfs_populate_vp(vp);
 if (error != 0)
  return (error);

 if (vp->v_type != VCHR && vp->v_type != VDIR) {
  error = ENOENT;
  goto finished;
 }

 dd = vp->v_data;
 if (vp->v_type == VDIR && dd == dmp->dm_rootdir) {
  *dvp = vp;
  vref(*dvp);
  goto finished;
 }

 i = *buflen;
 i -= dd->de_dirent->d_namlen;
 if (i < 0) {
  error = ENOMEM;
  goto finished;
 }
 bcopy(dd->de_dirent->d_name, buf + i, dd->de_dirent->d_namlen);
 *buflen = i;
 de = devfs_parent_dirent(dd);
 if (de == ((void*)0)) {
  error = ENOENT;
  goto finished;
 }
 mtx_lock(&devfs_de_interlock);
 *dvp = de->de_vnode;
 if (*dvp != ((void*)0)) {
  VI_LOCK(*dvp);
  mtx_unlock(&devfs_de_interlock);
  vholdl(*dvp);
  VI_UNLOCK(*dvp);
  vref(*dvp);
  vdrop(*dvp);
 } else {
  mtx_unlock(&devfs_de_interlock);
  error = ENOENT;
 }
finished:
 sx_xunlock(&dmp->dm_lock);
 return (error);
}
