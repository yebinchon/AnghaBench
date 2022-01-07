
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
struct bwi_ring_data {int rdata_desc; } ;
typedef int bus_addr_t ;


 int BWI_TX_NDESC ;
 int KASSERT (int,char*) ;
 int bwi_setup_desc32 (struct bwi_softc*,int ,int,int,int ,int,int) ;

__attribute__((used)) static void
bwi_setup_tx_desc32(struct bwi_softc *sc, struct bwi_ring_data *rd,
      int buf_idx, bus_addr_t paddr, int buf_len)
{
 KASSERT(buf_idx < BWI_TX_NDESC, ("buf_idx %d", buf_idx));
 bwi_setup_desc32(sc, rd->rdata_desc, BWI_TX_NDESC, buf_idx,
    paddr, buf_len, 1);
}
