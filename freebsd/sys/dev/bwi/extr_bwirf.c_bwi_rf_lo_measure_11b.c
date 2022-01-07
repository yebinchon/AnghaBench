
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwi_mac {int dummy; } ;


 int DELAY (int) ;
 scalar_t__ PHY_READ (struct bwi_mac*,int) ;
 int PHY_WRITE (struct bwi_mac*,int,int) ;

__attribute__((used)) static uint16_t
bwi_rf_lo_measure_11b(struct bwi_mac *mac)
{
 uint16_t val;
 int i;

 val = 0;
 for (i = 0; i < 10; ++i) {
  PHY_WRITE(mac, 0x15, 0xafa0);
  DELAY(1);
  PHY_WRITE(mac, 0x15, 0xefa0);
  DELAY(10);
  PHY_WRITE(mac, 0x15, 0xffa0);
  DELAY(40);

  val += PHY_READ(mac, 0x2c);
 }
 return val;
}
