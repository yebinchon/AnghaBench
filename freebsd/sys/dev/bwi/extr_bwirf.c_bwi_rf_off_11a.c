
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int PHY_SETBITS (struct bwi_mac*,int,int) ;
 int PHY_WRITE (struct bwi_mac*,int,int) ;
 int RF_WRITE (struct bwi_mac*,int,int) ;

__attribute__((used)) static void
bwi_rf_off_11a(struct bwi_mac *mac)
{
 RF_WRITE(mac, 0x4, 0xff);
 RF_WRITE(mac, 0x5, 0xfb);

 PHY_SETBITS(mac, 0x10, 0x8);
 PHY_SETBITS(mac, 0x11, 0x8);

 PHY_WRITE(mac, 0x15, 0xaa00);
}
