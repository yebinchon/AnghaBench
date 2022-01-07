
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_server {int hcli; } ;
struct cuse_client_command {int cv; int sx; } ;
struct cuse_client {struct cuse_server* server; struct cuse_client_command* cmds; } ;


 int CUSE_CMD_MAX ;
 int M_CUSE ;
 int TAILQ_REMOVE (int *,struct cuse_client*,int ) ;
 int cuse_client_is_closing (struct cuse_client*) ;
 int cuse_lock () ;
 int cuse_server_unref (struct cuse_server*) ;
 int cuse_unlock () ;
 int cv_destroy (int *) ;
 int entry ;
 int free (struct cuse_client*,int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
cuse_client_free(void *arg)
{
 struct cuse_client *pcc = arg;
 struct cuse_client_command *pccmd;
 struct cuse_server *pcs;
 int n;

 cuse_lock();
 cuse_client_is_closing(pcc);
 TAILQ_REMOVE(&pcc->server->hcli, pcc, entry);
 cuse_unlock();

 for (n = 0; n != CUSE_CMD_MAX; n++) {

  pccmd = &pcc->cmds[n];

  sx_destroy(&pccmd->sx);
  cv_destroy(&pccmd->cv);
 }

 pcs = pcc->server;

 free(pcc, M_CUSE);


 cuse_server_unref(pcs);
}
