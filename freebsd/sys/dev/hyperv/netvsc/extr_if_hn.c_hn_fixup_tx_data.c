
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct hn_softc {scalar_t__ hn_chim_szmax; int hn_caps; int hn_tx_ring_cnt; TYPE_1__* hn_tx_ring; int hn_ifp; } ;
struct TYPE_2__ {int hn_tx_flags; int hn_csum_assist; } ;


 int CSUM_IP ;
 int CSUM_IP6_TCP ;
 int CSUM_IP6_UDP ;
 int CSUM_IP_TCP ;
 int CSUM_IP_UDP ;
 int HN_CAP_HASHVAL ;
 int HN_CAP_IPCS ;
 int HN_CAP_TCP4CS ;
 int HN_CAP_TCP6CS ;
 int HN_CAP_UDP4CS ;
 int HN_CAP_UDP6CS ;
 int HN_TX_FLAG_HASHVAL ;
 scalar_t__ bootverbose ;
 scalar_t__ hn_enable_udp4cs ;
 scalar_t__ hn_enable_udp6cs ;
 int hn_set_chim_size (struct hn_softc*,scalar_t__) ;
 scalar_t__ hn_tx_chimney_size ;
 int if_printf (int ,char*) ;

__attribute__((used)) static void
hn_fixup_tx_data(struct hn_softc *sc)
{
 uint64_t csum_assist;
 int i;

 hn_set_chim_size(sc, sc->hn_chim_szmax);
 if (hn_tx_chimney_size > 0 &&
     hn_tx_chimney_size < sc->hn_chim_szmax)
  hn_set_chim_size(sc, hn_tx_chimney_size);

 csum_assist = 0;
 if (sc->hn_caps & HN_CAP_IPCS)
  csum_assist |= CSUM_IP;
 if (sc->hn_caps & HN_CAP_TCP4CS)
  csum_assist |= CSUM_IP_TCP;
 if ((sc->hn_caps & HN_CAP_UDP4CS) && hn_enable_udp4cs)
  csum_assist |= CSUM_IP_UDP;
 if (sc->hn_caps & HN_CAP_TCP6CS)
  csum_assist |= CSUM_IP6_TCP;
 if ((sc->hn_caps & HN_CAP_UDP6CS) && hn_enable_udp6cs)
  csum_assist |= CSUM_IP6_UDP;
 for (i = 0; i < sc->hn_tx_ring_cnt; ++i)
  sc->hn_tx_ring[i].hn_csum_assist = csum_assist;

 if (sc->hn_caps & HN_CAP_HASHVAL) {



  if (bootverbose)
   if_printf(sc->hn_ifp, "support HASHVAL pktinfo\n");
  for (i = 0; i < sc->hn_tx_ring_cnt; ++i)
   sc->hn_tx_ring[i].hn_tx_flags |= HN_TX_FLAG_HASHVAL;
 }
}
