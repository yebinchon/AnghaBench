
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_OFDMTAB_NOISESCALE ;
 int BWN_TAB_NOISESCALE_SIZE ;
 int bwn_ofdmtab_write_2 (struct bwn_mac*,int ,int,int const) ;

__attribute__((used)) static void
bwn_wa_write_noisescale(struct bwn_mac *mac, const uint16_t *nst)
{
 int i;

 for (i = 0; i < BWN_TAB_NOISESCALE_SIZE; i++)
  bwn_ofdmtab_write_2(mac, BWN_OFDMTAB_NOISESCALE, i, nst[i]);
}
