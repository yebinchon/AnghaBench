
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int idi_paddr; } ;
struct vmxnet3_softc {int vmx_flags; TYPE_1__ vmx_ds_dma; TYPE_2__* vmx_scctx; struct vmxnet3_driver_shared* vmx_ds; struct ifnet* vmx_ifp; } ;
struct vmxnet3_driver_shared {int upt_features; int nrxqueue; int ntxqueue; int mtu; } ;
struct ifnet {int if_capenable; int if_mtu; } ;
typedef TYPE_2__* if_softc_ctx_t ;
struct TYPE_4__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_VLAN_HWTAGGING ;
 int UPT1_F_CSUM ;
 int UPT1_F_LRO ;
 int UPT1_F_RSS ;
 int UPT1_F_VLAN ;
 int VMXNET3_BAR1_DSH ;
 int VMXNET3_BAR1_DSL ;
 int VMXNET3_FLAG_RSS ;
 int vmxnet3_reinit_rss_shared_data (struct vmxnet3_softc*) ;
 int vmxnet3_write_bar1 (struct vmxnet3_softc*,int ,int) ;

__attribute__((used)) static void
vmxnet3_reinit_shared_data(struct vmxnet3_softc *sc)
{
 struct ifnet *ifp;
 struct vmxnet3_driver_shared *ds;
 if_softc_ctx_t scctx;

 ifp = sc->vmx_ifp;
 ds = sc->vmx_ds;
 scctx = sc->vmx_scctx;

 ds->mtu = ifp->if_mtu;
 ds->ntxqueue = scctx->isc_ntxqsets;
 ds->nrxqueue = scctx->isc_nrxqsets;

 ds->upt_features = 0;
 if (ifp->if_capenable & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6))
  ds->upt_features |= UPT1_F_CSUM;
 if (ifp->if_capenable & IFCAP_VLAN_HWTAGGING)
  ds->upt_features |= UPT1_F_VLAN;
 if (ifp->if_capenable & IFCAP_LRO)
  ds->upt_features |= UPT1_F_LRO;

 if (sc->vmx_flags & VMXNET3_FLAG_RSS) {
  ds->upt_features |= UPT1_F_RSS;
  vmxnet3_reinit_rss_shared_data(sc);
 }

 vmxnet3_write_bar1(sc, VMXNET3_BAR1_DSL, sc->vmx_ds_dma.idi_paddr);
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_DSH,
     (uint64_t) sc->vmx_ds_dma.idi_paddr >> 32);
}
