
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {int crp_session; } ;
struct cryptocap {int dummy; } ;


 int ERESTART ;
 int crypto_batch_enqueue (struct cryptop*) ;
 struct cryptocap* crypto_checkdriver (int) ;
 int crypto_invoke (struct cryptocap*,struct cryptop*,int ) ;
 int crypto_ses2hid (int ) ;

__attribute__((used)) static void
crypto_task_invoke(void *ctx, int pending)
{
 struct cryptocap *cap;
 struct cryptop *crp;
 int hid, result;

 crp = (struct cryptop *)ctx;

 hid = crypto_ses2hid(crp->crp_session);
 cap = crypto_checkdriver(hid);

 result = crypto_invoke(cap, crp, 0);
 if (result == ERESTART)
  crypto_batch_enqueue(crp);
}
