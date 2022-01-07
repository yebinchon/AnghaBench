
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; TYPE_1__* n_accesscache; } ;
struct TYPE_2__ {scalar_t__ stamp; } ;


 int KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE (struct vnode*) ;
 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFS_ACCESSCACHESIZE ;
 struct nfsnode* VTONFS (struct vnode*) ;

void
ncl_invalcaches(struct vnode *vp)
{
 struct nfsnode *np = VTONFS(vp);
 int i;

 NFSLOCKNODE(np);
 for (i = 0; i < NFS_ACCESSCACHESIZE; i++)
  np->n_accesscache[i].stamp = 0;
 KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE(vp);
 np->n_attrstamp = 0;
 KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(vp);
 NFSUNLOCKNODE(np);
}
