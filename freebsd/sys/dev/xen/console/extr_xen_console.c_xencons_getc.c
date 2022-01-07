
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {scalar_t__ rp; scalar_t__ rc; scalar_t__* rbuf; } ;


 size_t RBUF_MASK (scalar_t__) ;
 int xencons_lock (struct xencons_priv*) ;
 int xencons_unlock (struct xencons_priv*) ;

__attribute__((used)) static int
xencons_getc(struct xencons_priv *cons)
{
 int ret;

 xencons_lock(cons);
 if (cons->rp != cons->rc) {

  ret = (int)cons->rbuf[RBUF_MASK(cons->rc)];
  cons->rc++;
 } else {
  ret = -1;
 }

 xencons_unlock(cons);

 return (ret);
}
