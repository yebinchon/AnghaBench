
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xencons_priv {scalar_t__ wc; scalar_t__ wp; int * wbuf; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct xencons_priv*,int *,int) ;} ;


 size_t WBUF_MASK (int) ;
 int WBUF_SIZE ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 int stub1 (struct xencons_priv*,int *,int) ;
 int xencons_lock (struct xencons_priv*) ;
 int xencons_unlock (struct xencons_priv*) ;

__attribute__((used)) static void
xencons_tx_flush(struct xencons_priv *cons, int force)
{
 int sz;

 xencons_lock(cons);
 while (cons->wc != cons->wp) {
  int sent;
  sz = cons->wp - cons->wc;
  if (sz > (WBUF_SIZE - WBUF_MASK(cons->wc)))
   sz = WBUF_SIZE - WBUF_MASK(cons->wc);
  sent = cons->ops->write(cons, &cons->wbuf[WBUF_MASK(cons->wc)],
      sz);





  if (__predict_false(sent < 0))
   break;





  if (sent == 0 && __predict_true(!force))
   break;

  cons->wc += sent;
 }
 xencons_unlock(cons);
}
