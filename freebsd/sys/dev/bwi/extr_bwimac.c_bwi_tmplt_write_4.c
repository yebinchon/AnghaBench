
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_mac {int mac_flags; struct bwi_softc* mac_sc; } ;


 int BWI_MAC_F_BSWAP ;
 int BWI_MAC_TMPLT_CTRL ;
 int BWI_MAC_TMPLT_DATA ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int bswap32 (int ) ;

void
bwi_tmplt_write_4(struct bwi_mac *mac, uint32_t ofs, uint32_t val)
{
 struct bwi_softc *sc = mac->mac_sc;

 if (mac->mac_flags & BWI_MAC_F_BSWAP)
  val = bswap32(val);

 CSR_WRITE_4(sc, BWI_MAC_TMPLT_CTRL, ofs);
 CSR_WRITE_4(sc, BWI_MAC_TMPLT_DATA, val);
}
