
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_mount; } ;
struct TYPE_2__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {scalar_t__ tn_type; int tn_mode; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {struct tmpfs_node* td_node; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; scalar_t__ cn_nameiop; int cn_lkflags; int cn_thread; int cn_cred; } ;


 scalar_t__ CREATE ;
 scalar_t__ DELETE ;
 int DOWHITEOUT ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ENOTDIR ;
 int EPERM ;
 int IFF (int,int) ;
 int IMPLIES (int,int) ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int ISWHITEOUT ;
 int MAKEENTRY ;
 int MPASS (int ) ;
 struct vnode* NULLVP ;
 scalar_t__ RENAME ;
 int SAVENAME ;
 int S_ISTXT ;
 int TMPFS_ASSERT_LOCKED (struct tmpfs_node*) ;
 int VADMIN ;
 scalar_t__ VDIR ;
 int VEXEC ;
 struct tmpfs_mount* VFS_TO_TMPFS (int ) ;
 scalar_t__ VLNK ;
 int VOP_ACCESS (struct vnode*,int ,int ,int ) ;
 scalar_t__ VOP_ISLOCKED (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_DIR (struct vnode*) ;
 int VREF (struct vnode*) ;
 int VWRITE ;
 int cache_enter (struct vnode*,struct vnode*,struct componentname*) ;
 int tmpfs_alloc_vp (int ,struct tmpfs_node*,int ,struct vnode**) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (struct tmpfs_node*,int *,struct componentname*) ;
 int tmpfs_free_node (struct tmpfs_mount*,struct tmpfs_node*) ;
 int tmpfs_ref_node (struct tmpfs_node*) ;
 scalar_t__ tmpfs_use_nc (struct vnode*) ;
 int tmpfs_vn_get_ino_alloc ;
 int vn_vget_ino_gen (struct vnode*,int ,struct tmpfs_node*,int ,struct vnode**) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
tmpfs_lookup1(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp)
{
 struct tmpfs_dirent *de;
 struct tmpfs_node *dnode, *pnode;
 struct tmpfs_mount *tm;
 int error;

 dnode = VP_TO_TMPFS_DIR(dvp);
 *vpp = NULLVP;


 error = VOP_ACCESS(dvp, VEXEC, cnp->cn_cred, cnp->cn_thread);
 if (error != 0)
  goto out;


 MPASS(IMPLIES(dnode->tn_type == VDIR &&
     dnode->tn_dir.tn_parent == dnode,
     !(cnp->cn_flags & ISDOTDOT)));

 TMPFS_ASSERT_LOCKED(dnode);
 if (dnode->tn_dir.tn_parent == ((void*)0)) {
  error = ENOENT;
  goto out;
 }
 if (cnp->cn_flags & ISDOTDOT) {
  tm = VFS_TO_TMPFS(dvp->v_mount);
  pnode = dnode->tn_dir.tn_parent;
  tmpfs_ref_node(pnode);
  error = vn_vget_ino_gen(dvp, tmpfs_vn_get_ino_alloc,
      pnode, cnp->cn_lkflags, vpp);
  tmpfs_free_node(tm, pnode);
  if (error != 0)
   goto out;
 } else if (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.') {
  VREF(dvp);
  *vpp = dvp;
  error = 0;
 } else {
  de = tmpfs_dir_lookup(dnode, ((void*)0), cnp);
  if (de != ((void*)0) && de->td_node == ((void*)0))
   cnp->cn_flags |= ISWHITEOUT;
  if (de == ((void*)0) || de->td_node == ((void*)0)) {






   if ((cnp->cn_flags & ISLASTCN) &&
       (cnp->cn_nameiop == CREATE || cnp->cn_nameiop == RENAME ||

       (cnp->cn_nameiop == DELETE &&
       cnp->cn_flags & DOWHITEOUT &&
       cnp->cn_flags & ISWHITEOUT))) {
    error = VOP_ACCESS(dvp, VWRITE, cnp->cn_cred,
        cnp->cn_thread);
    if (error != 0)
     goto out;





    cnp->cn_flags |= SAVENAME;

    error = EJUSTRETURN;
   } else
    error = ENOENT;
  } else {
   struct tmpfs_node *tnode;





   tnode = de->td_node;







   if ((tnode->tn_type != VDIR &&
       tnode->tn_type != VLNK) &&
       !(cnp->cn_flags & ISLASTCN)) {
    error = ENOTDIR;
    goto out;
   }






   if ((cnp->cn_flags & ISLASTCN) &&
       (cnp->cn_nameiop == DELETE ||
       cnp->cn_nameiop == RENAME)) {
    error = VOP_ACCESS(dvp, VWRITE, cnp->cn_cred,
        cnp->cn_thread);
    if (error != 0)
     goto out;


    error = tmpfs_alloc_vp(dvp->v_mount, tnode,
        cnp->cn_lkflags, vpp);
    if (error != 0)
     goto out;

    if ((dnode->tn_mode & S_ISTXT) &&
      VOP_ACCESS(dvp, VADMIN, cnp->cn_cred,
      cnp->cn_thread) && VOP_ACCESS(*vpp, VADMIN,
      cnp->cn_cred, cnp->cn_thread)) {
     error = EPERM;
     vput(*vpp);
     *vpp = ((void*)0);
     goto out;
    }
    cnp->cn_flags |= SAVENAME;
   } else {
    error = tmpfs_alloc_vp(dvp->v_mount, tnode,
        cnp->cn_lkflags, vpp);
    if (error != 0)
     goto out;
   }
  }
 }






 if ((cnp->cn_flags & MAKEENTRY) != 0 && tmpfs_use_nc(dvp))
  cache_enter(dvp, *vpp, cnp);

out:




 MPASS(IFF(error == 0, *vpp != NULLVP && VOP_ISLOCKED(*vpp)));

 return (error);
}
