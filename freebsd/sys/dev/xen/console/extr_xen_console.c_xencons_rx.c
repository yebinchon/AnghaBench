
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xencons_priv {char* rbuf; int rp; TYPE_1__* ops; } ;
typedef int buf ;
struct TYPE_2__ {int (* read ) (struct xencons_priv*,char*,int) ;} ;


 size_t RBUF_MASK (int ) ;
 int stub1 (struct xencons_priv*,char*,int) ;
 int xencons_lock (struct xencons_priv*) ;
 int xencons_unlock (struct xencons_priv*) ;

__attribute__((used)) static void
xencons_rx(struct xencons_priv *cons)
{
 char buf[16];
 int sz;

 xencons_lock(cons);
 while ((sz = cons->ops->read(cons, buf, sizeof(buf))) > 0) {
  int i;

  for (i = 0; i < sz; i++)
   cons->rbuf[RBUF_MASK(cons->rp++)] = buf[i];
 }
 xencons_unlock(cons);
}
