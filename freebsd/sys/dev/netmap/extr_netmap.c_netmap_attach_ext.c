
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {scalar_t__ num_tx_rings; scalar_t__ num_rx_rings; int na_flags; int num_rx_desc; int num_tx_desc; int * nm_dtor; int nm_register; struct netmap_adapter* name; struct ifnet* ifp; } ;
struct netmap_hw_adapter {struct netmap_adapter up; int nm_hw_register; } ;
struct ifnet {int if_xname; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int NAF_HOST_RINGS ;
 int NAF_NATIVE ;
 int NM_ATTACH_NA (struct ifnet*,struct netmap_adapter*) ;
 int NM_DEBUG_ON ;
 scalar_t__ NM_NA_CLASH (struct ifnet*) ;
 int if_printf (struct ifnet*,char*,struct ifnet*,int ,struct netmap_hw_adapter*,int ) ;
 int netmap_adapter_get (struct netmap_adapter*) ;
 scalar_t__ netmap_attach_common (struct netmap_adapter*) ;
 int netmap_debug ;
 int * netmap_hw_dtor ;
 int netmap_hw_reg ;
 int nm_os_free (struct netmap_hw_adapter*) ;
 struct netmap_hw_adapter* nm_os_malloc (size_t) ;
 int nm_os_onattach (struct ifnet*) ;
 int nm_prerr (char*,...) ;
 int strlcpy (struct netmap_adapter*,int ,int) ;

int
netmap_attach_ext(struct netmap_adapter *arg, size_t size, int override_reg)
{
 struct netmap_hw_adapter *hwna = ((void*)0);
 struct ifnet *ifp = ((void*)0);

 if (size < sizeof(struct netmap_hw_adapter)) {
  if (netmap_debug & NM_DEBUG_ON)
   nm_prerr("Invalid netmap adapter size %d", (int)size);
  return EINVAL;
 }

 if (arg == ((void*)0) || arg->ifp == ((void*)0)) {
  if (netmap_debug & NM_DEBUG_ON)
   nm_prerr("either arg or arg->ifp is NULL");
  return EINVAL;
 }

 if (arg->num_tx_rings == 0 || arg->num_rx_rings == 0) {
  if (netmap_debug & NM_DEBUG_ON)
   nm_prerr("%s: invalid rings tx %d rx %d",
    arg->name, arg->num_tx_rings, arg->num_rx_rings);
  return EINVAL;
 }

 ifp = arg->ifp;
 if (NM_NA_CLASH(ifp)) {




  nm_prerr("Error: netmap adapter hook is busy");
  return EBUSY;
 }

 hwna = nm_os_malloc(size);
 if (hwna == ((void*)0))
  goto fail;
 hwna->up = *arg;
 hwna->up.na_flags |= NAF_HOST_RINGS | NAF_NATIVE;
 strlcpy(hwna->up.name, ifp->if_xname, sizeof(hwna->up.name));
 if (override_reg) {
  hwna->nm_hw_register = hwna->up.nm_register;
  hwna->up.nm_register = netmap_hw_reg;
 }
 if (netmap_attach_common(&hwna->up)) {
  nm_os_free(hwna);
  goto fail;
 }
 netmap_adapter_get(&hwna->up);

 NM_ATTACH_NA(ifp, &hwna->up);

 nm_os_onattach(ifp);

 if (arg->nm_dtor == ((void*)0)) {
  hwna->up.nm_dtor = netmap_hw_dtor;
 }

 if_printf(ifp, "netmap queues/slots: TX %d/%d, RX %d/%d\n",
     hwna->up.num_tx_rings, hwna->up.num_tx_desc,
     hwna->up.num_rx_rings, hwna->up.num_rx_desc);
 return 0;

fail:
 nm_prerr("fail, arg %p ifp %p na %p", arg, ifp, hwna);
 return (hwna ? EINVAL : ENOMEM);
}
