
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {scalar_t__ wp; scalar_t__ wc; int* wbuf; } ;


 size_t WBUF_MASK (int ) ;
 scalar_t__ WBUF_SIZE ;
 int xencons_lock (struct xencons_priv*) ;
 int xencons_tx_flush (struct xencons_priv*,int) ;
 int xencons_tx_full (struct xencons_priv*) ;
 int xencons_unlock (struct xencons_priv*) ;

__attribute__((used)) static bool
xencons_putc(struct xencons_priv *cons, int c, bool force_flush)
{

 xencons_lock(cons);
 if ((cons->wp - cons->wc) < WBUF_SIZE)
  cons->wbuf[WBUF_MASK(cons->wp++)] = c;
 xencons_unlock(cons);

 xencons_tx_flush(cons, force_flush);

 return (xencons_tx_full(cons));
}
