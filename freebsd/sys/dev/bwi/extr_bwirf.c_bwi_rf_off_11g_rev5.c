
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int PHY_CLRBITS (struct bwi_mac*,int,int) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;

__attribute__((used)) static void
bwi_rf_off_11g_rev5(struct bwi_mac *mac)
{
 PHY_SETBITS(mac, 0x811, 0x8c);
 PHY_CLRBITS(mac, 0x812, 0x8c);
}
