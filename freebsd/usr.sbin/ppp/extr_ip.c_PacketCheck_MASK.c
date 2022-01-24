#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u_short ;
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_char ;
struct udphdr {int /*<<< orphan*/  const uh_dport; int /*<<< orphan*/  const uh_sport; } ;
struct tcphdr {int th_off; int th_flags; int /*<<< orphan*/  th_ack; int /*<<< orphan*/  th_seq; int /*<<< orphan*/  const th_dport; int /*<<< orphan*/  const th_sport; } ;
struct ncpaddr {int dummy; } ;
struct ip6_hdr {int ip6_nxt; int /*<<< orphan*/  const ip6_plen; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; } ;
struct ip {int ip_hl; int ip_p; int ip_v; int /*<<< orphan*/  const ip_off; scalar_t__ ip_tos; int /*<<< orphan*/  const ip_len; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; } ;
struct icmp6_hdr {int icmp6_type; } ;
struct icmp {int icmp_type; } ;
struct filter {char* name; scalar_t__ logok; } ;
struct TYPE_9__ {struct filter alive; } ;
struct TYPE_7__ {int /*<<< orphan*/  tos; } ;
struct TYPE_8__ {TYPE_1__ urgent; } ;
struct TYPE_10__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ filter; TYPE_4__ ncp; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char const*,scalar_t__,struct filter*,unsigned int*) ; 
 unsigned char const HDLC_ADDR ; 
 unsigned char const HDLC_UI ; 
#define  IPPROTO_AH 150 
#define  IPPROTO_ESP 149 
#define  IPPROTO_GRE 148 
#define  IPPROTO_ICMP 147 
#define  IPPROTO_ICMPV6 146 
#define  IPPROTO_IGMP 145 
#define  IPPROTO_IPIP 144 
#define  IPPROTO_IPV6 143 
#define  IPPROTO_OSPFIGP 142 
#define  IPPROTO_TCP 141 
#define  IPPROTO_UDP 140 
 scalar_t__ IPTOS_LOWDELAY ; 
 int IP_OFFMASK ; 
 int /*<<< orphan*/  LogDNS ; 
 int /*<<< orphan*/  LogTCPIP ; 
 int /*<<< orphan*/  OPT_FILTERDECAP ; 
#define  PROTO_CBCP 139 
#define  PROTO_CHAP 138 
#define  PROTO_COMPD 137 
#define  PROTO_ICOMPD 136 
#define  PROTO_IP 135 
#define  PROTO_IPCP 134 
#define  PROTO_LCP 133 
#define  PROTO_LQR 132 
#define  PROTO_MP 131 
#define  PROTO_PAP 130 
#define  PROTO_VJCOMP 129 
#define  PROTO_VJUNCOMP 128 
 int TH_FIN ; 
 int TH_SYN ; 
 int /*<<< orphan*/  FUNC2 (struct udphdr const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int) ; 
 char* FUNC9 (struct ncpaddr*) ; 
 int /*<<< orphan*/  FUNC10 (struct ncpaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ncpaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,...) ; 
 scalar_t__ FUNC15 (char*) ; 

int
FUNC16(struct bundle *bundle, u_int32_t family,
            const unsigned char *packet, int nb, struct filter *filter,
            const char *prefix, unsigned *psecs)
{
  char logbuf[200];
  static const char *const TcpFlags[] = {
    "FIN", "SYN", "RST", "PSH", "ACK", "URG"
  };
  const struct tcphdr *th;
  const struct udphdr *uh;
  const struct icmp *icmph;
#ifndef NOINET6
  const struct icmp6_hdr *icmp6h;
#endif
  const unsigned char *payload;
  struct ncpaddr srcaddr, dstaddr;
  int cproto, mask, len, n, pri, logit, result, datalen, frag;
  unsigned loglen;
  u_char tos;

  logit = (FUNC3(LogTCPIP) || FUNC3(LogDNS)) &&
          (!filter || filter->logok);
  loglen = 0;
  pri = 0;

#ifndef NOINET6
  if (family == AF_INET6) {
    const struct ip6_hdr *pip6 = (const struct ip6_hdr *)packet;

    FUNC11(&srcaddr, &pip6->ip6_src);
    FUNC11(&dstaddr, &pip6->ip6_dst);
    datalen = FUNC13(pip6->ip6_plen);
    payload = packet + sizeof *pip6;
    cproto = pip6->ip6_nxt;
    tos = 0;					/* XXX: pip6->ip6_vfc >> 4 ? */
    frag = 0;					/* XXX: ??? */
  } else
#endif
  {
    const struct ip *pip = (const struct ip *)packet;

    FUNC10(&srcaddr, pip->ip_src);
    FUNC10(&dstaddr, pip->ip_dst);
    datalen = FUNC13(pip->ip_len) - (pip->ip_hl << 2);
    payload = packet + (pip->ip_hl << 2);
    cproto = pip->ip_p;
    tos = pip->ip_tos;
    frag = FUNC13(pip->ip_off) & IP_OFFMASK;
  }

  uh = NULL;

  if (logit && loglen < sizeof logbuf) {
    if (prefix)
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, "%s", prefix);
    else if (filter)
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, "%s ", filter->name);
    else
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, "  ");
    loglen += FUNC15(logbuf + loglen);
  }

  switch (cproto) {
  case IPPROTO_ICMP:
    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *icmph;
      icmph = (const struct icmp *)payload;
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "ICMP: %s:%d ---> ", FUNC9(&srcaddr), icmph->icmp_type);
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", FUNC9(&dstaddr), len, nb);
      loglen += FUNC15(logbuf + loglen);
    }
    break;

#ifndef NOINET6
  case IPPROTO_ICMPV6:
    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *icmp6h;
      icmp6h = (const struct icmp6_hdr *)payload;
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "ICMP: %s:%d ---> ", FUNC9(&srcaddr), icmp6h->icmp6_type);
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", FUNC9(&dstaddr), len, nb);
      loglen += FUNC15(logbuf + loglen);
    }
    break;
#endif

  case IPPROTO_UDP:
    uh = (const struct udphdr *)payload;
    if (tos == IPTOS_LOWDELAY && bundle->ncp.cfg.urgent.tos)
      pri++;

    if (!frag && FUNC8(&bundle->ncp, FUNC13(uh->uh_sport),
                                     FUNC13(uh->uh_dport)))
      pri++;

    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *uh;
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "UDP: %s:%d ---> ", FUNC9(&srcaddr), FUNC13(uh->uh_sport));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d (%d/%d)", FUNC9(&dstaddr), FUNC13(uh->uh_dport),
               len, nb);
      loglen += FUNC15(logbuf + loglen);
    }

    if (FUNC0(bundle, OPT_FILTERDECAP) &&
        payload[sizeof *uh] == HDLC_ADDR &&
        payload[sizeof *uh + 1] == HDLC_UI) {
      u_short proto;
      const char *type;

      FUNC5(&proto, payload + sizeof *uh + 2, sizeof proto);
      type = NULL;

      switch (FUNC13(proto)) {
        case PROTO_IP:
          FUNC14(logbuf + loglen, sizeof logbuf - loglen, " contains ");
          result = FUNC16(bundle, AF_INET, payload + sizeof *uh + 4,
                               nb - (payload - packet) - sizeof *uh - 4, filter,
                               logbuf, psecs);
          if (result != -2)
              return result;
          type = "IP";
          break;

        case PROTO_VJUNCOMP: type = "compressed VJ";   break;
        case PROTO_VJCOMP:   type = "uncompressed VJ"; break;
        case PROTO_MP:       type = "Multi-link"; break;
        case PROTO_ICOMPD:   type = "Individual link CCP"; break;
        case PROTO_COMPD:    type = "CCP"; break;
        case PROTO_IPCP:     type = "IPCP"; break;
        case PROTO_LCP:      type = "LCP"; break;
        case PROTO_PAP:      type = "PAP"; break;
        case PROTO_CBCP:     type = "CBCP"; break;
        case PROTO_LQR:      type = "LQR"; break;
        case PROTO_CHAP:     type = "CHAP"; break;
      }
      if (type) {
        FUNC14(logbuf + loglen, sizeof logbuf - loglen,
                 " - %s data", type);
        loglen += FUNC15(logbuf + loglen);
      }
    }

    break;

#ifdef IPPROTO_GRE
  case IPPROTO_GRE:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
          "GRE: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
              "%s (%d/%d)", FUNC9(&dstaddr), datalen, nb);
      loglen += FUNC15(logbuf + loglen);
    }
    break;
#endif

#ifdef IPPROTO_OSPFIGP
  case IPPROTO_OSPFIGP:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "OSPF: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", FUNC9(&dstaddr), datalen, nb);
      loglen += FUNC15(logbuf + loglen);
    }
    break;
#endif

#ifndef NOINET6
  case IPPROTO_IPV6:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "IPv6: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", FUNC9(&dstaddr), datalen, nb);
      loglen += FUNC15(logbuf + loglen);
    }

    if (FUNC0(bundle, OPT_FILTERDECAP)) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, " contains ");
      result = FUNC16(bundle, AF_INET6, payload, nb - (payload - packet),
                           filter, logbuf, psecs);
      if (result != -2)
        return result;
    }
    break;
#endif

  case IPPROTO_IPIP:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "IPIP: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s", FUNC9(&dstaddr));
      loglen += FUNC15(logbuf + loglen);
    }

    if (FUNC0(bundle, OPT_FILTERDECAP) &&
        ((const struct ip *)payload)->ip_v == 4) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, " contains ");
      result = FUNC16(bundle, AF_INET, payload, nb - (payload - packet),
                           filter, logbuf, psecs);
      loglen += FUNC15(logbuf + loglen);
      if (result != -2)
        return result;
    }
    break;

  case IPPROTO_ESP:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "ESP: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, "%s, spi %p",
               FUNC9(&dstaddr), payload);
      loglen += FUNC15(logbuf + loglen);
    }
    break;

  case IPPROTO_AH:
    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "AH: %s ---> ", FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, "%s, spi %p",
               FUNC9(&dstaddr), payload + sizeof(u_int32_t));
      loglen += FUNC15(logbuf + loglen);
    }
    break;

  case IPPROTO_IGMP:
    if (logit && loglen < sizeof logbuf) {
      uh = (const struct udphdr *)payload;
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "IGMP: %s:%d ---> ", FUNC9(&srcaddr),
               FUNC13(uh->uh_sport));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d", FUNC9(&dstaddr), FUNC13(uh->uh_dport));
      loglen += FUNC15(logbuf + loglen);
    }
    break;

  case IPPROTO_TCP:
    th = (const struct tcphdr *)payload;
    if (tos == IPTOS_LOWDELAY && bundle->ncp.cfg.urgent.tos)
      pri++;

    if (!frag && FUNC7(&bundle->ncp, FUNC13(th->th_sport),
                                     FUNC13(th->th_dport)))
      pri++;
    else if (!frag && FUNC6(&bundle->ncp, datalen))
      pri++;

    if (logit && loglen < sizeof logbuf) {
      len = datalen - (th->th_off << 2);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
           "TCP: %s:%d ---> ", FUNC9(&srcaddr), FUNC13(th->th_sport));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d", FUNC9(&dstaddr), FUNC13(th->th_dport));
      loglen += FUNC15(logbuf + loglen);
      n = 0;
      for (mask = TH_FIN; mask != 0x40; mask <<= 1) {
        if (th->th_flags & mask) {
          FUNC14(logbuf + loglen, sizeof logbuf - loglen, " %s", TcpFlags[n]);
          loglen += FUNC15(logbuf + loglen);
        }
        n++;
      }
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "  seq:%lx  ack:%lx (%d/%d)",
               (u_long)FUNC12(th->th_seq), (u_long)FUNC12(th->th_ack), len, nb);
      loglen += FUNC15(logbuf + loglen);
      if ((th->th_flags & TH_SYN) && nb > 40) {
        const u_short *sp;

        sp = (const u_short *)(payload + 20);
        if (FUNC13(sp[0]) == 0x0204) {
          FUNC14(logbuf + loglen, sizeof logbuf - loglen,
                   " MSS = %d", FUNC13(sp[1]));
          loglen += FUNC15(logbuf + loglen);
        }
      }
      FUNC14(logbuf + loglen, sizeof logbuf - loglen, " pri:%d", pri);
      loglen += FUNC15(logbuf + loglen);
    }
    break;

  default:
    if (prefix)
      return -2;

    if (logit && loglen < sizeof logbuf) {
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "<%d>: %s ---> ", cproto, FUNC9(&srcaddr));
      loglen += FUNC15(logbuf + loglen);
      FUNC14(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d)", FUNC9(&dstaddr), nb);
      loglen += FUNC15(logbuf + loglen);
    }
    break;
  }

  if (filter && FUNC1(packet, family, filter, psecs)) {
    if (logit)
      FUNC4(LogTCPIP, "%s - BLOCKED\n", logbuf);
    result = -1;
  } else {
    /* Check Keep Alive filter */
    if (logit && FUNC3(LogTCPIP)) {
      unsigned alivesecs;

      alivesecs = 0;
      if (filter &&
          FUNC1(packet, family, &bundle->filter.alive, &alivesecs))
        FUNC4(LogTCPIP, "%s - NO KEEPALIVE\n", logbuf);
      else if (psecs != NULL) {
        if(*psecs == 0)
          *psecs = alivesecs;
        if (*psecs) {
          if (*psecs != alivesecs)
            FUNC4(LogTCPIP, "%s - (timeout = %d / ALIVE = %d secs)\n",
                       logbuf, *psecs, alivesecs);
          else
            FUNC4(LogTCPIP, "%s - (timeout = %d secs)\n", logbuf, *psecs);
        } else
          FUNC4(LogTCPIP, "%s\n", logbuf);
      }
    }
    result = pri;
  }

  if (filter && uh && FUNC13(uh->uh_dport) == 53 && FUNC3(LogDNS))
    FUNC2(uh, filter->name);

  return result;
}