
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_mv_softc {int dev; } ;


 int DW_MSI_INTR0_MASK ;
 int INT_A_ASSERT_MASK ;
 int INT_B_ASSERT_MASK ;
 int INT_C_ASSERT_MASK ;
 int INT_D_ASSERT_MASK ;
 int MV_ARCACHE_TRC_REG ;
 int MV_ARUSER_REG ;
 int MV_AWCACHE_TRC_REG ;
 int MV_AWUSER_REG ;
 int MV_ERR_INT_MASK ;
 int MV_GLOBAL_CONTROL_REG ;
 int MV_INT_CAUSE1 ;
 int MV_INT_CAUSE2 ;
 int MV_INT_MASK1 ;
 int MV_INT_MASK2 ;
 int pci_dw_dbi_rd4 (int ,int ) ;
 int pci_dw_dbi_wr4 (int ,int ,int) ;

__attribute__((used)) static void
pci_mv_init(struct pci_mv_softc *sc)
{
 uint32_t reg;



 reg = pci_dw_dbi_rd4(sc->dev, MV_GLOBAL_CONTROL_REG);
 reg &= ~0x000000F0;
 reg |= 0x000000040;
 pci_dw_dbi_wr4(sc->dev, MV_GLOBAL_CONTROL_REG, reg);


 pci_dw_dbi_wr4(sc->dev, MV_ARCACHE_TRC_REG, 0x3511);
 pci_dw_dbi_wr4(sc->dev, MV_AWCACHE_TRC_REG, 0x5311);


 pci_dw_dbi_wr4(sc->dev, MV_ARUSER_REG, 0x0002);
 pci_dw_dbi_wr4(sc->dev, MV_AWUSER_REG, 0x0002);


 reg = pci_dw_dbi_rd4(sc->dev, MV_INT_MASK1);
 reg |= INT_A_ASSERT_MASK | INT_B_ASSERT_MASK |
        INT_C_ASSERT_MASK | INT_D_ASSERT_MASK;
 pci_dw_dbi_wr4(sc->dev, MV_INT_MASK1, reg);


 pci_dw_dbi_wr4(sc->dev, DW_MSI_INTR0_MASK, 0xFFFFFFFF);
 pci_dw_dbi_wr4(sc->dev, MV_INT_MASK1, 0xFFFFFFFF);
 pci_dw_dbi_wr4(sc->dev, MV_INT_MASK2, 0xFFFFFFFF);
 pci_dw_dbi_wr4(sc->dev, MV_INT_CAUSE1, 0xFFFFFFFF);
 pci_dw_dbi_wr4(sc->dev, MV_INT_CAUSE2, 0xFFFFFFFF);


 pci_dw_dbi_wr4(sc->dev, MV_ERR_INT_MASK, 0);
}
