
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pfsync_state {int dummy; } ;
struct pfsync_softc {scalar_t__ sc_ureq_sent; int sc_flags; int sc_bulkfail_tmo; int sc_bulk_tries; TYPE_1__* sc_ifp; } ;
struct pfsync_pkt {int dummy; } ;
struct pfsync_bus {int status; int endtime; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_8__ {int limit; } ;
struct TYPE_7__ {int debug; } ;
struct TYPE_6__ {int pfsyncs_badlen; } ;
struct TYPE_5__ {int if_mtu; } ;


 int PFSYNCF_OK ;
 int PFSYNC_BLOCK (struct pfsync_softc*) ;
 int PFSYNC_BUNLOCK (struct pfsync_softc*) ;


 int PFSYNC_MINPKT ;
 int PF_DEBUG_MISC ;
 size_t PF_LIMIT_STATES ;
 TYPE_4__* V_pf_limits ;
 TYPE_3__ V_pf_status ;
 int V_pfsync_carp_adj ;
 struct pfsync_softc* V_pfsyncif ;
 TYPE_2__ V_pfsyncstats ;
 int callout_reset (int *,int,int ,struct pfsync_softc*) ;
 int callout_stop (int *) ;
 int carp_demote_adj_p (int ,char*) ;
 int hz ;
 struct mbuf* m_pulldown (struct mbuf*,int,int,int*) ;
 scalar_t__ ntohl (int ) ;
 int pfsync_bulk_fail ;
 int printf (char*) ;
 int stub1 (int ,char*) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static int
pfsync_in_bus(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
 struct pfsync_softc *sc = V_pfsyncif;
 struct pfsync_bus *bus;
 struct mbuf *mp;
 int len = count * sizeof(*bus);
 int offp;

 PFSYNC_BLOCK(sc);


 if (sc->sc_ureq_sent == 0) {
  PFSYNC_BUNLOCK(sc);
  return (len);
 }

 mp = m_pulldown(m, offset, len, &offp);
 if (mp == ((void*)0)) {
  PFSYNC_BUNLOCK(sc);
  V_pfsyncstats.pfsyncs_badlen++;
  return (-1);
 }
 bus = (struct pfsync_bus *)(mp->m_data + offp);

 switch (bus->status) {
 case 128:
  callout_reset(&sc->sc_bulkfail_tmo, 4 * hz +
      V_pf_limits[PF_LIMIT_STATES].limit /
      ((sc->sc_ifp->if_mtu - PFSYNC_MINPKT) /
      sizeof(struct pfsync_state)),
      pfsync_bulk_fail, sc);
  if (V_pf_status.debug >= PF_DEBUG_MISC)
   printf("pfsync: received bulk update start\n");
  break;

 case 129:
  if (time_uptime - ntohl(bus->endtime) >=
      sc->sc_ureq_sent) {

   sc->sc_ureq_sent = 0;
   sc->sc_bulk_tries = 0;
   callout_stop(&sc->sc_bulkfail_tmo);
   if (!(sc->sc_flags & PFSYNCF_OK) && carp_demote_adj_p)
    (*carp_demote_adj_p)(-V_pfsync_carp_adj,
        "pfsync bulk done");
   sc->sc_flags |= PFSYNCF_OK;
   if (V_pf_status.debug >= PF_DEBUG_MISC)
    printf("pfsync: received valid "
        "bulk update end\n");
  } else {
   if (V_pf_status.debug >= PF_DEBUG_MISC)
    printf("pfsync: received invalid "
        "bulk update end: bad timestamp\n");
  }
  break;
 }
 PFSYNC_BUNLOCK(sc);

 return (len);
}
