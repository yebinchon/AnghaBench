
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rf {scalar_t__ rf_type; int rf_flags; int rf_calib; } ;
struct bwi_mac {struct bwi_rf mac_rf; } ;


 int BWI_RF_F_INITED ;
 scalar_t__ BWI_RF_T_BCM2060 ;
 int RF_WRITE (struct bwi_mac*,int,int ) ;
 int bwi_rf_init_bcm2050 (struct bwi_mac*) ;

void
bwi_rf_init(struct bwi_mac *mac)
{
 struct bwi_rf *rf = &mac->mac_rf;

 if (rf->rf_type == BWI_RF_T_BCM2060) {

 } else {
  if (rf->rf_flags & BWI_RF_F_INITED)
   RF_WRITE(mac, 0x78, rf->rf_calib);
  else
   bwi_rf_init_bcm2050(mac);
 }
}
