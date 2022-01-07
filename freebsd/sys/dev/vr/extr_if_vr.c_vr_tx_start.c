
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ vr_tx_cnt; int vr_tx_cons; } ;
struct vr_softc {int vr_watchdog_timer; TYPE_1__ vr_cdata; } ;
typedef int bus_addr_t ;


 int CSR_READ_1 (struct vr_softc*,int ) ;
 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 int CSR_WRITE_4 (struct vr_softc*,int ,int ) ;
 int VR_ADDR_LO (int ) ;
 int VR_CR0 ;
 int VR_CR0_TX_GO ;
 int VR_CR0_TX_ON ;
 int VR_SETBIT (struct vr_softc*,int ,int ) ;
 int VR_TXADDR ;
 int VR_TX_RING_ADDR (struct vr_softc*,int ) ;

__attribute__((used)) static void
vr_tx_start(struct vr_softc *sc)
{
 bus_addr_t addr;
 uint8_t cmd;

 cmd = CSR_READ_1(sc, VR_CR0);
 if ((cmd & VR_CR0_TX_ON) == 0) {
  addr = VR_TX_RING_ADDR(sc, sc->vr_cdata.vr_tx_cons);
  CSR_WRITE_4(sc, VR_TXADDR, VR_ADDR_LO(addr));
  cmd |= VR_CR0_TX_ON;
  CSR_WRITE_1(sc, VR_CR0, cmd);
 }
 if (sc->vr_cdata.vr_tx_cnt != 0) {
  sc->vr_watchdog_timer = 5;
  VR_SETBIT(sc, VR_CR0, VR_CR0_TX_GO);
 }
}
