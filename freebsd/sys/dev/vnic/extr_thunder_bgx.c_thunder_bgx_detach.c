
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct lmac {struct bgx* bgx; } ;
struct bgx {scalar_t__ lmac_count; size_t bgx_id; int reg_base; } ;
typedef int device_t ;


 int M_BGX ;
 int SYS_RES_MEMORY ;
 int bgx_lmac_disable (struct bgx*,scalar_t__) ;
 int ** bgx_vnic ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct lmac* device_get_softc (int ) ;
 int free (struct bgx*,int ) ;
 int pci_disable_busmaster (int ) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
thunder_bgx_detach(device_t dev)
{
 struct lmac *lmac;
 struct bgx *bgx;
 uint8_t lmacid;

 lmac = device_get_softc(dev);
 bgx = lmac->bgx;

 for (lmacid = 0; lmacid < bgx->lmac_count; lmacid++)
  bgx_lmac_disable(bgx, lmacid);

 bgx_vnic[bgx->bgx_id] = ((void*)0);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(bgx->reg_base), bgx->reg_base);
 free(bgx, M_BGX);
 pci_disable_busmaster(dev);

 return (0);
}
