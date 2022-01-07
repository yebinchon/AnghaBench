
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct nfsnode {TYPE_1__* n_fhp; } ;
struct nfsfh {scalar_t__ nfh_len; int nfh_fh; } ;
struct TYPE_2__ {scalar_t__ nfh_len; int nfh_fh; } ;


 scalar_t__ NFSBCMP (int ,int ,scalar_t__) ;
 struct nfsnode* VTONFS (struct vnode*) ;

int
newnfs_vncmpf(struct vnode *vp, void *arg)
{
 struct nfsfh *nfhp = (struct nfsfh *)arg;
 struct nfsnode *np = VTONFS(vp);

 if (np->n_fhp->nfh_len != nfhp->nfh_len ||
     NFSBCMP(np->n_fhp->nfh_fh, nfhp->nfh_fh, nfhp->nfh_len))
  return (1);
 return (0);
}
