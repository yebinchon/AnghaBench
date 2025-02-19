
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sli_valid; scalar_t__ sli_rev; scalar_t__ sli_if_type; scalar_t__ sli_hint1; scalar_t__ sli_func_type; } ;
struct TYPE_10__ {TYPE_1__ bits; int dw0; } ;
typedef TYPE_2__ pci_sli_intf_t ;
struct TYPE_11__ {int flags; void* db_res; void* db_vhandle; void* db_bhandle; void* db_btag; int dev; void* csr_res; void* csr_vhandle; void* csr_bhandle; void* csr_btag; void* devcfg_res; void* devcfg_vhandle; void* devcfg_bhandle; void* devcfg_btag; int fn; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int ENXIO ;
 scalar_t__ IS_BE (TYPE_3__*) ;
 scalar_t__ IS_SH (TYPE_3__*) ;
 int OCE_DEV_BE2_CFG_BAR ;
 int OCE_DEV_CFG_BAR ;
 int OCE_FLAGS_BE2 ;
 int OCE_FLAGS_FUNCRESET_RQD ;
 int OCE_FLAGS_MBOX_ENDIAN_RQD ;
 int OCE_FLAGS_VIRTUAL_PORT ;
 scalar_t__ OCE_INTF_FUNC_RESET_REQD ;
 scalar_t__ OCE_INTF_IF_TYPE_1 ;
 int OCE_INTF_REG_OFFSET ;
 scalar_t__ OCE_INTF_SLI_REV4 ;
 scalar_t__ OCE_INTF_VALID_SIG ;
 scalar_t__ OCE_INTF_VIRT_FUNC ;
 int OCE_PCI_CSR_BAR ;
 int OCE_PCI_DB_BAR ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 void* bus_alloc_resource_anywhere (int ,int ,int*,int,int) ;
 int device_printf (int ,char*) ;
 int oce_get_pci_capabilities (TYPE_3__*) ;
 int oce_hw_pci_free (TYPE_3__*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_function (int ) ;
 int pci_read_config (int ,int ,int) ;
 void* rman_get_bushandle (void*) ;
 void* rman_get_bustag (void*) ;
 void* rman_get_virtual (void*) ;

int
oce_hw_pci_alloc(POCE_SOFTC sc)
{
 int rr, pci_cfg_barnum = 0;
 pci_sli_intf_t intf;

 pci_enable_busmaster(sc->dev);

 oce_get_pci_capabilities(sc);

 sc->fn = pci_get_function(sc->dev);


 if (IS_BE(sc) && (sc->flags & OCE_FLAGS_BE2))
  pci_cfg_barnum = OCE_DEV_BE2_CFG_BAR;
 else
  pci_cfg_barnum = OCE_DEV_CFG_BAR;

 rr = PCIR_BAR(pci_cfg_barnum);

 if (IS_BE(sc) || IS_SH(sc))
  sc->devcfg_res = bus_alloc_resource_any(sc->dev,
    SYS_RES_MEMORY, &rr,
    RF_ACTIVE|RF_SHAREABLE);
 else
  sc->devcfg_res = bus_alloc_resource_anywhere(sc->dev,
    SYS_RES_MEMORY, &rr, 32768,
    RF_ACTIVE|RF_SHAREABLE);

 if (!sc->devcfg_res)
  goto error;

 sc->devcfg_btag = rman_get_bustag(sc->devcfg_res);
 sc->devcfg_bhandle = rman_get_bushandle(sc->devcfg_res);
 sc->devcfg_vhandle = rman_get_virtual(sc->devcfg_res);




 intf.dw0 = pci_read_config((sc)->dev,OCE_INTF_REG_OFFSET,4);

 if (intf.bits.sli_valid != OCE_INTF_VALID_SIG)
  goto error;

 if (intf.bits.sli_rev != OCE_INTF_SLI_REV4) {
  device_printf(sc->dev, "Adapter doesnt support SLI4\n");
  goto error;
 }

 if (intf.bits.sli_if_type == OCE_INTF_IF_TYPE_1)
  sc->flags |= OCE_FLAGS_MBOX_ENDIAN_RQD;

 if (intf.bits.sli_hint1 == OCE_INTF_FUNC_RESET_REQD)
  sc->flags |= OCE_FLAGS_FUNCRESET_RQD;

 if (intf.bits.sli_func_type == OCE_INTF_VIRT_FUNC)
  sc->flags |= OCE_FLAGS_VIRTUAL_PORT;


 if (IS_BE(sc) || IS_SH(sc)) {

  rr = PCIR_BAR(OCE_PCI_CSR_BAR);
  sc->csr_res = bus_alloc_resource_any(sc->dev,
    SYS_RES_MEMORY, &rr, RF_ACTIVE|RF_SHAREABLE);
  if (!sc->csr_res)
   goto error;
  sc->csr_btag = rman_get_bustag(sc->csr_res);
  sc->csr_bhandle = rman_get_bushandle(sc->csr_res);
  sc->csr_vhandle = rman_get_virtual(sc->csr_res);


  rr = PCIR_BAR(OCE_PCI_DB_BAR);
  sc->db_res = bus_alloc_resource_any(sc->dev,
    SYS_RES_MEMORY, &rr, RF_ACTIVE|RF_SHAREABLE);
  if (!sc->db_res)
   goto error;
  sc->db_btag = rman_get_bustag(sc->db_res);
  sc->db_bhandle = rman_get_bushandle(sc->db_res);
  sc->db_vhandle = rman_get_virtual(sc->db_res);
 }

 return 0;

error:
 oce_hw_pci_free(sc);
 return ENXIO;
}
