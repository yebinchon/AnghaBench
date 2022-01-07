
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {TYPE_1__* vmx_ds; int vmx_vlan_filter; struct ifnet* vmx_ifp; } ;
struct ifnet {int if_capenable; } ;
struct TYPE_2__ {int vlan_filter; } ;


 int IFCAP_VLAN_HWFILTER ;
 int VMXNET3_CMD_VLAN_FILTER ;
 int bcopy (int ,int ,int) ;
 int bzero (int ,int) ;
 int if_getflags (struct ifnet*) ;
 int vmxnet3_set_rxfilter (struct vmxnet3_softc*,int ) ;
 int vmxnet3_write_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_reinit_rxfilters(struct vmxnet3_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->vmx_ifp;

 vmxnet3_set_rxfilter(sc, if_getflags(ifp));

 if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
  bcopy(sc->vmx_vlan_filter, sc->vmx_ds->vlan_filter,
      sizeof(sc->vmx_ds->vlan_filter));
 else
  bzero(sc->vmx_ds->vlan_filter,
      sizeof(sc->vmx_ds->vlan_filter));
 vmxnet3_write_cmd(sc, VMXNET3_CMD_VLAN_FILTER);
}
