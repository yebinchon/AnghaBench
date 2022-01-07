
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef scalar_t__ u_int64_t ;
struct ucred {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfsfh {int nfh_len; int nfh_fh; } ;
struct nfscllockowner {int nfsl_openowner; int nfsl_owner; int nfsl_lockflags; } ;
struct nfscllock {int nfslo_type; scalar_t__ nfslo_first; scalar_t__ nfslo_end; } ;
struct nfsclclient {int dummy; } ;
struct TYPE_2__ {struct nfsfh* n_fhp; } ;
typedef int NFSPROC_T ;


 TYPE_1__* VTONFS (int ) ;
 int nfscl_freelockowner (struct nfscllockowner*,int ) ;
 int nfscl_getbytelock (int ,scalar_t__,scalar_t__,int ,struct ucred*,int *,struct nfsclclient*,int,int *,int ,int ,int ,struct nfscllockowner**,int*,int*) ;
 int nfscl_trylock (struct nfsmount*,int ,int ,int ,struct nfscllockowner*,int,int ,scalar_t__,scalar_t__,int ,struct ucred*,int *) ;

__attribute__((used)) static int
nfscl_relock(vnode_t vp, struct nfsclclient *clp, struct nfsmount *nmp,
    struct nfscllockowner *lp, struct nfscllock *lop, struct ucred *cred,
    NFSPROC_T *p)
{
 struct nfscllockowner *nlp;
 struct nfsfh *nfhp;
 u_int64_t off, len;
 int error, newone, donelocally;

 off = lop->nfslo_first;
 len = lop->nfslo_end - lop->nfslo_first;
 error = nfscl_getbytelock(vp, off, len, lop->nfslo_type, cred, p,
     clp, 1, ((void*)0), lp->nfsl_lockflags, lp->nfsl_owner,
     lp->nfsl_openowner, &nlp, &newone, &donelocally);
 if (error || donelocally)
  return (error);
 nfhp = VTONFS(vp)->n_fhp;
 error = nfscl_trylock(nmp, vp, nfhp->nfh_fh,
     nfhp->nfh_len, nlp, newone, 0, off,
     len, lop->nfslo_type, cred, p);
 if (error)
  nfscl_freelockowner(nlp, 0);
 return (error);
}
