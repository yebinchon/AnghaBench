
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_lookup_alloc_arg {int vtyp; int cnp; int nid; int feo; } ;


 int fuse_vnode_get (struct mount*,int ,int ,int *,struct vnode**,int ,int ) ;

__attribute__((used)) static int
fuse_lookup_alloc(struct mount *mp, void *arg, int lkflags, struct vnode **vpp)
{
 struct fuse_lookup_alloc_arg *flaa = arg;

 return fuse_vnode_get(mp, flaa->feo, flaa->nid, ((void*)0), vpp, flaa->cnp,
  flaa->vtyp);
}
