
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct nfsnode {int n_excl; } ;


 int LK_RELEASE ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int lockmgr (int *,int ,int *) ;

void
ncl_excl_finish(struct vnode *vp, bool old_lock)
{
 struct nfsnode *np;

 if (!old_lock)
  return;
 np = VTONFS(vp);
 lockmgr(&np->n_excl, LK_RELEASE, ((void*)0));
}
