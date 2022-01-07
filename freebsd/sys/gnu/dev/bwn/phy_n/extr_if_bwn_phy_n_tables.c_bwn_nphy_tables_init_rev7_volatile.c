
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_mac {int mac_sc; } ;


 int BWN_ERRPRINTF (int ,char*,int) ;
 int BWN_NTAB8 (int,int) ;
 int bwn_nphy_tables_get_antswlut (struct bwn_mac*,int*) ;
 int bwn_ntab_write (struct bwn_mac*,int ,int const) ;
 int nitems (int const*) ;

__attribute__((used)) static void bwn_nphy_tables_init_rev7_volatile(struct bwn_mac *mac)
{
 int core, error, offset, i;
 uint8_t antswlut;

 const int antswlut0_offsets[] = { 0, 4, 8, };
 const uint8_t antswlut0_values[][3] = {
  { 0x2, 0x12, 0x8 },
  { 0x2, 0x18, 0x2 },
 };

 if ((error = bwn_nphy_tables_get_antswlut(mac, &antswlut)))
  return;

 switch (antswlut) {
 case 0:
  for (core = 0; core < 2; core++) {
   for (i = 0; i < nitems(antswlut0_values[0]); i++) {
    offset = core ? 0x20 : 0x00;
    offset += antswlut0_offsets[i];
    bwn_ntab_write(mac, BWN_NTAB8(9, offset),
            antswlut0_values[core][i]);
   }
  }
  break;
 default:
  BWN_ERRPRINTF(mac->mac_sc, "Unsupported antswlut: %d\n", antswlut);
  break;
 }
}
