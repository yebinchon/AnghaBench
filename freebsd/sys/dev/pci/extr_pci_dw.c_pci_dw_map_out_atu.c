
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pci_dw_softc {int dev; } ;


 int DBI_RD4 (struct pci_dw_softc*,int ) ;
 int DBI_WR4 (struct pci_dw_softc*,int ,int) ;
 int DELAY (int) ;
 int DW_IATU_CTRL1 ;
 int DW_IATU_CTRL2 ;
 int DW_IATU_LIMIT_ADDR ;
 int DW_IATU_LWR_BASE_ADDR ;
 int DW_IATU_LWR_TARGET_ADDR ;
 int DW_IATU_UPPER_BASE_ADDR ;
 int DW_IATU_UPPER_TARGET_ADDR ;
 int DW_IATU_VIEWPORT ;
 int ETIMEDOUT ;
 int IATU_CTRL1_TYPE (int) ;
 int IATU_CTRL2_REGION_EN ;
 int IATU_REGION_INDEX (int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
pci_dw_map_out_atu(struct pci_dw_softc *sc, int idx, int type,
    uint64_t pa, uint64_t pci_addr, uint32_t size)
{
 uint32_t reg;
 int i;

 if (size == 0)
  return (0);

 DBI_WR4(sc, DW_IATU_VIEWPORT, IATU_REGION_INDEX(idx));
 DBI_WR4(sc, DW_IATU_LWR_BASE_ADDR, pa & 0xFFFFFFFF);
 DBI_WR4(sc, DW_IATU_UPPER_BASE_ADDR, (pa >> 32) & 0xFFFFFFFF);
 DBI_WR4(sc, DW_IATU_LIMIT_ADDR, (pa + size - 1) & 0xFFFFFFFF);
 DBI_WR4(sc, DW_IATU_LWR_TARGET_ADDR, pci_addr & 0xFFFFFFFF);
 DBI_WR4(sc, DW_IATU_UPPER_TARGET_ADDR, (pci_addr >> 32) & 0xFFFFFFFF);
 DBI_WR4(sc, DW_IATU_CTRL1, IATU_CTRL1_TYPE(type));
 DBI_WR4(sc, DW_IATU_CTRL2, IATU_CTRL2_REGION_EN);


 for (i = 10; i > 0; i--) {
  reg = DBI_RD4(sc, DW_IATU_CTRL2);
  if (reg & IATU_CTRL2_REGION_EN)
   return (0);
  DELAY(5);
 }
 device_printf(sc->dev,
     "Cannot map outbound region(%d) in iATU\n", idx);
 return (ETIMEDOUT);
}
