
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cuse_server {scalar_t__ is_closing; int cv; int head; } ;
struct TYPE_3__ {int * tqe_prev; } ;
struct cuse_client_command {int got_signal; TYPE_2__* client; TYPE_1__ entry; } ;
struct TYPE_4__ {struct cuse_server* server; struct cuse_client_command* cmds; } ;


 scalar_t__ CUSE_CLIENT_CLOSING (TYPE_2__*) ;
 size_t CUSE_CMD_SIGNAL ;
 int TAILQ_INSERT_TAIL (int *,struct cuse_client_command*,int ) ;
 int cv_signal (int *) ;
 int entry ;

__attribute__((used)) static void
cuse_client_got_signal(struct cuse_client_command *pccmd)
{
 struct cuse_server *pcs;

 pccmd->got_signal = 1;

 pccmd = &pccmd->client->cmds[CUSE_CMD_SIGNAL];

 pcs = pccmd->client->server;

 if ((pccmd->entry.tqe_prev == ((void*)0)) &&
     (CUSE_CLIENT_CLOSING(pccmd->client) == 0) &&
     (pcs->is_closing == 0)) {
  TAILQ_INSERT_TAIL(&pcs->head, pccmd, entry);
  cv_signal(&pcs->cv);
 }
}
