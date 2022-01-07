
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bwn_mac {TYPE_2__* mac_sc; } ;
struct TYPE_3__ {int ic_macaddr; } ;
struct TYPE_4__ {TYPE_1__ sc_ic; } ;


 int BWN_MACFILTER_SELF ;
 int bwn_mac_setfilter (struct bwn_mac*,int ,int ) ;
 int bwn_mac_write_bssid (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_set_macaddr(struct bwn_mac *mac)
{

 bwn_mac_write_bssid(mac);
 bwn_mac_setfilter(mac, BWN_MACFILTER_SELF,
     mac->mac_sc->sc_ic.ic_macaddr);
}
