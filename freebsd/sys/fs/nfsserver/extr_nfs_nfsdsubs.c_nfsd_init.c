
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfssessionhash {int dummy; } ;
struct nfslockhashhead {int dummy; } ;
struct nfsclienthashhead {int dummy; } ;
struct TYPE_2__ {int list; int mtx; } ;


 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_NFSDCLIENT ;
 int M_NFSDLOCKFILE ;
 int M_NFSDSESSION ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSBZERO (int ,int ) ;
 int NFSX_V2FH ;
 int TAILQ_INIT (int *) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nfs_v2pubfh ;
 int * nfsclienthash ;
 int * nfslockhash ;
 int nfsrv_clienthashsize ;
 int nfsrv_dontlisthead ;
 int nfsrv_lockhashsize ;
 int nfsrv_recalllisthead ;
 int nfsrv_sessionhashsize ;
 TYPE_1__* nfssessionhash ;

void
nfsd_init(void)
{
 int i;
 static int inited = 0;

 if (inited)
  return;
 inited = 1;





 nfsclienthash = malloc(sizeof(struct nfsclienthashhead) *
     nfsrv_clienthashsize, M_NFSDCLIENT, M_WAITOK | M_ZERO);
 for (i = 0; i < nfsrv_clienthashsize; i++)
  LIST_INIT(&nfsclienthash[i]);
 nfslockhash = malloc(sizeof(struct nfslockhashhead) *
     nfsrv_lockhashsize, M_NFSDLOCKFILE, M_WAITOK | M_ZERO);
 for (i = 0; i < nfsrv_lockhashsize; i++)
  LIST_INIT(&nfslockhash[i]);
 nfssessionhash = malloc(sizeof(struct nfssessionhash) *
     nfsrv_sessionhashsize, M_NFSDSESSION, M_WAITOK | M_ZERO);
 for (i = 0; i < nfsrv_sessionhashsize; i++) {
  mtx_init(&nfssessionhash[i].mtx, "nfssm", ((void*)0), MTX_DEF);
  LIST_INIT(&nfssessionhash[i].list);
 }
 LIST_INIT(&nfsrv_dontlisthead);
 TAILQ_INIT(&nfsrv_recalllisthead);


 NFSBZERO(nfs_v2pubfh, NFSX_V2FH);
}
