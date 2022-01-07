
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_ring_data {int rdata_desc; } ;
struct bwi_softc {struct bwi_ring_data sc_rx_rdata; } ;
typedef int bus_addr_t ;


 int BWI_RX_NDESC ;
 int KASSERT (int,char*) ;
 int bwi_setup_desc32 (struct bwi_softc*,int ,int,int,int ,int,int ) ;

__attribute__((used)) static void
bwi_setup_rx_desc32(struct bwi_softc *sc, int buf_idx, bus_addr_t paddr,
      int buf_len)
{
 struct bwi_ring_data *rd = &sc->sc_rx_rdata;

 KASSERT(buf_idx < BWI_RX_NDESC, ("buf_idx %d", buf_idx));
 bwi_setup_desc32(sc, rd->rdata_desc, BWI_RX_NDESC, buf_idx,
    paddr, buf_len, 0);
}
