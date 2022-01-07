
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bwn_nphy_channeltab_entry_rev2 {scalar_t__ channel; } ;
struct bwn_mac {int dummy; } ;


 struct bwn_nphy_channeltab_entry_rev2* bwn_nphy_channeltab_rev2 ;
 unsigned int nitems (struct bwn_nphy_channeltab_entry_rev2*) ;

const struct bwn_nphy_channeltab_entry_rev2 *
bwn_nphy_get_chantabent_rev2(struct bwn_mac *mac, uint8_t channel)
{
 const struct bwn_nphy_channeltab_entry_rev2 *e;
 unsigned int i;

 for (i = 0; i < nitems(bwn_nphy_channeltab_rev2); i++) {
  e = &(bwn_nphy_channeltab_rev2[i]);
  if (e->channel == channel)
   return e;
 }

 return ((void*)0);
}
