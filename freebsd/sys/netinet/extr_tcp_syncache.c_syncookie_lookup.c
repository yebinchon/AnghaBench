
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t odd_even; size_t mss_idx; size_t wscale_idx; scalar_t__ sack_ok; } ;
union syncookie {int cookie; TYPE_2__ flags; } ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int tcp_seq ;
struct tcpopt {int to_flags; int to_tsval; } ;
struct tcphdr {int th_ack; int th_seq; } ;
struct syncache_head {int dummy; } ;
struct syncache {int sc_irs; int sc_iss; int sc_flowlabel; int sc_requested_r_scale; int sc_wnd; scalar_t__ sc_rxmits; int sc_flags; int sc_tsoff; int sc_tsreflect; int sc_requested_s_scale; int sc_peer_mss; int sc_ip_tos; int sc_ip_ttl; int * sc_ipopts; int sc_inc; } ;
struct socket {int sol_sbrcv_hiwat; } ;
struct in_conninfo {int inc_flags; } ;
struct TYPE_5__ {int ** key; } ;
struct TYPE_8__ {TYPE_1__ secret; } ;
struct TYPE_7__ {int inp_flags; int inp_ip_tos; int inp_ip_ttl; } ;


 int IN6P_AUTOFLOWLABEL ;

 int IPV6_FLOWLABEL_MASK ;
 int SCF_SACK ;
 int SCF_SIGNATURE ;
 int SCF_TIMESTAMP ;
 int SCF_WINSCALE ;
 int TCPSTAT_INC (int ) ;
 int TCP_MAXWIN ;
 int TCP_MAX_WINSHIFT ;
 int TOF_SIGNATURE ;
 int TOF_TS ;
 TYPE_4__ V_tcp_syncache ;
 int bcopy (struct in_conninfo*,int *,int) ;
 int imax (int,int ) ;
 int imin (int,int) ;
 int sb_max ;
 TYPE_3__* sotoinpcb (struct socket*) ;
 int syncookie_mac (struct in_conninfo*,int,int,int *,uintptr_t) ;
 int tcp_new_ts_offset (struct in_conninfo*) ;
 int * tcp_sc_msstab ;
 int * tcp_sc_wstab ;
 int tcps_sc_recvcookie ;

__attribute__((used)) static struct syncache *
syncookie_lookup(struct in_conninfo *inc, struct syncache_head *sch,
    struct syncache *sc, struct tcphdr *th, struct tcpopt *to,
    struct socket *lso)
{
 uint32_t hash;
 uint8_t *secbits;
 tcp_seq ack, seq;
 int wnd, wscale = 0;
 union syncookie cookie;





 ack = th->th_ack - 1;
 seq = th->th_seq - 1;





 cookie.cookie = (ack & 0xff) ^ (ack >> 24);


 secbits = V_tcp_syncache.secret.key[cookie.flags.odd_even];

 hash = syncookie_mac(inc, seq, cookie.cookie, secbits, (uintptr_t)sch);


 if ((ack & ~0xff) != (hash & ~0xff))
  return (((void*)0));


 sc->sc_flags = 0;
 bcopy(inc, &sc->sc_inc, sizeof(struct in_conninfo));
 sc->sc_ipopts = ((void*)0);

 sc->sc_irs = seq;
 sc->sc_iss = ack;

 switch (inc->inc_flags & 128) {
 }

 sc->sc_peer_mss = tcp_sc_msstab[cookie.flags.mss_idx];


 while (wscale < TCP_MAX_WINSHIFT && (TCP_MAXWIN << wscale) < sb_max)
  wscale++;


 if (cookie.flags.wscale_idx > 0) {
  sc->sc_requested_r_scale = wscale;
  sc->sc_requested_s_scale = tcp_sc_wstab[cookie.flags.wscale_idx];
  sc->sc_flags |= SCF_WINSCALE;
 }

 wnd = lso->sol_sbrcv_hiwat;
 wnd = imax(wnd, 0);
 wnd = imin(wnd, TCP_MAXWIN);
 sc->sc_wnd = wnd;

 if (cookie.flags.sack_ok)
  sc->sc_flags |= SCF_SACK;

 if (to->to_flags & TOF_TS) {
  sc->sc_flags |= SCF_TIMESTAMP;
  sc->sc_tsreflect = to->to_tsval;
  sc->sc_tsoff = tcp_new_ts_offset(inc);
 }

 if (to->to_flags & TOF_SIGNATURE)
  sc->sc_flags |= SCF_SIGNATURE;

 sc->sc_rxmits = 0;

 TCPSTAT_INC(tcps_sc_recvcookie);
 return (sc);
}
