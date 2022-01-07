
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; int v_interlock; int v_vnlock; int v_rl; } ;


 int BO_LOCKPTR (struct bufobj*) ;
 int lockdestroy (int ) ;
 int mtx_destroy (int *) ;
 int rangelock_destroy (int *) ;
 int rw_destroy (int ) ;

__attribute__((used)) static void
vnode_fini(void *mem, int size)
{
 struct vnode *vp;
 struct bufobj *bo;

 vp = mem;
 rangelock_destroy(&vp->v_rl);
 lockdestroy(vp->v_vnlock);
 mtx_destroy(&vp->v_interlock);
 bo = &vp->v_bufobj;
 rw_destroy(BO_LOCKPTR(bo));
}
