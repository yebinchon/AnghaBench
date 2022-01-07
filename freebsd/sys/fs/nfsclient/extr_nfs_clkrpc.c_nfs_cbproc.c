
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct thread {int dummy; } ;
struct nfsrv_descript {scalar_t__ nd_repstat; int nd_flag; int * nd_nam2; } ;


 int ND_STREAMSOCK ;
 scalar_t__ NFSERR_DONTREPLY ;
 int RC_DROPIT ;
 int RC_REPLY ;
 struct thread* curthread ;
 int nfscl_docb (struct nfsrv_descript*,struct thread*) ;

__attribute__((used)) static int
nfs_cbproc(struct nfsrv_descript *nd, u_int32_t xid)
{
 struct thread *td = curthread;
 int cacherep;

 if (nd->nd_nam2 == ((void*)0))
  nd->nd_flag |= ND_STREAMSOCK;

 nfscl_docb(nd, td);
 if (nd->nd_repstat == NFSERR_DONTREPLY)
  cacherep = RC_DROPIT;
 else
  cacherep = RC_REPLY;
 return (cacherep);
}
