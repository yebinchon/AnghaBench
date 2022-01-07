
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ state; } ;
struct pfsync_state {scalar_t__ timeout; TYPE_2__ dst; TYPE_2__ src; int creatorid; int id; } ;
struct pfsync_softc {int dummy; } ;
struct pfsync_pkt {int flags; } ;
struct TYPE_12__ {scalar_t__ state; } ;
struct pf_state {int state_flags; scalar_t__ timeout; void* pfsync_time; void* expire; TYPE_5__ dst; TYPE_5__ src; TYPE_1__** key; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_14__ {scalar_t__ debug; } ;
struct TYPE_13__ {int pfsyncs_stale; int pfsyncs_badstate; int pfsyncs_badval; int pfsyncs_badlen; } ;
struct TYPE_10__ {scalar_t__ proto; } ;


 scalar_t__ IPPROTO_TCP ;
 int PFSTATE_ACK ;
 scalar_t__ PFTM_MAX ;
 scalar_t__ PF_DEBUG_MISC ;
 size_t PF_SK_WIRE ;
 int PF_STATE_UNLOCK (struct pf_state*) ;
 scalar_t__ PF_TCPS_PROXY_DST ;
 TYPE_9__ V_pf_status ;
 struct pfsync_softc* V_pfsyncif ;
 TYPE_8__ V_pfsyncstats ;
 struct mbuf* m_pulldown (struct mbuf*,int,int,int*) ;
 struct pf_state* pf_find_state_byid (int ,int ) ;
 int pf_state_peer_ntoh (TYPE_2__*,TYPE_5__*) ;
 int pfsync_alloc_scrub_memory (TYPE_2__*,TYPE_5__*) ;
 int pfsync_push_all (struct pfsync_softc*) ;
 scalar_t__ pfsync_state_import (struct pfsync_state*,int ) ;
 int pfsync_undefer_state (struct pf_state*,int) ;
 int pfsync_upd_tcp (struct pf_state*,TYPE_2__*,TYPE_2__*) ;
 int pfsync_update_state (struct pf_state*) ;
 int printf (char*) ;
 void* time_uptime ;

__attribute__((used)) static int
pfsync_in_upd(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
 struct pfsync_softc *sc = V_pfsyncif;
 struct pfsync_state *sa, *sp;
 struct pf_state *st;
 int sync;

 struct mbuf *mp;
 int len = count * sizeof(*sp);
 int offp, i;

 mp = m_pulldown(m, offset, len, &offp);
 if (mp == ((void*)0)) {
  V_pfsyncstats.pfsyncs_badlen++;
  return (-1);
 }
 sa = (struct pfsync_state *)(mp->m_data + offp);

 for (i = 0; i < count; i++) {
  sp = &sa[i];


  if (sp->timeout >= PFTM_MAX ||
      sp->src.state > PF_TCPS_PROXY_DST ||
      sp->dst.state > PF_TCPS_PROXY_DST) {
   if (V_pf_status.debug >= PF_DEBUG_MISC) {
    printf("pfsync_input: PFSYNC_ACT_UPD: "
        "invalid value\n");
   }
   V_pfsyncstats.pfsyncs_badval++;
   continue;
  }

  st = pf_find_state_byid(sp->id, sp->creatorid);
  if (st == ((void*)0)) {

   if (pfsync_state_import(sp, pkt->flags))
    V_pfsyncstats.pfsyncs_badstate++;
   continue;
  }

  if (st->state_flags & PFSTATE_ACK) {
   pfsync_undefer_state(st, 1);
  }

  if (st->key[PF_SK_WIRE]->proto == IPPROTO_TCP)
   sync = pfsync_upd_tcp(st, &sp->src, &sp->dst);
  else {
   sync = 0;





   if (st->src.state > sp->src.state)
    sync++;
   else
    pf_state_peer_ntoh(&sp->src, &st->src);
   if (st->dst.state > sp->dst.state)
    sync++;
   else
    pf_state_peer_ntoh(&sp->dst, &st->dst);
  }
  if (sync < 2) {
   pfsync_alloc_scrub_memory(&sp->dst, &st->dst);
   pf_state_peer_ntoh(&sp->dst, &st->dst);
   st->expire = time_uptime;
   st->timeout = sp->timeout;
  }
  st->pfsync_time = time_uptime;

  if (sync) {
   V_pfsyncstats.pfsyncs_stale++;

   pfsync_update_state(st);
   PF_STATE_UNLOCK(st);
   pfsync_push_all(sc);
   continue;
  }
  PF_STATE_UNLOCK(st);
 }

 return (len);
}
