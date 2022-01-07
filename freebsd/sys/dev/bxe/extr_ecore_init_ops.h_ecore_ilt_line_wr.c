
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int ILT_ADDR1 (int ) ;
 int ILT_ADDR2 (int ) ;
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT ;
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT_B0 ;
 int ecore_wr_64 (struct bxe_softc*,scalar_t__,int ,int ) ;

__attribute__((used)) static void ecore_ilt_line_wr(struct bxe_softc *sc, int abs_idx,
         ecore_dma_addr_t page_mapping)
{
 uint32_t reg;

 if (CHIP_IS_E1(sc))
  reg = PXP2_REG_RQ_ONCHIP_AT + abs_idx*8;
 else
  reg = PXP2_REG_RQ_ONCHIP_AT_B0 + abs_idx*8;

 ecore_wr_64(sc, reg, ILT_ADDR1(page_mapping), ILT_ADDR2(page_mapping));
}
