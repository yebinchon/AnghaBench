
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int mcs_map; int mcs_tag; int mcs_addr; int dev; struct fxp_cb_mcs* mcsp; } ;
struct fxp_cb_mcs {int link_addr; scalar_t__ cb_status; int cb_command; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_1 (struct fxp_softc*,int ) ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int ) ;
 int DELAY (int) ;
 int FXP_CB_COMMAND_EL ;
 int FXP_CB_COMMAND_MCAS ;
 int FXP_CSR_SCB_GENERAL ;
 int FXP_CSR_SCB_RUSCUS ;
 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 int FXP_SCB_COMMAND_CU_START ;
 int FXP_SCB_CUS_IDLE ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*) ;
 int fxp_dma_wait (struct fxp_softc*,scalar_t__*,int ,int ) ;
 int fxp_mc_addrs (struct fxp_softc*) ;
 int fxp_scb_cmd (struct fxp_softc*,int ) ;
 int fxp_scb_wait (struct fxp_softc*) ;
 int htole16 (int) ;

__attribute__((used)) static void
fxp_mc_setup(struct fxp_softc *sc)
{
 struct fxp_cb_mcs *mcsp;
 int count;

 FXP_LOCK_ASSERT(sc, MA_OWNED);

 mcsp = sc->mcsp;
 mcsp->cb_status = 0;
 mcsp->cb_command = htole16(FXP_CB_COMMAND_MCAS | FXP_CB_COMMAND_EL);
 mcsp->link_addr = 0xffffffff;
 fxp_mc_addrs(sc);





 count = 100;
 while ((CSR_READ_1(sc, FXP_CSR_SCB_RUSCUS) >> 6) !=
     FXP_SCB_CUS_IDLE && --count)
  DELAY(10);
 if (count == 0) {
  device_printf(sc->dev, "command queue timeout\n");
  return;
 }




 fxp_scb_wait(sc);
 bus_dmamap_sync(sc->mcs_tag, sc->mcs_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, FXP_CSR_SCB_GENERAL, sc->mcs_addr);
 fxp_scb_cmd(sc, FXP_SCB_COMMAND_CU_START);

 fxp_dma_wait(sc, &mcsp->cb_status, sc->mcs_tag, sc->mcs_map);
}
