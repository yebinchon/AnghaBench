
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rc_data {int rc_lock; TYPE_1__* rc_client; scalar_t__ rc_closed; } ;
struct TYPE_5__ {scalar_t__ cl_private; } ;
typedef TYPE_1__ CLIENT ;


 int CLNT_CLOSE (TYPE_1__*) ;
 int CLNT_RELEASE (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
clnt_reconnect_close(CLIENT *cl)
{
 struct rc_data *rc = (struct rc_data *)cl->cl_private;
 CLIENT *client;

 mtx_lock(&rc->rc_lock);

 if (rc->rc_closed) {
  mtx_unlock(&rc->rc_lock);
  return;
 }

 rc->rc_closed = TRUE;
 client = rc->rc_client;
 rc->rc_client = ((void*)0);

 mtx_unlock(&rc->rc_lock);

 if (client) {
  CLNT_CLOSE(client);
  CLNT_RELEASE(client);
 }
}
