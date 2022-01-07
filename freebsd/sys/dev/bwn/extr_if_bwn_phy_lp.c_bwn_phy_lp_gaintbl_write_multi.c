
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_txgain_entry {int dummy; } ;
struct bwn_mac {int dummy; } ;


 int bwn_phy_lp_gaintbl_write (struct bwn_mac*,int,struct bwn_txgain_entry) ;

__attribute__((used)) static void
bwn_phy_lp_gaintbl_write_multi(struct bwn_mac *mac, int offset, int count,
    struct bwn_txgain_entry *table)
{
 int i;

 for (i = offset; i < count; i++)
  bwn_phy_lp_gaintbl_write(mac, i, table[i]);
}
