
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
struct bwi_ring_data {int dummy; } ;
typedef int bus_addr_t ;



__attribute__((used)) static void
bwi_setup_tx_desc64(struct bwi_softc *sc, struct bwi_ring_data *rd,
      int buf_idx, bus_addr_t paddr, int buf_len)
{

}
