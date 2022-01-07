
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int PHY_WRITE (struct bwi_mac*,int,int) ;

__attribute__((used)) static void
bwi_rf_off_11bg(struct bwi_mac *mac)
{
 PHY_WRITE(mac, 0x15, 0xaa00);
}
