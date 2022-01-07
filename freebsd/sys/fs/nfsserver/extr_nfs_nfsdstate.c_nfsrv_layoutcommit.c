
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint64_t ;
struct ucred {int dummy; } ;
struct timespec {int dummy; } ;
struct nfsvattr {int na_size; } ;
struct nfsrv_descript {int dummy; } ;
typedef int nfsv4stateid_t ;
typedef int NFSPROC_T ;


 int nfsrv_updatemdsattr (int ,struct nfsvattr*,int *) ;

int
nfsrv_layoutcommit(struct nfsrv_descript *nd, vnode_t vp, int layouttype,
    int hasnewoff, uint64_t newoff, uint64_t offset, uint64_t len,
    int hasnewmtime, struct timespec *newmtimep, int reclaim,
    nfsv4stateid_t *stateidp, int maxcnt, char *layp, int *hasnewsizep,
    uint64_t *newsizep, struct ucred *cred, NFSPROC_T *p)
{
 struct nfsvattr na;
 int error;

 error = nfsrv_updatemdsattr(vp, &na, p);
 if (error == 0) {
  *hasnewsizep = 1;
  *newsizep = na.na_size;
 }
 return (error);
}
