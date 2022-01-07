
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_GTABCTL ;
 int BWN_PHY_GTABDATA ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,scalar_t__) ;

__attribute__((used)) static void
bwn_gtab_write(struct bwn_mac *mac, uint16_t table, uint16_t offset,
    uint16_t value)
{

 BWN_PHY_WRITE(mac, BWN_PHY_GTABCTL, table + offset);
 BWN_PHY_WRITE(mac, BWN_PHY_GTABDATA, value);
}
