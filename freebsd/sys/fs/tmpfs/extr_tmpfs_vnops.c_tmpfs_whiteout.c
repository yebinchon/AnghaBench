
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_whiteout_args {int a_flags; struct componentname* a_cnp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct tmpfs_dirent {int * td_node; } ;
struct componentname {int dummy; } ;




 int EEXIST ;

 int VP_TO_TMPFS_DIR (struct vnode*) ;
 int panic (char*) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (int ,int *,struct componentname*) ;
 int tmpfs_dir_whiteout_add (struct vnode*,struct componentname*) ;
 int tmpfs_dir_whiteout_remove (struct vnode*,struct componentname*) ;

__attribute__((used)) static int
tmpfs_whiteout(struct vop_whiteout_args *ap)
{
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct tmpfs_dirent *de;

 switch (ap->a_flags) {
 case 128:
  return (0);
 case 130:
  de = tmpfs_dir_lookup(VP_TO_TMPFS_DIR(dvp), ((void*)0), cnp);
  if (de != ((void*)0))
   return (de->td_node == ((void*)0) ? 0 : EEXIST);
  return (tmpfs_dir_whiteout_add(dvp, cnp));
 case 129:
  tmpfs_dir_whiteout_remove(dvp, cnp);
  return (0);
 default:
  panic("tmpfs_whiteout: unknown op");
 }
}
