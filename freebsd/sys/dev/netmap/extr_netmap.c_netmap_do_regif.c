
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct netmap_priv_d {struct netmap_adapter* np_na; struct netmap_if* np_nifp; } ;
struct netmap_if {int dummy; } ;
struct TYPE_3__ {int objsize; int objtotal; int lut; } ;
struct netmap_adapter {scalar_t__ active_fds; int (* nm_krings_create ) (struct netmap_adapter*) ;int (* nm_register ) (struct netmap_adapter*,int) ;TYPE_1__ na_lut; int (* nm_krings_delete ) (struct netmap_adapter*) ;int name; int rx_buf_maxsize; scalar_t__ ifp; int nm_mem; } ;


 int EIO ;
 int ENOMEM ;
 int NETMAP_BUF_SIZE (struct netmap_adapter*) ;
 int NMG_LOCK_ASSERT () ;
 int mb () ;
 int memset (TYPE_1__*,int ,int) ;
 int netmap_buf_size_validate (struct netmap_adapter*,unsigned int) ;
 int netmap_krings_get (struct netmap_priv_d*) ;
 int netmap_krings_put (struct netmap_priv_d*) ;
 int netmap_mem_drop (struct netmap_adapter*) ;
 int netmap_mem_finalize (int ,struct netmap_adapter*) ;
 int netmap_mem_get_lut (int ,TYPE_1__*) ;
 int netmap_mem_if_delete (struct netmap_adapter*,struct netmap_if*) ;
 struct netmap_if* netmap_mem_if_new (struct netmap_adapter*,struct netmap_priv_d*) ;
 int netmap_mem_rings_create (struct netmap_adapter*) ;
 int netmap_mem_rings_delete (struct netmap_adapter*) ;
 int netmap_set_ringid (struct netmap_priv_d*,int ,int ,int ) ;
 int netmap_update_config (struct netmap_adapter*) ;
 scalar_t__ nm_kring_pending (struct netmap_priv_d*) ;
 unsigned int nm_os_ifnet_mtu (scalar_t__) ;
 int nm_prdis (char*,int ,unsigned int,int ,...) ;
 int nm_prerr (char*,int ) ;
 scalar_t__ nm_priv_rx_enabled (struct netmap_priv_d*) ;
 int stub1 (struct netmap_adapter*) ;
 int stub2 (struct netmap_adapter*,int) ;
 int stub3 (struct netmap_adapter*) ;

int
netmap_do_regif(struct netmap_priv_d *priv, struct netmap_adapter *na,
 uint32_t nr_mode, uint16_t nr_ringid, uint64_t nr_flags)
{
 struct netmap_if *nifp = ((void*)0);
 int error;

 NMG_LOCK_ASSERT();
 priv->np_na = na;
 error = netmap_mem_finalize(na->nm_mem, na);
 if (error)
  goto err;

 if (na->active_fds == 0) {


  error = netmap_mem_get_lut(na->nm_mem, &na->na_lut);
  if (error)
   goto err_drop_mem;
  nm_prdis("lut %p bufs %u size %u", na->na_lut.lut, na->na_lut.objtotal,
         na->na_lut.objsize);


  netmap_update_config(na);
 }


 error = netmap_set_ringid(priv, nr_mode, nr_ringid, nr_flags);
 if (error)
  goto err_put_lut;

 if (na->active_fds == 0) {





  if (na->ifp && nm_priv_rx_enabled(priv)) {

   unsigned mtu = nm_os_ifnet_mtu(na->ifp);

   nm_prdis("%s: mtu %d rx_buf_maxsize %d netmap_buf_size %d",
    na->name, mtu, na->rx_buf_maxsize, NETMAP_BUF_SIZE(na));

   if (na->rx_buf_maxsize == 0) {
    nm_prerr("%s: error: rx_buf_maxsize == 0", na->name);
    error = EIO;
    goto err_drop_mem;
   }

   error = netmap_buf_size_validate(na, mtu);
   if (error)
    goto err_drop_mem;
  }





  error = na->nm_krings_create(na);
  if (error)
   goto err_put_lut;

 }





 error = netmap_krings_get(priv);
 if (error)
  goto err_del_krings;


 error = netmap_mem_rings_create(na);
 if (error)
  goto err_rel_excl;


 nifp = netmap_mem_if_new(na, priv);
 if (nifp == ((void*)0)) {
  error = ENOMEM;
  goto err_rel_excl;
 }

 if (nm_kring_pending(priv)) {


  error = na->nm_register(na, 1);
  if (error)
   goto err_del_if;
 }


 na->active_fds++;






 mb();
 priv->np_nifp = nifp;

 return 0;

err_del_if:
 netmap_mem_if_delete(na, nifp);
err_rel_excl:
 netmap_krings_put(priv);
 netmap_mem_rings_delete(na);
err_del_krings:
 if (na->active_fds == 0)
  na->nm_krings_delete(na);
err_put_lut:
 if (na->active_fds == 0)
  memset(&na->na_lut, 0, sizeof(na->na_lut));
err_drop_mem:
 netmap_mem_drop(na);
err:
 priv->np_na = ((void*)0);
 return error;
}
