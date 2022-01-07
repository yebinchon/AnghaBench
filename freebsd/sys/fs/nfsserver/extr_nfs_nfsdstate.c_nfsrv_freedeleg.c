
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsstate {int ls_flags; struct nfslockfile* ls_lfp; } ;
struct nfslockfile {scalar_t__ lf_usecount; int lf_locallock_lck; int lf_rollback; int lf_locallock; int lf_deleg; int lf_lock; int lf_open; } ;
struct TYPE_2__ {int srvdelegates; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct nfsstate*,int ) ;
 int M_NFSDSTATE ;
 int NFSLCK_DELEGWRITE ;
 int free (struct nfsstate*,int ) ;
 int ls_file ;
 int ls_hash ;
 int ls_list ;
 int nfsrv_delegatecnt ;
 int nfsrv_freenfslockfile (struct nfslockfile*) ;
 int nfsrv_openpluslock ;
 int nfsrv_writedelegcnt ;
 TYPE_1__ nfsstatsv1 ;
 scalar_t__ nfsv4_testlock (int *) ;

__attribute__((used)) static void
nfsrv_freedeleg(struct nfsstate *stp)
{
 struct nfslockfile *lfp;

 LIST_REMOVE(stp, ls_hash);
 LIST_REMOVE(stp, ls_list);
 LIST_REMOVE(stp, ls_file);
 if ((stp->ls_flags & NFSLCK_DELEGWRITE) != 0)
  nfsrv_writedelegcnt--;
 lfp = stp->ls_lfp;
 if (LIST_EMPTY(&lfp->lf_open) &&
     LIST_EMPTY(&lfp->lf_lock) && LIST_EMPTY(&lfp->lf_deleg) &&
     LIST_EMPTY(&lfp->lf_locallock) && LIST_EMPTY(&lfp->lf_rollback) &&
     lfp->lf_usecount == 0 &&
     nfsv4_testlock(&lfp->lf_locallock_lck) == 0)
  nfsrv_freenfslockfile(lfp);
 free(stp, M_NFSDSTATE);
 nfsstatsv1.srvdelegates--;
 nfsrv_openpluslock--;
 nfsrv_delegatecnt--;
}
