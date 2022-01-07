
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ct_data {int ct_lock; scalar_t__ ct_closed; scalar_t__ ct_closing; } ;
struct TYPE_3__ {scalar_t__ cl_private; } ;
typedef TYPE_1__ CLIENT ;


 scalar_t__ FALSE ;
 int KASSERT (scalar_t__,char*) ;
 scalar_t__ TRUE ;
 int msleep (struct ct_data*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ct_data*) ;

__attribute__((used)) static void
clnt_bck_close(CLIENT *cl)
{
 struct ct_data *ct = (struct ct_data *) cl->cl_private;

 mtx_lock(&ct->ct_lock);

 if (ct->ct_closed) {
  mtx_unlock(&ct->ct_lock);
  return;
 }

 if (ct->ct_closing) {
  while (ct->ct_closing)
   msleep(ct, &ct->ct_lock, 0, "rpcclose", 0);
  KASSERT(ct->ct_closed, ("client should be closed"));
  mtx_unlock(&ct->ct_lock);
  return;
 }

 ct->ct_closing = FALSE;
 ct->ct_closed = TRUE;
 mtx_unlock(&ct->ct_lock);
 wakeup(ct);
}
