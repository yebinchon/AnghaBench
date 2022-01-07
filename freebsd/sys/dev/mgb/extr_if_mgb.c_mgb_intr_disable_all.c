
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;
typedef int if_ctx_t ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int MGB_DMAC_INTR_ENBL_CLR ;
 int MGB_DMAC_INTR_STS ;
 int MGB_INTR_ENBL_CLR ;
 int MGB_INTR_STS ;
 int MGB_INTR_VEC_ENBL_CLR ;
 int UINT32_MAX ;
 struct mgb_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
mgb_intr_disable_all(if_ctx_t ctx)
{
 struct mgb_softc *sc;

 sc = iflib_get_softc(ctx);
 CSR_WRITE_REG(sc, MGB_INTR_ENBL_CLR, UINT32_MAX);
 CSR_WRITE_REG(sc, MGB_INTR_VEC_ENBL_CLR, UINT32_MAX);
 CSR_WRITE_REG(sc, MGB_INTR_STS, UINT32_MAX);

 CSR_WRITE_REG(sc, MGB_DMAC_INTR_ENBL_CLR, UINT32_MAX);
 CSR_WRITE_REG(sc, MGB_DMAC_INTR_STS, UINT32_MAX);
}
