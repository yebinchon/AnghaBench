
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct bwn_phy_n {scalar_t__ hang_avoid; } ;
struct TYPE_2__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {int mac_sc; TYPE_1__ mac_phy; } ;
struct bwn_c32 {int i; int q; } ;


 int BWN_ERRPRINTF (int ,char*) ;
 int BWN_NTAB32 (int,int ) ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bwn_nphy_stay_in_carrier_search (struct bwn_mac*,int) ;
 int bwn_ntab_write_bulk (struct bwn_mac*,int ,int,int*) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int) ;

__attribute__((used)) static int bwn_nphy_load_samples(struct bwn_mac *mac,
     struct bwn_c32 *samples, uint16_t len) {
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
 uint16_t i;
 uint32_t *data;

 data = malloc(len * sizeof(uint32_t), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!data) {
  BWN_ERRPRINTF(mac->mac_sc, "allocation for samples loading failed\n");
  return -ENOMEM;
 }
 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 1);

 for (i = 0; i < len; i++) {
  data[i] = (samples[i].i & 0x3FF << 10);
  data[i] |= samples[i].q & 0x3FF;
 }
 bwn_ntab_write_bulk(mac, BWN_NTAB32(17, 0), len, data);

 free(data, M_DEVBUF);
 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 0);
 return 0;
}
