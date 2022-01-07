
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct lmac {struct bgx* bgx; } ;
struct bgx {int bgx_id; scalar_t__ lmac_count; int * reg_base; int dev; } ;
typedef int device_t ;


 int BGX_NODE_ID_MASK ;
 int BGX_NODE_ID_SHIFT ;
 int ENXIO ;
 int MAX_BGX_PER_CN88XX ;
 int M_BGX ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCIR_BAR (int ) ;
 int PCI_CFG_REG_BAR_NUM ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bgx_get_qlm_mode (struct bgx*) ;
 int bgx_init_hw (struct bgx*) ;
 int bgx_init_phy (struct bgx*) ;
 int bgx_lmac_enable (struct bgx*,scalar_t__) ;
 struct bgx** bgx_vnic ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct lmac* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct bgx*,int ) ;
 struct bgx* malloc (int,int ,int) ;
 int nic_get_node_id (int *) ;
 int pci_disable_busmaster (int ) ;
 int pci_enable_busmaster (int ) ;
 int rman_get_rid (int *) ;
 int rman_get_start (int *) ;

__attribute__((used)) static int
thunder_bgx_attach(device_t dev)
{
 struct bgx *bgx;
 uint8_t lmacid;
 int err;
 int rid;
 struct lmac *lmac;

 bgx = malloc(sizeof(*bgx), M_BGX, (M_WAITOK | M_ZERO));
 bgx->dev = dev;

 lmac = device_get_softc(dev);
 lmac->bgx = bgx;

 pci_enable_busmaster(dev);

 rid = PCIR_BAR(PCI_CFG_REG_BAR_NUM);
 bgx->reg_base = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (bgx->reg_base == ((void*)0)) {
  device_printf(dev, "Could not allocate CSR memory space\n");
  err = ENXIO;
  goto err_disable_device;
 }

 bgx->bgx_id = (rman_get_start(bgx->reg_base) >> BGX_NODE_ID_SHIFT) &
     BGX_NODE_ID_MASK;
 bgx->bgx_id += nic_get_node_id(bgx->reg_base) * MAX_BGX_PER_CN88XX;

 bgx_vnic[bgx->bgx_id] = bgx;
 bgx_get_qlm_mode(bgx);

 err = bgx_init_phy(bgx);
 if (err != 0)
  goto err_free_res;

 bgx_init_hw(bgx);


 for (lmacid = 0; lmacid < bgx->lmac_count; lmacid++) {
  err = bgx_lmac_enable(bgx, lmacid);
  if (err) {
   device_printf(dev, "BGX%d failed to enable lmac%d\n",
    bgx->bgx_id, lmacid);
   goto err_free_res;
  }
 }

 return (0);

err_free_res:
 bgx_vnic[bgx->bgx_id] = ((void*)0);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(bgx->reg_base), bgx->reg_base);
err_disable_device:
 free(bgx, M_BGX);
 pci_disable_busmaster(dev);

 return (err);
}
