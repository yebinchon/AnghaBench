
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct bwi_softc {int dummy; } ;


 int BWI_ADDR_FILTER_CTRL ;
 int BWI_ADDR_FILTER_CTRL_SET ;
 int BWI_ADDR_FILTER_DATA ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int) ;
 int IEEE80211_ADDR_LEN ;

__attribute__((used)) static void
bwi_set_addr_filter(struct bwi_softc *sc, uint16_t addr_ofs,
      const uint8_t *addr)
{
 int i;

 CSR_WRITE_2(sc, BWI_ADDR_FILTER_CTRL,
      BWI_ADDR_FILTER_CTRL_SET | addr_ofs);

 for (i = 0; i < (IEEE80211_ADDR_LEN / 2); ++i) {
  uint16_t addr_val;

  addr_val = (uint16_t)addr[i * 2] |
      (((uint16_t)addr[(i * 2) + 1]) << 8);
  CSR_WRITE_2(sc, BWI_ADDR_FILTER_DATA, addr_val);
 }
}
