
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct cuse_client_command {scalar_t__ command; int error; scalar_t__ proc_refs; int cv; int * proc_curr; TYPE_3__* client; } ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_5__ {int * td_proc; } ;
struct TYPE_4__ {scalar_t__ is_closing; } ;


 scalar_t__ CUSE_CLIENT_CLOSING (TYPE_3__*) ;
 scalar_t__ CUSE_CMD_NONE ;
 int CUSE_ERR_OTHER ;
 TYPE_2__* curthread ;
 int cuse_client_got_signal (struct cuse_client_command*) ;
 int cuse_mtx ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int cv_wait_sig (int *,int *) ;

__attribute__((used)) static int
cuse_client_receive_command_locked(struct cuse_client_command *pccmd,
    uint8_t *arg_ptr, uint32_t arg_len)
{
 int error;

 error = 0;

 pccmd->proc_curr = curthread->td_proc;

 if (CUSE_CLIENT_CLOSING(pccmd->client) ||
     pccmd->client->server->is_closing) {
  error = CUSE_ERR_OTHER;
  goto done;
 }
 while (pccmd->command == CUSE_CMD_NONE) {
  if (error != 0) {
   cv_wait(&pccmd->cv, &cuse_mtx);
  } else {
   error = cv_wait_sig(&pccmd->cv, &cuse_mtx);

   if (error != 0)
    cuse_client_got_signal(pccmd);
  }
  if (CUSE_CLIENT_CLOSING(pccmd->client) ||
      pccmd->client->server->is_closing) {
   error = CUSE_ERR_OTHER;
   goto done;
  }
 }

 error = pccmd->error;
 pccmd->command = CUSE_CMD_NONE;
 cv_signal(&pccmd->cv);

done:



 pccmd->proc_curr = ((void*)0);

 while (pccmd->proc_refs != 0)
  cv_wait(&pccmd->cv, &cuse_mtx);

 return (error);
}
