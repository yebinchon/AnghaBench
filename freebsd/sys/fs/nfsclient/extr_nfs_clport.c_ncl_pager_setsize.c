
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_4__* vm_object_t ;
typedef scalar_t__ u_quad_t ;
struct vnode {TYPE_4__* v_object; } ;
struct vattr {scalar_t__ va_size; } ;
struct TYPE_5__ {struct vattr na_vattr; } ;
struct nfsnode {int n_flag; TYPE_1__ n_vattr; } ;
struct TYPE_6__ {scalar_t__ vnp_size; } ;
struct TYPE_7__ {TYPE_2__ vnp; } ;
struct TYPE_8__ {TYPE_3__ un_pager; } ;


 scalar_t__ LK_EXCLUSIVE ;
 int NFSASSERTNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NVNSETSZSKIP ;
 scalar_t__ VOP_ISLOCKED (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int vnode_pager_setsize (struct vnode*,scalar_t__) ;

bool
ncl_pager_setsize(struct vnode *vp, u_quad_t *nsizep)
{
 struct nfsnode *np;
 vm_object_t object;
 struct vattr *vap;
 u_quad_t nsize;
 bool setnsize;

 np = VTONFS(vp);
 NFSASSERTNODE(np);

 vap = &np->n_vattr.na_vattr;
 nsize = vap->va_size;
 object = vp->v_object;
 setnsize = 0;

 if (object != ((void*)0) && nsize != object->un_pager.vnp.vnp_size) {
  if (VOP_ISLOCKED(vp) == LK_EXCLUSIVE)
   setnsize = 1;
  else
   np->n_flag |= NVNSETSZSKIP;
 }
 if (nsizep == ((void*)0)) {
  NFSUNLOCKNODE(np);
  if (setnsize)
   vnode_pager_setsize(vp, nsize);
  setnsize = 0;
 } else {
  *nsizep = nsize;
 }
 return (setnsize);
}
