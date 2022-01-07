
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lagg_softc {int dummy; } ;
struct lacp_softc {struct lacp_aggregator* lsc_active_aggregator; } ;
struct lacp_opreq {int partner_state; void* partner_portno; void* partner_portprio; void* partner_key; int partner_mac; void* partner_prio; int actor_state; void* actor_portno; void* actor_portprio; void* actor_key; int actor_mac; void* actor_prio; } ;
struct TYPE_11__ {int lpi_portno; int lpi_prio; } ;
struct TYPE_10__ {int lsi_mac; int lsi_prio; } ;
struct TYPE_12__ {int lip_state; TYPE_5__ lip_portid; int lip_key; TYPE_4__ lip_systemid; } ;
struct TYPE_8__ {int lpi_portno; int lpi_prio; } ;
struct TYPE_7__ {int lsi_mac; int lsi_prio; } ;
struct TYPE_9__ {int lip_state; TYPE_2__ lip_portid; int lip_key; TYPE_1__ lip_systemid; } ;
struct lacp_aggregator {TYPE_6__ la_partner; TYPE_3__ la_actor; } ;


 int ETHER_ADDR_LEN ;
 int LACP_LOCK (struct lacp_softc*) ;
 struct lacp_softc* LACP_SOFTC (struct lagg_softc*) ;
 int LACP_UNLOCK (struct lacp_softc*) ;
 int bzero (struct lacp_opreq*,int) ;
 int memcpy (int *,int *,int ) ;
 void* ntohs (int ) ;

void
lacp_req(struct lagg_softc *sc, void *data)
{
 struct lacp_opreq *req = (struct lacp_opreq *)data;
 struct lacp_softc *lsc = LACP_SOFTC(sc);
 struct lacp_aggregator *la;

 bzero(req, sizeof(struct lacp_opreq));






 if (((void*)0) == lsc)
  return;

 la = lsc->lsc_active_aggregator;
 LACP_LOCK(lsc);
 if (la != ((void*)0)) {
  req->actor_prio = ntohs(la->la_actor.lip_systemid.lsi_prio);
  memcpy(&req->actor_mac, &la->la_actor.lip_systemid.lsi_mac,
      ETHER_ADDR_LEN);
  req->actor_key = ntohs(la->la_actor.lip_key);
  req->actor_portprio = ntohs(la->la_actor.lip_portid.lpi_prio);
  req->actor_portno = ntohs(la->la_actor.lip_portid.lpi_portno);
  req->actor_state = la->la_actor.lip_state;

  req->partner_prio = ntohs(la->la_partner.lip_systemid.lsi_prio);
  memcpy(&req->partner_mac, &la->la_partner.lip_systemid.lsi_mac,
      ETHER_ADDR_LEN);
  req->partner_key = ntohs(la->la_partner.lip_key);
  req->partner_portprio = ntohs(la->la_partner.lip_portid.lpi_prio);
  req->partner_portno = ntohs(la->la_partner.lip_portid.lpi_portno);
  req->partner_state = la->la_partner.lip_state;
 }
 LACP_UNLOCK(lsc);
}
