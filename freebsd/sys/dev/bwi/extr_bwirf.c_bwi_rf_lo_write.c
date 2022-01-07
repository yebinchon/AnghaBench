
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwi_rf_lo {scalar_t__ ctrl_hi; scalar_t__ ctrl_lo; } ;
struct bwi_mac {int dummy; } ;


 int BWI_PHYR_RF_LO ;
 int PHY_WRITE (struct bwi_mac*,int ,int) ;

__attribute__((used)) static void
bwi_rf_lo_write(struct bwi_mac *mac, const struct bwi_rf_lo *lo)
{
 uint16_t val;

 val = (uint8_t)lo->ctrl_lo;
 val |= ((uint8_t)lo->ctrl_hi) << 8;

 PHY_WRITE(mac, BWI_PHYR_RF_LO, val);
}
