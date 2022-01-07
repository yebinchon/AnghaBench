
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int * tqe_prev; } ;
struct cuse_client_command {int cv; TYPE_2__ entry; } ;
struct cuse_client {TYPE_1__* server; struct cuse_client_command* cmds; int * server_dev; int cflags; } ;
struct TYPE_3__ {int head; } ;


 scalar_t__ CUSE_CLIENT_CLOSING (struct cuse_client*) ;
 int CUSE_CLI_IS_CLOSING ;
 size_t CUSE_CMD_MAX ;
 int TAILQ_REMOVE (int *,struct cuse_client_command*,int ) ;
 int cv_broadcast (int *) ;
 int entry ;

__attribute__((used)) static void
cuse_client_is_closing(struct cuse_client *pcc)
{
 struct cuse_client_command *pccmd;
 uint32_t n;

 if (CUSE_CLIENT_CLOSING(pcc))
  return;

 pcc->cflags |= CUSE_CLI_IS_CLOSING;
 pcc->server_dev = ((void*)0);

 for (n = 0; n != CUSE_CMD_MAX; n++) {

  pccmd = &pcc->cmds[n];

  if (pccmd->entry.tqe_prev != ((void*)0)) {
   TAILQ_REMOVE(&pcc->server->head, pccmd, entry);
   pccmd->entry.tqe_prev = ((void*)0);
  }
  cv_broadcast(&pccmd->cv);
 }
}
