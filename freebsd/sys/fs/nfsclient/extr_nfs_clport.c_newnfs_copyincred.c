
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_ngroups; int * cr_groups; int cr_uid; } ;
struct nfscred {int nfsc_ngroups; int * nfsc_groups; int nfsc_uid; } ;


 int KASSERT (int,char*) ;
 int MIN (scalar_t__,scalar_t__) ;
 scalar_t__ NFS_MAXGRPS ;

void
newnfs_copyincred(struct ucred *cr, struct nfscred *nfscr)
{
 int i;

 KASSERT(cr->cr_ngroups >= 0,
     ("newnfs_copyincred: negative cr_ngroups"));
 nfscr->nfsc_uid = cr->cr_uid;
 nfscr->nfsc_ngroups = MIN(cr->cr_ngroups, NFS_MAXGRPS + 1);
 for (i = 0; i < nfscr->nfsc_ngroups; i++)
  nfscr->nfsc_groups[i] = cr->cr_groups[i];
}
