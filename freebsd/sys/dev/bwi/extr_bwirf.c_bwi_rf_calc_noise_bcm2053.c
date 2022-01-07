
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwi_mac {int dummy; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_RF_NOISE ;
 scalar_t__ MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;

__attribute__((used)) static int
bwi_rf_calc_noise_bcm2053(struct bwi_mac *mac)
{
 uint16_t val;
 int noise;

 val = MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_RF_NOISE);
 noise = (int)val;

 noise = ((noise - 11) * 103) / 64;
 noise -= 109;
 return noise;
}
