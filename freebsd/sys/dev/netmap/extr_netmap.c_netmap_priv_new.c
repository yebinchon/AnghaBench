
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {int np_refs; } ;


 int nm_os_get_module () ;
 struct netmap_priv_d* nm_os_malloc (int) ;

struct netmap_priv_d*
netmap_priv_new(void)
{
 struct netmap_priv_d *priv;

 priv = nm_os_malloc(sizeof(struct netmap_priv_d));
 if (priv == ((void*)0))
  return ((void*)0);
 priv->np_refs = 1;
 nm_os_get_module();
 return priv;
}
