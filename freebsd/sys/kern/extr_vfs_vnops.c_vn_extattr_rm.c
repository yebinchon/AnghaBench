
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EOPNOTSUPP ;
 int IO_NODELOCKED ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int VOP_DELETEEXTATTR (struct vnode*,int,char const*,int *,struct thread*) ;
 int VOP_SETEXTATTR (struct vnode*,int,char const*,int *,int *,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;

int
vn_extattr_rm(struct vnode *vp, int ioflg, int attrnamespace,
    const char *attrname, struct thread *td)
{
 struct mount *mp;
 int error;

 if ((ioflg & IO_NODELOCKED) == 0) {
  if ((error = vn_start_write(vp, &mp, V_WAIT)) != 0)
   return (error);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 }

 ASSERT_VOP_LOCKED(vp, "IO_NODELOCKED with no vp lock held");


 error = VOP_DELETEEXTATTR(vp, attrnamespace, attrname, ((void*)0), td);
 if (error == EOPNOTSUPP)
  error = VOP_SETEXTATTR(vp, attrnamespace, attrname, ((void*)0),
      ((void*)0), td);

 if ((ioflg & IO_NODELOCKED) == 0) {
  vn_finished_write(mp);
  VOP_UNLOCK(vp, 0);
 }

 return (error);
}
