
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
struct nfsstate {scalar_t__ ls_op; } ;
struct TYPE_2__ {int srvlockowners; } ;
typedef int NFSPROC_T ;


 int LIST_REMOVE (struct nfsstate*,int ) ;
 int M_NFSDSTATE ;
 int free (struct nfsstate*,int ) ;
 int ls_hash ;
 int ls_list ;
 int nfsrv_freeallnfslocks (struct nfsstate*,int ,int,int *) ;
 int nfsrv_openpluslock ;
 int nfsrvd_derefcache (scalar_t__) ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static void
nfsrv_freelockowner(struct nfsstate *stp, vnode_t vp, int cansleep,
    NFSPROC_T *p)
{

 LIST_REMOVE(stp, ls_hash);
 LIST_REMOVE(stp, ls_list);
 nfsrv_freeallnfslocks(stp, vp, cansleep, p);
 if (stp->ls_op)
  nfsrvd_derefcache(stp->ls_op);
 free(stp, M_NFSDSTATE);
 nfsstatsv1.srvlockowners--;
 nfsrv_openpluslock--;
}
