
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_mount; } ;
struct vattr {int va_rdev; int va_mode; int va_type; } ;
struct tmpfs_node {scalar_t__ tn_links; int tn_gid; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; int cn_nameptr; TYPE_1__* cn_cred; } ;
struct TYPE_2__ {int cr_uid; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EMLINK ;
 int HASBUF ;
 int ISWHITEOUT ;
 int LK_EXCLUSIVE ;
 int MPASS (int) ;
 scalar_t__ TMPFS_LINK_MAX ;
 int VDIR ;
 struct tmpfs_mount* VFS_TO_TMPFS (int ) ;
 struct tmpfs_node* VP_TO_TMPFS_DIR (struct vnode*) ;
 int tmpfs_alloc_dirent (struct tmpfs_mount*,struct tmpfs_node*,int ,int ,struct tmpfs_dirent**) ;
 int tmpfs_alloc_node (int ,struct tmpfs_mount*,int ,int ,int ,int ,struct tmpfs_node*,char const*,int ,struct tmpfs_node**) ;
 int tmpfs_alloc_vp (int ,struct tmpfs_node*,int ,struct vnode**) ;
 int tmpfs_dir_attach (struct vnode*,struct tmpfs_dirent*) ;
 int tmpfs_dir_whiteout_remove (struct vnode*,struct componentname*) ;
 int tmpfs_free_dirent (struct tmpfs_mount*,struct tmpfs_dirent*) ;
 int tmpfs_free_node (struct tmpfs_mount*,struct tmpfs_node*) ;

int
tmpfs_alloc_file(struct vnode *dvp, struct vnode **vpp, struct vattr *vap,
    struct componentname *cnp, const char *target)
{
 int error;
 struct tmpfs_dirent *de;
 struct tmpfs_mount *tmp;
 struct tmpfs_node *dnode;
 struct tmpfs_node *node;
 struct tmpfs_node *parent;

 ASSERT_VOP_ELOCKED(dvp, "tmpfs_alloc_file");
 MPASS(cnp->cn_flags & HASBUF);

 tmp = VFS_TO_TMPFS(dvp->v_mount);
 dnode = VP_TO_TMPFS_DIR(dvp);
 *vpp = ((void*)0);




 if (vap->va_type == VDIR) {


  MPASS(dnode->tn_links <= TMPFS_LINK_MAX);
  if (dnode->tn_links == TMPFS_LINK_MAX) {
   return (EMLINK);
  }

  parent = dnode;
  MPASS(parent != ((void*)0));
 } else
  parent = ((void*)0);


 error = tmpfs_alloc_node(dvp->v_mount, tmp, vap->va_type,
     cnp->cn_cred->cr_uid, dnode->tn_gid, vap->va_mode, parent,
     target, vap->va_rdev, &node);
 if (error != 0)
  return (error);


 error = tmpfs_alloc_dirent(tmp, node, cnp->cn_nameptr, cnp->cn_namelen,
     &de);
 if (error != 0) {
  tmpfs_free_node(tmp, node);
  return (error);
 }


 error = tmpfs_alloc_vp(dvp->v_mount, node, LK_EXCLUSIVE, vpp);
 if (error != 0) {
  tmpfs_free_dirent(tmp, de);
  tmpfs_free_node(tmp, node);
  return (error);
 }




 if (cnp->cn_flags & ISWHITEOUT)
  tmpfs_dir_whiteout_remove(dvp, cnp);
 tmpfs_dir_attach(dvp, de);
 return (0);
}
