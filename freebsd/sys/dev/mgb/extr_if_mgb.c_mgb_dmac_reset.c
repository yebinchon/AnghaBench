
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int MGB_DMAC_CMD ;
 int MGB_DMAC_RESET ;
 int mgb_wait_for_bits (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static int
mgb_dmac_reset(struct mgb_softc *sc)
{

 CSR_WRITE_REG(sc, MGB_DMAC_CMD, MGB_DMAC_RESET);
 return (mgb_wait_for_bits(sc, MGB_DMAC_CMD, 0, MGB_DMAC_RESET));
}
