
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {unsigned int wp; unsigned int wc; } ;


 unsigned int WBUF_SIZE ;
 int xencons_lock (struct xencons_priv*) ;
 int xencons_unlock (struct xencons_priv*) ;

__attribute__((used)) static bool
xencons_tx_full(struct xencons_priv *cons)
{
 unsigned int used;

 xencons_lock(cons);
 used = cons->wp - cons->wc;
 xencons_unlock(cons);

 return (used >= WBUF_SIZE);
}
