
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int VOP_GETWRITEMOUNT (struct vnode*,struct mount**) ;
 int V_MNTREF ;
 int vfs_ref (struct mount*) ;
 int vfs_rel (struct mount*) ;
 int vn_start_write_refed (struct mount*,int,int) ;
 int vn_suspendable (struct mount*) ;

int
vn_start_write(struct vnode *vp, struct mount **mpp, int flags)
{
 struct mount *mp;
 int error;

 KASSERT((flags & V_MNTREF) == 0 || (*mpp != ((void*)0) && vp == ((void*)0)),
     ("V_MNTREF requires mp"));

 error = 0;




 if (vp != ((void*)0)) {
  if ((error = VOP_GETWRITEMOUNT(vp, mpp)) != 0) {
   *mpp = ((void*)0);
   if (error != EOPNOTSUPP)
    return (error);
   return (0);
  }
 }
 if ((mp = *mpp) == ((void*)0))
  return (0);

 if (!vn_suspendable(mp)) {
  if (vp != ((void*)0) || (flags & V_MNTREF) != 0)
   vfs_rel(mp);
  return (0);
 }
 if (vp == ((void*)0) && (flags & V_MNTREF) == 0)
  vfs_ref(mp);

 return (vn_start_write_refed(mp, flags, 0));
}
