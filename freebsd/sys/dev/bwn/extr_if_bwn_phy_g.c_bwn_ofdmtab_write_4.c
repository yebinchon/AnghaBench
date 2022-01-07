
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct bwn_phy_g {scalar_t__ pg_ofdmtab_dir; int pg_ofdmtab_addr; } ;
struct TYPE_2__ {struct bwn_phy_g phy_g; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 scalar_t__ BWN_OFDMTAB_DIR_WRITE ;
 int BWN_PHY_OTABLECTL ;
 int BWN_PHY_OTABLEI ;
 int BWN_PHY_OTABLEQ ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_ofdmtab_write_4(struct bwn_mac *mac, uint16_t table, uint16_t offset,
    uint32_t value)
{
 struct bwn_phy_g *pg = &mac->mac_phy.phy_g;
 uint16_t addr;

 addr = table + offset;
 if ((pg->pg_ofdmtab_dir != BWN_OFDMTAB_DIR_WRITE) ||
     (addr - 1 != pg->pg_ofdmtab_addr)) {
  BWN_PHY_WRITE(mac, BWN_PHY_OTABLECTL, addr);
  pg->pg_ofdmtab_dir = BWN_OFDMTAB_DIR_WRITE;
 }
 pg->pg_ofdmtab_addr = addr;

 BWN_PHY_WRITE(mac, BWN_PHY_OTABLEI, value);
 BWN_PHY_WRITE(mac, BWN_PHY_OTABLEQ, (value >> 16));
}
