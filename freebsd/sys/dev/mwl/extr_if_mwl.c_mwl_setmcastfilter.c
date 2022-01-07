
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_softc {int sc_mh; int sc_ec; } ;
struct ether_multistep {int dummy; } ;
struct ether_multi {int enm_addrlo; int enm_addrhi; } ;
struct TYPE_2__ {int if_flags; } ;


 int ETHER_FIRST_MULTI (struct ether_multistep,int *,struct ether_multi*) ;
 int ETHER_NEXT_MULTI (struct ether_multistep,struct ether_multi*) ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int MWL_HAL_MCAST_MAX ;
 TYPE_1__* ifp ;
 int mwl_hal_setmcast (int ,int,int *) ;

__attribute__((used)) static void
mwl_setmcastfilter(struct mwl_softc *sc)
{
}
