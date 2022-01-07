
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_mtu; } ;
struct hn_softc {TYPE_2__* hn_rx_ring; struct ifnet* hn_ifp; } ;
struct TYPE_3__ {scalar_t__ lro_length_lim; } ;
struct TYPE_4__ {TYPE_1__ hn_lro; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 scalar_t__ HN_LRO_LENLIM_MIN (struct ifnet*) ;
 int hn_set_lro_lenlim (struct hn_softc*,scalar_t__) ;
 int hn_set_tso_maxsize (struct hn_softc*,int ,int ) ;
 int hn_tso_maxlen ;

__attribute__((used)) static void
hn_mtu_change_fixup(struct hn_softc *sc)
{
 struct ifnet *ifp;

 HN_LOCK_ASSERT(sc);
 ifp = sc->hn_ifp;

 hn_set_tso_maxsize(sc, hn_tso_maxlen, ifp->if_mtu);




}
