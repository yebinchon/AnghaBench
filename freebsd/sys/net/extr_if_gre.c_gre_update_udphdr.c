
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct udphdr {scalar_t__ uh_ulen; int uh_sum; void* uh_sport; void* uh_dport; } ;
struct gre_softc {int gre_options; int gre_port; } ;


 int GRE_UDPENCAP ;
 int GRE_UDPPORT ;
 int MPASS (int) ;
 int SA_XLOCKED ;
 int gre_ioctl_sx ;
 void* htons (int ) ;
 int sx_assert (int *,int ) ;

void
gre_update_udphdr(struct gre_softc *sc, struct udphdr *udp, uint16_t csum)
{

 sx_assert(&gre_ioctl_sx, SA_XLOCKED);
 MPASS(sc->gre_options & GRE_UDPENCAP);

 udp->uh_dport = htons(GRE_UDPPORT);
 udp->uh_sport = htons(sc->gre_port);
 udp->uh_sum = csum;
 udp->uh_ulen = 0;
}
