
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_rename_args {struct componentname* a_tcnp; struct vnode* a_tvp; struct vnode* a_tdvp; struct componentname* a_fcnp; struct vnode* a_fvp; struct vnode* a_fdvp; } ;
struct vnode {struct mount* v_mount; } ;
struct TYPE_3__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {int tn_flags; scalar_t__ tn_type; scalar_t__ tn_size; int tn_status; int tn_links; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct TYPE_4__ {char* td_name; } ;
struct tmpfs_dirent {TYPE_2__ ud; struct tmpfs_node* td_node; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; } ;


 int APPEND ;
 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int DOWHITEOUT ;
 int EINVAL ;
 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int EPERM ;
 int EXDEV ;
 int HASBUF ;
 int IMMUTABLE ;
 int IMPLIES (int ,int) ;
 int ISDOTDOT ;
 int ISWHITEOUT ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int MAXNAMLEN ;
 int MPASS (int) ;
 int M_TMPFSNAME ;
 int M_WAITOK ;
 int NOUNLINK ;
 int TMPFS_ASSERT_LOCKED (struct tmpfs_node*) ;
 int TMPFS_LOCK (struct tmpfs_mount*) ;
 int TMPFS_NODE_CHANGED ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_MODIFIED ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 int TMPFS_UNLOCK (struct tmpfs_mount*) ;
 int TMPFS_VALIDATE_DIR (struct tmpfs_node*) ;
 scalar_t__ VDIR ;
 struct tmpfs_mount* VFS_TO_TMPFS (struct mount*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct tmpfs_node* VP_TO_TMPFS_DIR (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 scalar_t__ bcmp (char*,char*,int) ;
 int cache_purge (struct vnode*) ;
 int cache_purge_negative (struct vnode*) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 int tmpfs_dir_attach (struct vnode*,struct tmpfs_dirent*) ;
 int tmpfs_dir_detach (struct vnode*,struct tmpfs_dirent*) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (struct tmpfs_node*,struct tmpfs_node*,struct componentname*) ;
 int tmpfs_dir_whiteout_add (struct vnode*,struct componentname*) ;
 int tmpfs_dir_whiteout_remove (struct vnode*,struct componentname*) ;
 int tmpfs_dirent_init (struct tmpfs_dirent*,char*,int) ;
 int tmpfs_free_dirent (struct tmpfs_mount*,struct tmpfs_dirent*) ;
 int tmpfs_rename_relock (struct vnode*,struct vnode**,struct vnode*,struct vnode**,struct componentname*,struct componentname*) ;
 scalar_t__ tmpfs_use_nc (struct vnode*) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 scalar_t__ vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
tmpfs_rename(struct vop_rename_args *v)
{
 struct vnode *fdvp = v->a_fdvp;
 struct vnode *fvp = v->a_fvp;
 struct componentname *fcnp = v->a_fcnp;
 struct vnode *tdvp = v->a_tdvp;
 struct vnode *tvp = v->a_tvp;
 struct componentname *tcnp = v->a_tcnp;
 struct mount *mp = ((void*)0);
 char *newname;
 struct tmpfs_dirent *de;
 struct tmpfs_mount *tmp;
 struct tmpfs_node *fdnode;
 struct tmpfs_node *fnode;
 struct tmpfs_node *tnode;
 struct tmpfs_node *tdnode;
 int error;

 MPASS(VOP_ISLOCKED(tdvp));
 MPASS(IMPLIES(tvp != ((void*)0), VOP_ISLOCKED(tvp)));
 MPASS(fcnp->cn_flags & HASBUF);
 MPASS(tcnp->cn_flags & HASBUF);





 if (fvp->v_mount != tdvp->v_mount ||
     (tvp != ((void*)0) && fvp->v_mount != tvp->v_mount)) {
  error = EXDEV;
  goto out;
 }


 if (fvp == tvp) {
  error = 0;
  goto out;
 }





 if (fdvp != tdvp && fdvp != tvp) {
  if (vn_lock(fdvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
   mp = tdvp->v_mount;
   error = vfs_busy(mp, 0);
   if (error != 0) {
    mp = ((void*)0);
    goto out;
   }
   error = tmpfs_rename_relock(fdvp, &fvp, tdvp, &tvp,
       fcnp, tcnp);
   if (error != 0) {
    vfs_unbusy(mp);
    return (error);
   }
   ASSERT_VOP_ELOCKED(fdvp,
       "tmpfs_rename: fdvp not locked");
   ASSERT_VOP_ELOCKED(tdvp,
       "tmpfs_rename: tdvp not locked");
   if (tvp != ((void*)0))
    ASSERT_VOP_ELOCKED(tvp,
        "tmpfs_rename: tvp not locked");
   if (fvp == tvp) {
    error = 0;
    goto out_locked;
   }
  }
 }

 tmp = VFS_TO_TMPFS(tdvp->v_mount);
 tdnode = VP_TO_TMPFS_DIR(tdvp);
 tnode = (tvp == ((void*)0)) ? ((void*)0) : VP_TO_TMPFS_NODE(tvp);
 fdnode = VP_TO_TMPFS_DIR(fdvp);
 fnode = VP_TO_TMPFS_NODE(fvp);
 de = tmpfs_dir_lookup(fdnode, fnode, fcnp);





 if (de == ((void*)0)) {
  if ((fcnp->cn_flags & ISDOTDOT) != 0 ||
      (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.'))
   error = EINVAL;
  else
   error = ENOENT;
  goto out_locked;
 }
 MPASS(de->td_node == fnode);
 if (tvp != ((void*)0)) {
  MPASS(tnode != ((void*)0));

  if ((tnode->tn_flags & (NOUNLINK | IMMUTABLE | APPEND)) ||
      (tdnode->tn_flags & (APPEND | IMMUTABLE))) {
   error = EPERM;
   goto out_locked;
  }

  if (fnode->tn_type == VDIR && tnode->tn_type == VDIR) {
   if (tnode->tn_size > 0) {
    error = ENOTEMPTY;
    goto out_locked;
   }
  } else if (fnode->tn_type == VDIR && tnode->tn_type != VDIR) {
   error = ENOTDIR;
   goto out_locked;
  } else if (fnode->tn_type != VDIR && tnode->tn_type == VDIR) {
   error = EISDIR;
   goto out_locked;
  } else {
   MPASS(fnode->tn_type != VDIR &&
    tnode->tn_type != VDIR);
  }
 }

 if ((fnode->tn_flags & (NOUNLINK | IMMUTABLE | APPEND))
     || (fdnode->tn_flags & (APPEND | IMMUTABLE))) {
  error = EPERM;
  goto out_locked;
 }





 if (fcnp->cn_namelen != tcnp->cn_namelen ||
     bcmp(fcnp->cn_nameptr, tcnp->cn_nameptr, fcnp->cn_namelen) != 0) {
  newname = malloc(tcnp->cn_namelen, M_TMPFSNAME, M_WAITOK);
 } else
  newname = ((void*)0);





 if (fdnode != tdnode) {




  if (de->td_node->tn_type == VDIR) {
   struct tmpfs_node *n;






   n = tdnode;





   TMPFS_LOCK(tmp);
   TMPFS_NODE_LOCK(n);
   while (n != n->tn_dir.tn_parent) {
    struct tmpfs_node *parent;

    if (n == fnode) {
     TMPFS_NODE_UNLOCK(n);
     TMPFS_UNLOCK(tmp);
     error = EINVAL;
     if (newname != ((void*)0))
          free(newname, M_TMPFSNAME);
     goto out_locked;
    }
    parent = n->tn_dir.tn_parent;
    TMPFS_NODE_UNLOCK(n);
    if (parent == ((void*)0)) {
     n = ((void*)0);
     break;
    }
    TMPFS_NODE_LOCK(parent);
    if (parent->tn_dir.tn_parent == ((void*)0)) {
     TMPFS_NODE_UNLOCK(parent);
     n = ((void*)0);
     break;
    }
    n = parent;
   }
   TMPFS_UNLOCK(tmp);
   if (n == ((void*)0)) {
    error = EINVAL;
    if (newname != ((void*)0))
         free(newname, M_TMPFSNAME);
    goto out_locked;
   }
   TMPFS_NODE_UNLOCK(n);


   TMPFS_VALIDATE_DIR(fnode);
   TMPFS_NODE_LOCK(de->td_node);
   de->td_node->tn_dir.tn_parent = tdnode;
   TMPFS_NODE_UNLOCK(de->td_node);






   TMPFS_NODE_LOCK(tdnode);
   TMPFS_ASSERT_LOCKED(tdnode);
   tdnode->tn_links++;
   TMPFS_NODE_UNLOCK(tdnode);

   TMPFS_NODE_LOCK(fdnode);
   TMPFS_ASSERT_LOCKED(fdnode);
   fdnode->tn_links--;
   TMPFS_NODE_UNLOCK(fdnode);
  }
 }





 tmpfs_dir_detach(fdvp, de);

 if (fcnp->cn_flags & DOWHITEOUT)
  tmpfs_dir_whiteout_add(fdvp, fcnp);
 if (tcnp->cn_flags & ISWHITEOUT)
  tmpfs_dir_whiteout_remove(tdvp, tcnp);





 if (newname != ((void*)0)) {
  MPASS(tcnp->cn_namelen <= MAXNAMLEN);

  free(de->ud.td_name, M_TMPFSNAME);
  de->ud.td_name = newname;
  tmpfs_dirent_init(de, tcnp->cn_nameptr, tcnp->cn_namelen);

  fnode->tn_status |= TMPFS_NODE_CHANGED;
  tdnode->tn_status |= TMPFS_NODE_MODIFIED;
 }





 if (tvp != ((void*)0)) {
  struct tmpfs_dirent *tde;


  tde = tmpfs_dir_lookup(tdnode, tnode, tcnp);
  tmpfs_dir_detach(tdvp, tde);






  tmpfs_free_dirent(VFS_TO_TMPFS(tvp->v_mount), tde);
 }

 tmpfs_dir_attach(tdvp, de);

 if (tmpfs_use_nc(fvp)) {
  cache_purge(fvp);
  if (tvp != ((void*)0))
   cache_purge(tvp);
  cache_purge_negative(tdvp);
 }

 error = 0;

out_locked:
 if (fdvp != tdvp && fdvp != tvp)
  VOP_UNLOCK(fdvp, 0);

out:





 if (tdvp == tvp)
  vrele(tdvp);
 else
  vput(tdvp);
 if (tvp != ((void*)0))
  vput(tvp);


 vrele(fdvp);
 vrele(fvp);

 if (mp != ((void*)0))
  vfs_unbusy(mp);

 return (error);
}
