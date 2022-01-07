
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vmxnet3_txdesc {int dummy; } ;
struct vmxnet3_txcompdesc {int dummy; } ;
struct vmxnet3_softc {int vmx_intr_mask_mode; int vmx_lladdr; TYPE_1__* vmx_scctx; int vmx_media; int vmx_ifp; int vmx_sctx; int vmx_ctx; int vmx_dev; } ;
struct vmxnet3_rxdesc {int dummy; } ;
struct vmxnet3_rxcompdesc {int dummy; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ isc_nrxqsets; scalar_t__ isc_ntxqsets; int* isc_ntxd; int* isc_txqsizes; int* isc_nrxd; int* isc_rxqsizes; int isc_msix_bar; int isc_disable_msix; int isc_capabilities; int isc_capenable; int isc_tx_csum_flags; int isc_rss_table_size; void* isc_ntxqsets_max; void* isc_nrxqsets_max; int * isc_txrx; int isc_tx_tso_segsize_max; int isc_tx_tso_size_max; void* isc_tx_tso_segments_max; void* isc_tx_nsegments; } ;


 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int UPT1_RSS_MAX_IND_TABLE_SIZE ;
 int VMXNET3_CMD_GET_INTRCFG ;
 int VMXNET3_CSUM_ALL_OFFLOAD ;
 scalar_t__ VMXNET3_DEF_RX_QUEUES ;
 scalar_t__ VMXNET3_DEF_TX_QUEUES ;




 int VMXNET3_MAX_RX_QUEUES ;
 int VMXNET3_MAX_TX_QUEUES ;
 int VMXNET3_TSO_MAXSIZE ;
 void* VMXNET3_TX_MAXSEGS ;
 int VMXNET3_TX_MAXSEGSIZE ;
 int iflib_get_dev (int ) ;
 int iflib_get_ifp (int ) ;
 int iflib_get_media (int ) ;
 int iflib_get_sctx (int ) ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int iflib_set_mac (int ,int ) ;
 void* min (int ,int ) ;
 int mp_ncpus ;
 int pci_msix_table_bar (int ) ;
 int vmxnet3_alloc_resources (struct vmxnet3_softc*) ;
 int vmxnet3_check_version (struct vmxnet3_softc*) ;
 int vmxnet3_free_resources (struct vmxnet3_softc*) ;
 int vmxnet3_get_lladdr (struct vmxnet3_softc*) ;
 int vmxnet3_read_cmd (struct vmxnet3_softc*,int ) ;
 int vmxnet3_txrx ;

__attribute__((used)) static int
vmxnet3_attach_pre(if_ctx_t ctx)
{
 device_t dev;
 if_softc_ctx_t scctx;
 struct vmxnet3_softc *sc;
 uint32_t intr_config;
 int error;

 dev = iflib_get_dev(ctx);
 sc = iflib_get_softc(ctx);
 sc->vmx_dev = dev;
 sc->vmx_ctx = ctx;
 sc->vmx_sctx = iflib_get_sctx(ctx);
 sc->vmx_scctx = iflib_get_softc_ctx(ctx);
 sc->vmx_ifp = iflib_get_ifp(ctx);
 sc->vmx_media = iflib_get_media(ctx);
 scctx = sc->vmx_scctx;

 scctx->isc_tx_nsegments = VMXNET3_TX_MAXSEGS;
 scctx->isc_tx_tso_segments_max = VMXNET3_TX_MAXSEGS;

 scctx->isc_tx_tso_size_max = VMXNET3_TSO_MAXSIZE;
 scctx->isc_tx_tso_segsize_max = VMXNET3_TX_MAXSEGSIZE;
 scctx->isc_txrx = &vmxnet3_txrx;


 if (scctx->isc_nrxqsets == 0)
  scctx->isc_nrxqsets = VMXNET3_DEF_RX_QUEUES;
 scctx->isc_nrxqsets_max = min(VMXNET3_MAX_RX_QUEUES, mp_ncpus);


 if (scctx->isc_ntxqsets == 0)
  scctx->isc_ntxqsets = VMXNET3_DEF_TX_QUEUES;
 scctx->isc_ntxqsets_max = min(VMXNET3_MAX_TX_QUEUES, mp_ncpus);





 scctx->isc_ntxd[0] = scctx->isc_ntxd[1];
 scctx->isc_txqsizes[0] =
     sizeof(struct vmxnet3_txcompdesc) * scctx->isc_ntxd[0];
 scctx->isc_txqsizes[1] =
     sizeof(struct vmxnet3_txdesc) * scctx->isc_ntxd[1];







 scctx->isc_nrxd[2] = scctx->isc_nrxd[1];
 scctx->isc_nrxd[0] = scctx->isc_nrxd[1] + scctx->isc_nrxd[2];
 scctx->isc_rxqsizes[0] =
     sizeof(struct vmxnet3_rxcompdesc) * scctx->isc_nrxd[0];
 scctx->isc_rxqsizes[1] =
     sizeof(struct vmxnet3_rxdesc) * scctx->isc_nrxd[1];
 scctx->isc_rxqsizes[2] =
     sizeof(struct vmxnet3_rxdesc) * scctx->isc_nrxd[2];

 scctx->isc_rss_table_size = UPT1_RSS_MAX_IND_TABLE_SIZE;


 error = vmxnet3_alloc_resources(sc);
 if (error)
  goto fail;


 error = vmxnet3_check_version(sc);
 if (error)
  goto fail;





 intr_config = vmxnet3_read_cmd(sc, VMXNET3_CMD_GET_INTRCFG);
 sc->vmx_intr_mask_mode = (intr_config >> 2) & 0x03;







 switch (intr_config & 0x03) {
 case 131:
 case 128:
  scctx->isc_msix_bar = pci_msix_table_bar(dev);
  break;
 case 129:
  scctx->isc_msix_bar = -1;
  scctx->isc_disable_msix = 1;
  break;
 case 130:
  scctx->isc_msix_bar = 0;
  break;
 }

 scctx->isc_tx_csum_flags = VMXNET3_CSUM_ALL_OFFLOAD;
 scctx->isc_capabilities = scctx->isc_capenable =
     IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6 |
     IFCAP_TSO4 | IFCAP_TSO6 |
     IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6 |
     IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
     IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO |
     IFCAP_JUMBO_MTU;


 scctx->isc_capabilities |= IFCAP_LRO | IFCAP_VLAN_HWFILTER;

 vmxnet3_get_lladdr(sc);
 iflib_set_mac(ctx, sc->vmx_lladdr);

 return (0);
fail:





 vmxnet3_free_resources(sc);

 return (error);
}
