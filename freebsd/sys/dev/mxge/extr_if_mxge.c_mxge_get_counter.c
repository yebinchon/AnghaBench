
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mxge_softc {int num_slices; TYPE_3__* ss; } ;
struct ifnet {int dummy; } ;
typedef int ift_counter ;
struct TYPE_5__ {TYPE_1__* br; } ;
struct TYPE_6__ {TYPE_2__ tx; int omcasts; int obytes; int oerrors; int opackets; int ipackets; } ;
struct TYPE_4__ {int br_drops; } ;
 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct mxge_softc* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
mxge_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct mxge_softc *sc;
 uint64_t rv;

 sc = if_getsoftc(ifp);
 rv = 0;

 switch (cnt) {
 case 133:
  for (int s = 0; s < sc->num_slices; s++)
   rv += sc->ss[s].ipackets;
  return (rv);
 case 129:
  for (int s = 0; s < sc->num_slices; s++)
   rv += sc->ss[s].opackets;
  return (rv);
 case 131:
  for (int s = 0; s < sc->num_slices; s++)
   rv += sc->ss[s].oerrors;
  return (rv);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
