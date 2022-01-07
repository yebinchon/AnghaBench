
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct bwi_rf {scalar_t__* rf_nrssi_table; } ;
struct bwi_mac {struct bwi_rf mac_rf; TYPE_1__* mac_sc; } ;
struct TYPE_2__ {int sc_card_flags; } ;


 int BWI_CARD_F_SW_NRSSI ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_RF_NOISE ;
 int BWI_NRSSI_TBLSZ ;
 scalar_t__ MOBJ_READ_2 (struct bwi_mac*,int ,int ) ;

__attribute__((used)) static int
bwi_rf_calc_noise_bcm2050(struct bwi_mac *mac)
{
 uint16_t val;
 int noise;

 val = MOBJ_READ_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_RF_NOISE);
 noise = (int)val;

 if (mac->mac_sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) {
  struct bwi_rf *rf = &mac->mac_rf;

  if (noise >= BWI_NRSSI_TBLSZ)
   noise = BWI_NRSSI_TBLSZ - 1;

  noise = ((31 - (int)rf->rf_nrssi_table[noise]) * -131) / 128;
  noise -= 67;
 } else {
  noise = ((31 - noise) * -149) / 128;
  noise -= 68;
 }
 return noise;
}
