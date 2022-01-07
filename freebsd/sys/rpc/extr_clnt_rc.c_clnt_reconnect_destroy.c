
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_data {int rc_lock; int rc_ucred; scalar_t__ rc_backchannel; scalar_t__ rc_client; scalar_t__ cl_private; } ;
typedef int SVCXPRT ;
typedef struct rc_data CLIENT ;


 int CLNT_DESTROY (scalar_t__) ;
 int SVC_RELEASE (int *) ;
 int crfree (int ) ;
 int mem_free (struct rc_data*,int) ;
 int mtx_destroy (int *) ;
 int xprt_unregister (int *) ;

__attribute__((used)) static void
clnt_reconnect_destroy(CLIENT *cl)
{
 struct rc_data *rc = (struct rc_data *)cl->cl_private;
 SVCXPRT *xprt;

 if (rc->rc_client)
  CLNT_DESTROY(rc->rc_client);
 if (rc->rc_backchannel) {
  xprt = (SVCXPRT *)rc->rc_backchannel;
  xprt_unregister(xprt);
  SVC_RELEASE(xprt);
 }
 crfree(rc->rc_ucred);
 mtx_destroy(&rc->rc_lock);
 mem_free(rc, sizeof(*rc));
 mem_free(cl, sizeof (CLIENT));
}
