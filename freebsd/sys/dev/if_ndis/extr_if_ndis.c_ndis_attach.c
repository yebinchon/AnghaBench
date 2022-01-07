
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ndis_softc {scalar_t__ ndis_iftype; int ndis_maxpkts; int ndis_txpending; int ndis_oidcnt; scalar_t__* ndis_oids; int ndis_80211; scalar_t__ ndis_sc; int * ndis_txpool; int ndis_txarray; TYPE_2__* ndis_block; int ndis_rxdpc; void* ndisusb_taskitem; void* ndisusb_xferdoneitem; void* ndis_inputitem; void* ndis_resetitem; void* ndis_startitem; void* ndis_tickitem; TYPE_1__* ndis_chars; int ndis_dobj; int ndis_rxqueue; int ndis_stat_callout; int ndisusb_xferdonelist; int ndisusb_tasklist; int ndis_shlist; int ndisusb_xferdonelock; int ndisusb_tasklock; int ndis_rxlock; int ndis_mtx; } ;
typedef int ndis_packet ;
typedef int driver_object ;
typedef int device_t ;
typedef int device_object ;
struct TYPE_5__ {int nmb_deviceobj; int nmb_statusdone_func; int nmb_status_func; int nmb_tdcond_func; int nmb_ethrxdone_func; int nmb_ethrxindicate_func; int nmb_pktind_func; int nmb_senddone_func; int * nmb_rlist; } ;
struct TYPE_4__ {int nmc_version_minor; int nmc_version_major; } ;


 int DPRINTF (char*) ;
 int ENOMEM ;
 int ENXIO ;
 int INT_MAX ;
 int InitializeListHead (int *) ;
 void* IoAllocateWorkItem (int ) ;
 int KeInitializeDpc (int *,int ,TYPE_2__*) ;
 int KeInitializeSpinLock (int *) ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NDIS_SERIALIZED (TYPE_2__*) ;
 int NDIS_STATUS_SUCCESS ;
 int NDIS_TXPKTS ;
 scalar_t__ NdisAddDevice (int ,int *) ;
 int NdisAllocatePacketPool (int*,int **,int,int ) ;
 scalar_t__ OID_802_11_CONFIGURATION ;
 int OID_GEN_MAXIMUM_SEND_PACKETS ;
 scalar_t__ PCIBus ;
 scalar_t__ PCMCIABus ;
 scalar_t__ PNPBus ;
 int PROTOCOL_RESERVED_SIZE_IN_PACKET ;
 scalar_t__ STATUS_SUCCESS ;
 int callout_init (int *,int) ;
 int device_get_nameunit (int ) ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int malloc (int,int ,int) ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int ndis_80211attach (struct ndis_softc*) ;
 int ndis_convert_res (struct ndis_softc*) ;
 int ndis_create_sysctls (struct ndis_softc*) ;
 int ndis_detach (int ) ;
 scalar_t__ ndis_get_info (struct ndis_softc*,int ,int*,int*) ;
 int ndis_get_supported_oids (struct ndis_softc*,scalar_t__**,int*) ;
 int ndis_halt_nic (struct ndis_softc*) ;
 int ndis_ifattach (struct ndis_softc*) ;
 int ndis_init_dma (struct ndis_softc*) ;
 scalar_t__ ndis_init_nic (struct ndis_softc*) ;
 int ndis_linksts_done_wrap ;
 int ndis_linksts_wrap ;
 int ndis_rxeof_done_wrap ;
 int ndis_rxeof_eth_wrap ;
 int ndis_rxeof_wrap ;
 int ndis_rxeof_xfr_done_wrap ;
 int ndis_rxeof_xfr_wrap ;
 int ndis_txeof_wrap ;
 scalar_t__ ndisusb_halt ;
 int * windrv_find_pdo (int *,int ) ;
 int * windrv_lookup (int ,char*) ;

int
ndis_attach(device_t dev)
{
 struct ndis_softc *sc;
 driver_object *pdrv;
 device_object *pdo;
 int error = 0, len;
 int i;

 sc = device_get_softc(dev);

 mtx_init(&sc->ndis_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 KeInitializeSpinLock(&sc->ndis_rxlock);
 KeInitializeSpinLock(&sc->ndisusb_tasklock);
 KeInitializeSpinLock(&sc->ndisusb_xferdonelock);
 InitializeListHead(&sc->ndis_shlist);
 InitializeListHead(&sc->ndisusb_tasklist);
 InitializeListHead(&sc->ndisusb_xferdonelist);
 callout_init(&sc->ndis_stat_callout, 1);
 mbufq_init(&sc->ndis_rxqueue, INT_MAX);


 ndis_create_sysctls(sc);



 if (sc->ndis_iftype == PCIBus)
  pdrv = windrv_lookup(0, "PCI Bus");
 else if (sc->ndis_iftype == PCMCIABus)
  pdrv = windrv_lookup(0, "PCCARD Bus");
 else
  pdrv = windrv_lookup(0, "USB Bus");
 pdo = windrv_find_pdo(pdrv, dev);







 if (NdisAddDevice(sc->ndis_dobj, pdo) != STATUS_SUCCESS) {
  device_printf(dev, "failed to create FDO!\n");
  error = ENXIO;
  goto fail;
 }


 device_printf(dev, "NDIS API version: %d.%d\n",
     sc->ndis_chars->nmc_version_major,
     sc->ndis_chars->nmc_version_minor);


 if (sc->ndis_iftype == PCMCIABus || sc->ndis_iftype == PCIBus)
  ndis_convert_res(sc);
 else
  sc->ndis_block->nmb_rlist = ((void*)0);


 sc->ndis_block->nmb_senddone_func = ndis_txeof_wrap;
 sc->ndis_block->nmb_pktind_func = ndis_rxeof_wrap;
 sc->ndis_block->nmb_ethrxindicate_func = ndis_rxeof_eth_wrap;
 sc->ndis_block->nmb_ethrxdone_func = ndis_rxeof_done_wrap;
 sc->ndis_block->nmb_tdcond_func = ndis_rxeof_xfr_done_wrap;


 sc->ndis_block->nmb_status_func = ndis_linksts_wrap;
 sc->ndis_block->nmb_statusdone_func = ndis_linksts_done_wrap;


 sc->ndis_tickitem = IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 sc->ndis_startitem = IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 sc->ndis_resetitem = IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 sc->ndis_inputitem = IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 sc->ndisusb_xferdoneitem =
     IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 sc->ndisusb_taskitem =
     IoAllocateWorkItem(sc->ndis_block->nmb_deviceobj);
 KeInitializeDpc(&sc->ndis_rxdpc, ndis_rxeof_xfr_wrap, sc->ndis_block);


 if (ndis_init_nic(sc)) {
  device_printf(dev, "init handler failed\n");
  error = ENXIO;
  goto fail;
 }




 len = sizeof(sc->ndis_maxpkts);
 if (ndis_get_info(sc, OID_GEN_MAXIMUM_SEND_PACKETS,
      &sc->ndis_maxpkts, &len)) {
  device_printf(dev, "failed to get max TX packets\n");
  error = ENXIO;
  goto fail;
 }





 if (!NDIS_SERIALIZED(sc->ndis_block))
  sc->ndis_maxpkts = NDIS_TXPKTS;



 if (sc->ndis_maxpkts == 0)
  sc->ndis_maxpkts = 10;

 sc->ndis_txarray = malloc(sizeof(ndis_packet *) *
     sc->ndis_maxpkts, M_DEVBUF, M_NOWAIT|M_ZERO);



 NdisAllocatePacketPool(&i, &sc->ndis_txpool,
     sc->ndis_maxpkts, PROTOCOL_RESERVED_SIZE_IN_PACKET);

 if (i != NDIS_STATUS_SUCCESS) {
  sc->ndis_txpool = ((void*)0);
  device_printf(dev, "failed to allocate TX packet pool");
  error = ENOMEM;
  goto fail;
 }

 sc->ndis_txpending = sc->ndis_maxpkts;

 sc->ndis_oidcnt = 0;

 ndis_get_supported_oids(sc, &sc->ndis_oids, &sc->ndis_oidcnt);


 if (sc->ndis_sc)
  ndis_init_dma(sc);






 for (i = 0; i < sc->ndis_oidcnt; i++)
  if (sc->ndis_oids[i] == OID_802_11_CONFIGURATION) {
   sc->ndis_80211 = 1;
   break;
  }

 if (sc->ndis_80211)
  error = ndis_80211attach(sc);
 else
  error = ndis_ifattach(sc);

fail:
 if (error) {
  ndis_detach(dev);
  return (error);
 }

 if (sc->ndis_iftype == PNPBus && ndisusb_halt == 0)
  return (error);

 DPRINTF(("attach done.\n"));

 ndis_halt_nic(sc);
 DPRINTF(("halting done.\n"));

 return (error);
}
