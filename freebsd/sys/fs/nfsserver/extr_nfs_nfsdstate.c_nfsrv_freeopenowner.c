
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsstate {scalar_t__ ls_op; int ls_open; } ;
struct TYPE_2__ {int srvopenowners; } ;
typedef int NFSPROC_T ;


 struct nfsstate* LIST_END (int *) ;
 struct nfsstate* LIST_FIRST (int *) ;
 struct nfsstate* LIST_NEXT (struct nfsstate*,int ) ;
 int LIST_REMOVE (struct nfsstate*,int ) ;
 int M_NFSDSTATE ;
 int free (struct nfsstate*,int ) ;
 int ls_list ;
 int nfsrv_freeopen (struct nfsstate*,int *,int,int *) ;
 int nfsrv_openpluslock ;
 int nfsrvd_derefcache (scalar_t__) ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static void
nfsrv_freeopenowner(struct nfsstate *stp, int cansleep, NFSPROC_T *p)
{
 struct nfsstate *nstp, *tstp;

 LIST_REMOVE(stp, ls_list);



 nstp = LIST_FIRST(&stp->ls_open);
 while (nstp != LIST_END(&stp->ls_open)) {
  tstp = nstp;
  nstp = LIST_NEXT(nstp, ls_list);
  (void) nfsrv_freeopen(tstp, ((void*)0), cansleep, p);
 }
 if (stp->ls_op)
  nfsrvd_derefcache(stp->ls_op);
 free(stp, M_NFSDSTATE);
 nfsstatsv1.srvopenowners--;
 nfsrv_openpluslock--;
}
