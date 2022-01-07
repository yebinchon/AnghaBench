
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {scalar_t__ np_refs; int np_ifp; struct netmap_adapter* np_na; } ;
struct netmap_adapter {int dummy; } ;


 int bzero (struct netmap_priv_d*,int) ;
 int netmap_do_unregif (struct netmap_priv_d*) ;
 int netmap_unget_na (struct netmap_adapter*,int ) ;
 int nm_os_free (struct netmap_priv_d*) ;
 int nm_os_put_module () ;

void
netmap_priv_delete(struct netmap_priv_d *priv)
{
 struct netmap_adapter *na = priv->np_na;


 if (--priv->np_refs > 0) {
  return;
 }
 nm_os_put_module();
 if (na) {
  netmap_do_unregif(priv);
 }
 netmap_unget_na(na, priv->np_ifp);
 bzero(priv, sizeof(*priv));
 nm_os_free(priv);
}
