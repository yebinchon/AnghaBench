
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_quad_t ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {TYPE_1__ v_bufobj; } ;
struct nfsnode {int n_size; } ;
typedef int off_t ;
typedef scalar_t__ daddr_t ;


 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;

__attribute__((used)) static int
ncl_gbp_getblksz(struct vnode *vp, daddr_t lbn)
{
 struct nfsnode *np;
 u_quad_t nsize;
 int biosize, bcount;

 np = VTONFS(vp);
 NFSLOCKNODE(np);
 nsize = np->n_size;
 NFSUNLOCKNODE(np);

 biosize = vp->v_bufobj.bo_bsize;
 bcount = biosize;
 if ((off_t)lbn * biosize >= nsize)
  bcount = 0;
 else if ((off_t)(lbn + 1) * biosize > nsize)
  bcount = nsize - (off_t)lbn * biosize;
 return (bcount);
}
