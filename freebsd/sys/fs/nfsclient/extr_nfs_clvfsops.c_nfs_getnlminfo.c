
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
typedef struct sockaddr_storage uint8_t ;
struct vnode {int v_mount; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct nfsnode {int n_size; TYPE_1__* n_fhp; } ;
struct nfsmount {int nm_timeo; TYPE_2__* nm_nam; } ;
typedef int off_t ;
struct TYPE_4__ {int sa_len; } ;
struct TYPE_3__ {scalar_t__ nfh_len; TYPE_2__* nfh_fh; } ;


 int NFS_HZ ;
 int NFS_ISV3 (struct vnode*) ;
 struct nfsmount* VFSTONFS (int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int bcopy (TYPE_2__*,struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ min (int ,int) ;

__attribute__((used)) static void
nfs_getnlminfo(struct vnode *vp, uint8_t *fhp, size_t *fhlenp,
    struct sockaddr_storage *sp, int *is_v3p, off_t *sizep,
    struct timeval *timeop)
{
 struct nfsmount *nmp;
 struct nfsnode *np = VTONFS(vp);

 nmp = VFSTONFS(vp->v_mount);
 if (fhlenp != ((void*)0))
  *fhlenp = (size_t)np->n_fhp->nfh_len;
 if (fhp != ((void*)0))
  bcopy(np->n_fhp->nfh_fh, fhp, np->n_fhp->nfh_len);
 if (sp != ((void*)0))
  bcopy(nmp->nm_nam, sp, min(nmp->nm_nam->sa_len, sizeof(*sp)));
 if (is_v3p != ((void*)0))
  *is_v3p = NFS_ISV3(vp);
 if (sizep != ((void*)0))
  *sizep = np->n_size;
 if (timeop != ((void*)0)) {
  timeop->tv_sec = nmp->nm_timeo / NFS_HZ;
  timeop->tv_usec = (nmp->nm_timeo % NFS_HZ) * (1000000 / NFS_HZ);
 }
}
