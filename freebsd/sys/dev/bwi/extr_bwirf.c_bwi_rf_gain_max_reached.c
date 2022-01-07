
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int DELAY (int) ;
 int PHY_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int PHY_READ (struct bwi_mac*,int) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;

__attribute__((used)) static int
bwi_rf_gain_max_reached(struct bwi_mac *mac, int idx)
{
 PHY_FILT_SETBITS(mac, 0x812, 0xf0ff, idx << 8);
 PHY_FILT_SETBITS(mac, 0x15, 0xfff, 0xa000);
 PHY_SETBITS(mac, 0x15, 0xf000);

 DELAY(20);

 return (PHY_READ(mac, 0x2d) >= 0xdfc);
}
