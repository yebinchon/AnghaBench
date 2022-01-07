
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int u_short ;
struct nfslockfile {int lf_fh; } ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int KASSERT (int ,char*) ;
 int NFSEXITCODE (int) ;
 int NFSLCK_OPEN ;
 int nfsvno_getfh (int ,int *,int *) ;
 int panic (char*) ;

__attribute__((used)) static int
nfsrv_getlockfh(vnode_t vp, u_short flags, struct nfslockfile *new_lfp,
    fhandle_t *nfhp, NFSPROC_T *p)
{
 fhandle_t *fhp = ((void*)0);
 int error;





 if (flags & NFSLCK_OPEN) {
  KASSERT(new_lfp != ((void*)0), ("nfsrv_getlockfh: new_lfp NULL"));
  fhp = &new_lfp->lf_fh;
 } else if (nfhp) {
  fhp = nfhp;
 } else {
  panic("nfsrv_getlockfh");
 }
 error = nfsvno_getfh(vp, fhp, p);
 NFSEXITCODE(error);
 return (error);
}
