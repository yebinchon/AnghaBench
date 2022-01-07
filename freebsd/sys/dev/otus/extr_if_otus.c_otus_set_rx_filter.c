
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct otus_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ ic_allmulti; scalar_t__ ic_promisc; scalar_t__ ic_opmode; } ;


 int AR_MAC_REG_FRAMETYPE_FILTER ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 TYPE_1__* ic ;
 int otus_write (struct otus_softc*,int ,int) ;

__attribute__((used)) static void
otus_set_rx_filter(struct otus_softc *sc)
{


 OTUS_LOCK_ASSERT(sc);
  otus_write(sc, AR_MAC_REG_FRAMETYPE_FILTER, 0x0500ffff);



}
