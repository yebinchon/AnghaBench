
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int vr_rx_cons; } ;
struct vr_softc {TYPE_1__ vr_cdata; } ;
typedef int bus_addr_t ;


 int CSR_READ_1 (struct vr_softc*,int ) ;
 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 int CSR_WRITE_4 (struct vr_softc*,int ,int ) ;
 int VR_ADDR_LO (int ) ;
 int VR_CR0 ;
 int VR_CR0_RX_GO ;
 int VR_CR0_RX_ON ;
 int VR_RXADDR ;
 int VR_RX_RING_ADDR (struct vr_softc*,int ) ;

__attribute__((used)) static void
vr_rx_start(struct vr_softc *sc)
{
 bus_addr_t addr;
 uint8_t cmd;

 cmd = CSR_READ_1(sc, VR_CR0);
 if ((cmd & VR_CR0_RX_ON) == 0) {
  addr = VR_RX_RING_ADDR(sc, sc->vr_cdata.vr_rx_cons);
  CSR_WRITE_4(sc, VR_RXADDR, VR_ADDR_LO(addr));
  cmd |= VR_CR0_RX_ON;
  CSR_WRITE_1(sc, VR_CR0, cmd);
 }
 CSR_WRITE_1(sc, VR_CR0, cmd | VR_CR0_RX_GO);
}
