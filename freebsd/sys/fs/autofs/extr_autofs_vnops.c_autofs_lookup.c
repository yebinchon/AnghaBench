
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_lookup_args {struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {struct autofs_node* v_data; struct mount* v_mount; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; scalar_t__ cn_nameiop; int cn_lkflags; int cn_thread; } ;
struct autofs_node {int * an_parent; } ;
struct autofs_mount {int dummy; } ;


 int AUTOFS_SLOCK (struct autofs_mount*) ;
 int AUTOFS_SUNLOCK (struct autofs_mount*) ;
 int AUTOFS_WARN (char*,int) ;
 scalar_t__ CREATE ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ERELOOKUP ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int KASSERT (int ,char*) ;
 struct autofs_mount* VFSTOAUTOFS (struct mount*) ;
 int autofs_cached (struct autofs_node*,char*,int) ;
 int autofs_ignore_thread (int ) ;
 int autofs_node_find (struct autofs_node*,char*,int,struct autofs_node**) ;
 int autofs_node_vn (struct autofs_node*,struct mount*,int ,struct vnode**) ;
 int autofs_trigger_vn (struct vnode*,char*,int,struct vnode**) ;
 int autofs_vget_callback ;
 int vn_vget_ino_gen (struct vnode*,int ,int *,int ,struct vnode**) ;
 int vput (struct vnode*) ;
 int vref (struct vnode*) ;

__attribute__((used)) static int
autofs_lookup(struct vop_lookup_args *ap)
{
 struct vnode *dvp, *newvp, **vpp;
 struct mount *mp;
 struct autofs_mount *amp;
 struct autofs_node *anp, *child;
 struct componentname *cnp;
 int error;

 dvp = ap->a_dvp;
 vpp = ap->a_vpp;
 mp = dvp->v_mount;
 amp = VFSTOAUTOFS(mp);
 anp = dvp->v_data;
 cnp = ap->a_cnp;

 if (cnp->cn_flags & ISDOTDOT) {
  KASSERT(anp->an_parent != ((void*)0), ("NULL parent"));







  error = vn_vget_ino_gen(dvp, autofs_vget_callback,
      anp->an_parent, cnp->cn_lkflags, vpp);
  if (error != 0) {
   AUTOFS_WARN("vn_vget_ino_gen() failed with error %d",
       error);
   return (error);
  }
  return (error);
 }

 if (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.') {
  vref(dvp);
  *vpp = dvp;

  return (0);
 }

 if (autofs_cached(anp, cnp->cn_nameptr, cnp->cn_namelen) == 0 &&
     autofs_ignore_thread(cnp->cn_thread) == 0) {
  error = autofs_trigger_vn(dvp,
      cnp->cn_nameptr, cnp->cn_namelen, &newvp);
  if (error != 0)
   return (error);

  if (newvp != ((void*)0)) {





   vput(newvp);
   return (ERELOOKUP);
  }
 }

 AUTOFS_SLOCK(amp);
 error = autofs_node_find(anp, cnp->cn_nameptr, cnp->cn_namelen, &child);
 if (error != 0) {
  if ((cnp->cn_flags & ISLASTCN) && cnp->cn_nameiop == CREATE) {
   AUTOFS_SUNLOCK(amp);
   return (EJUSTRETURN);
  }

  AUTOFS_SUNLOCK(amp);
  return (ENOENT);
 }




 AUTOFS_SUNLOCK(amp);

 error = autofs_node_vn(child, mp, cnp->cn_lkflags, vpp);
 if (error != 0) {
  if ((cnp->cn_flags & ISLASTCN) && cnp->cn_nameiop == CREATE)
   return (EJUSTRETURN);

  return (error);
 }

 return (0);
}
