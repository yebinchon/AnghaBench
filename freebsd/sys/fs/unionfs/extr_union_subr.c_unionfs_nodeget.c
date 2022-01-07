
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_type; int v_vflag; struct unionfs_node* v_data; int v_vnlock; } ;
struct unionfs_node {char* un_path; struct vnode* un_dvp; struct vnode* un_lowervp; struct vnode* un_uppervp; struct vnode* un_vnode; int un_hashmask; int un_hashtbl; } ;
struct unionfs_mount {struct vnode* um_lowervp; struct vnode* um_uppervp; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {int cn_lkflags; char* cn_nameptr; int cn_flags; int cn_namelen; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int EINVAL ;
 int ISLASTCN ;
 int LK_RETRY ;
 int LK_TYPE_MASK ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int M_UNIONFSHASH ;
 int M_UNIONFSNODE ;
 int M_UNIONFSPATH ;
 int M_WAITOK ;
 int M_ZERO ;
 struct vnode* NULLVP ;
 int NUNIONFSNODECACHE ;
 int VDIR ;
 int VV_ROOT ;
 int bcopy (char*,char*,int) ;
 int free (struct unionfs_node*,int ) ;
 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 int hashinit (int ,int ,int *) ;
 int insmntque (struct vnode*,struct mount*) ;
 struct unionfs_node* malloc (int,int ,int) ;
 int panic (char*) ;
 struct vnode* unionfs_get_cached_vnode (struct vnode*,struct vnode*,struct vnode*,char*) ;
 struct vnode* unionfs_ins_cached_vnode (struct unionfs_node*,struct vnode*,char*) ;
 int unionfs_vnodeops ;
 int vn_lock (struct vnode*,int) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

int
unionfs_nodeget(struct mount *mp, struct vnode *uppervp,
  struct vnode *lowervp, struct vnode *dvp,
  struct vnode **vpp, struct componentname *cnp,
  struct thread *td)
{
 struct unionfs_mount *ump;
 struct unionfs_node *unp;
 struct vnode *vp;
 int error;
 int lkflags;
 enum vtype vt;
 char *path;

 ump = MOUNTTOUNIONFSMOUNT(mp);
 lkflags = (cnp ? cnp->cn_lkflags : 0);
 path = (cnp ? cnp->cn_nameptr : ((void*)0));
 *vpp = NULLVP;

 if (uppervp == NULLVP && lowervp == NULLVP)
  panic("unionfs_nodeget: upper and lower is null");

 vt = (uppervp != NULLVP ? uppervp->v_type : lowervp->v_type);


 if (cnp && !(cnp->cn_flags & ISLASTCN))
  path = ((void*)0);


 if (path != ((void*)0) && dvp != NULLVP && vt == VDIR) {
  vp = unionfs_get_cached_vnode(uppervp, lowervp, dvp, path);
  if (vp != NULLVP) {
   vref(vp);
   *vpp = vp;
   goto unionfs_nodeget_out;
  }
 }

 if ((uppervp == NULLVP || ump->um_uppervp != uppervp) ||
     (lowervp == NULLVP || ump->um_lowervp != lowervp)) {

  if (dvp == NULLVP)
   return (EINVAL);
 }
 unp = malloc(sizeof(struct unionfs_node),
     M_UNIONFSNODE, M_WAITOK | M_ZERO);

 error = getnewvnode("unionfs", mp, &unionfs_vnodeops, &vp);
 if (error != 0) {
  free(unp, M_UNIONFSNODE);
  return (error);
 }
 error = insmntque(vp, mp);
 if (error != 0) {
  free(unp, M_UNIONFSNODE);
  return (error);
 }
 if (dvp != NULLVP)
  vref(dvp);
 if (uppervp != NULLVP)
  vref(uppervp);
 if (lowervp != NULLVP)
  vref(lowervp);

 if (vt == VDIR)
  unp->un_hashtbl = hashinit(NUNIONFSNODECACHE, M_UNIONFSHASH,
      &(unp->un_hashmask));

 unp->un_vnode = vp;
 unp->un_uppervp = uppervp;
 unp->un_lowervp = lowervp;
 unp->un_dvp = dvp;
 if (uppervp != NULLVP)
  vp->v_vnlock = uppervp->v_vnlock;
 else
  vp->v_vnlock = lowervp->v_vnlock;

 if (path != ((void*)0)) {
  unp->un_path = (char *)
      malloc(cnp->cn_namelen +1, M_UNIONFSPATH, M_WAITOK|M_ZERO);
  bcopy(cnp->cn_nameptr, unp->un_path, cnp->cn_namelen);
  unp->un_path[cnp->cn_namelen] = '\0';
 }
 vp->v_type = vt;
 vp->v_data = unp;

 if ((uppervp != NULLVP && ump->um_uppervp == uppervp) &&
     (lowervp != NULLVP && ump->um_lowervp == lowervp))
  vp->v_vflag |= VV_ROOT;

 if (path != ((void*)0) && dvp != NULLVP && vt == VDIR)
  *vpp = unionfs_ins_cached_vnode(unp, dvp, path);
 if ((*vpp) != NULLVP) {
  if (dvp != NULLVP)
   vrele(dvp);
  if (uppervp != NULLVP)
   vrele(uppervp);
  if (lowervp != NULLVP)
   vrele(lowervp);

  unp->un_uppervp = NULLVP;
  unp->un_lowervp = NULLVP;
  unp->un_dvp = NULLVP;
  vrele(vp);
  vp = *vpp;
  vref(vp);
 } else
  *vpp = vp;

unionfs_nodeget_out:
 if (lkflags & LK_TYPE_MASK)
  vn_lock(vp, lkflags | LK_RETRY);

 return (0);
}
