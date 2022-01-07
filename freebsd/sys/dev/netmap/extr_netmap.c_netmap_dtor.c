
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {int dummy; } ;


 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int netmap_priv_delete (struct netmap_priv_d*) ;

void
netmap_dtor(void *data)
{
 struct netmap_priv_d *priv = data;

 NMG_LOCK();
 netmap_priv_delete(priv);
 NMG_UNLOCK();
}
