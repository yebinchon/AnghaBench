
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_rl; int v_cache_dst; int v_cache_src; int v_bufobj; int * v_vnlock; int v_interlock; int v_lock; } ;


 int LIST_INIT (int *) ;
 int LK_IS_VNODE ;
 int LK_NOSHARE ;
 int MTX_DEF ;
 int PVFS ;
 int TAILQ_INIT (int *) ;
 int VLKTIMEOUT ;
 int bufobj_init (int *,struct vnode*) ;
 int bzero (struct vnode*,int) ;
 int lockinit (int *,int ,char*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rangelock_init (int *) ;

__attribute__((used)) static int
vnode_init(void *mem, int size, int flags)
{
 struct vnode *vp;

 vp = mem;
 bzero(vp, size);



 vp->v_vnlock = &vp->v_lock;
 mtx_init(&vp->v_interlock, "vnode interlock", ((void*)0), MTX_DEF);



 lockinit(vp->v_vnlock, PVFS, "vnode", VLKTIMEOUT,
     LK_NOSHARE | LK_IS_VNODE);



 bufobj_init(&vp->v_bufobj, vp);



 LIST_INIT(&vp->v_cache_src);
 TAILQ_INIT(&vp->v_cache_dst);



 rangelock_init(&vp->v_rl);
 return (0);
}
