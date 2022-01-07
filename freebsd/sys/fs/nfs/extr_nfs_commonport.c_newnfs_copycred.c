
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_uid; } ;
struct nfscred {scalar_t__ nfsc_ngroups; int nfsc_groups; int nfsc_uid; } ;


 int KASSERT (int,char*) ;
 int crsetgroups (struct ucred*,scalar_t__,int ) ;

void
newnfs_copycred(struct nfscred *nfscr, struct ucred *cr)
{

 KASSERT(nfscr->nfsc_ngroups >= 0,
     ("newnfs_copycred: negative nfsc_ngroups"));
 cr->cr_uid = nfscr->nfsc_uid;
 crsetgroups(cr, nfscr->nfsc_ngroups, nfscr->nfsc_groups);
}
