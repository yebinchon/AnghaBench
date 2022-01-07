
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfssockreq {int nr_mtx; int * nr_client; } ;
typedef int CLIENT ;


 int CLNT_CLOSE (int *) ;
 int CLNT_RELEASE (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rpc_gss_secpurge_call (int *) ;

void
newnfs_disconnect(struct nfssockreq *nrp)
{
 CLIENT *client;

 mtx_lock(&nrp->nr_mtx);
 if (nrp->nr_client != ((void*)0)) {
  client = nrp->nr_client;
  nrp->nr_client = ((void*)0);
  mtx_unlock(&nrp->nr_mtx);
  rpc_gss_secpurge_call(client);
  CLNT_CLOSE(client);
  CLNT_RELEASE(client);
 } else {
  mtx_unlock(&nrp->nr_mtx);
 }
}
