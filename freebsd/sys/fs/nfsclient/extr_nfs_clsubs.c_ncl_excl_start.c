
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct nfsnode {int n_excl; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_SHARED ;
 int NFSVOPISLOCKED (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int lockmgr (int *,int,int *) ;

bool
ncl_excl_start(struct vnode *vp)
{
 struct nfsnode *np;
 int vn_lk;

 ASSERT_VOP_LOCKED(vp, "ncl_excl_start");
 vn_lk = NFSVOPISLOCKED(vp);
 if (vn_lk == LK_EXCLUSIVE)
  return (0);
 KASSERT(vn_lk == LK_SHARED,
     ("ncl_excl_start: wrong vnode lock %d", vn_lk));

 np = VTONFS(vp);
 lockmgr(&np->n_excl, LK_EXCLUSIVE, ((void*)0));
 return (1);
}
