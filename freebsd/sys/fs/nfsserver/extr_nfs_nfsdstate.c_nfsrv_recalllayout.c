
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
struct nfslayout {int lay_flags; } ;
struct nfsclient {int lc_flags; } ;
typedef int nfsv4stateid_t ;
typedef int nfsquad_t ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int LCL_NFSV41 ;
 int NFSDRECALLLOCK () ;
 int NFSDRECALLUNLOCK () ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSERR_NOMATCHLAYOUT ;
 int NFSLAY_RECALL ;
 int NFSLAY_RETURNED ;
 int NFSV4OP_CBLAYOUTRECALL ;
 int nfsrv_docallback (struct nfsclient*,int ,int *,int,int *,int *,int *,int,int *) ;
 int nfsrv_getclient (int ,int ,struct nfsclient**,int *,int ,int ,int *,int *) ;
 int printf (char*,...) ;
 int wakeup (struct nfslayout*) ;

__attribute__((used)) static int
nfsrv_recalllayout(nfsquad_t clid, nfsv4stateid_t *stateidp, fhandle_t *fhp,
    struct nfslayout *lyp, int changed, int laytype, NFSPROC_T *p)
{
 struct nfsclient *clp;
 int error;

 NFSD_DEBUG(4, "nfsrv_recalllayout\n");
 error = nfsrv_getclient(clid, 0, &clp, ((void*)0), (nfsquad_t)((u_quad_t)0),
     0, ((void*)0), p);
 NFSD_DEBUG(4, "aft nfsrv_getclient=%d\n", error);
 if (error != 0) {
  printf("nfsrv_recalllayout: getclient err=%d\n", error);
  return (error);
 }
 if ((clp->lc_flags & LCL_NFSV41) != 0) {
  error = nfsrv_docallback(clp, NFSV4OP_CBLAYOUTRECALL,
      stateidp, changed, fhp, ((void*)0), ((void*)0), laytype, p);

  if (error != 0 && lyp != ((void*)0)) {
   NFSDRECALLLOCK();






   if ((lyp->lay_flags & NFSLAY_RECALL) != 0) {
    lyp->lay_flags |= NFSLAY_RETURNED;
    wakeup(lyp);
   }
   NFSDRECALLUNLOCK();
   if (error != NFSERR_NOMATCHLAYOUT)
    printf("nfsrv_recalllayout: err=%d\n", error);
  }
 } else
  printf("nfsrv_recalllayout: clp not NFSv4.1\n");
 return (error);
}
