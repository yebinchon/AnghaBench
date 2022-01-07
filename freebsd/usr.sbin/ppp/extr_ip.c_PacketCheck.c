
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const u_short ;
typedef int u_long ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_char ;
struct udphdr {int const uh_dport; int const uh_sport; } ;
struct tcphdr {int th_off; int th_flags; int th_ack; int th_seq; int const th_dport; int const th_sport; } ;
struct ncpaddr {int dummy; } ;
struct ip6_hdr {int ip6_nxt; int const ip6_plen; int ip6_dst; int ip6_src; } ;
struct ip {int ip_hl; int ip_p; int ip_v; int const ip_off; scalar_t__ ip_tos; int const ip_len; int ip_dst; int ip_src; } ;
struct icmp6_hdr {int icmp6_type; } ;
struct icmp {int icmp_type; } ;
struct filter {char* name; scalar_t__ logok; } ;
struct TYPE_9__ {struct filter alive; } ;
struct TYPE_7__ {int tos; } ;
struct TYPE_8__ {TYPE_1__ urgent; } ;
struct TYPE_10__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_3__ filter; TYPE_4__ ncp; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int Enabled (struct bundle*,int ) ;
 scalar_t__ FilterCheck (unsigned char const*,scalar_t__,struct filter*,unsigned int*) ;
 unsigned char const HDLC_ADDR ;
 unsigned char const HDLC_UI ;
 scalar_t__ IPTOS_LOWDELAY ;
 int IP_OFFMASK ;
 int LogDNS ;
 int LogTCPIP ;
 int OPT_FILTERDECAP ;
 int TH_FIN ;
 int TH_SYN ;
 int ip_LogDNS (struct udphdr const*,char*) ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,char*,...) ;
 int memcpy (int const*,unsigned char const*,int) ;
 int ncp_IsUrgentTcpLen (TYPE_4__*,int) ;
 int ncp_IsUrgentTcpPort (TYPE_4__*,int,int) ;
 int ncp_IsUrgentUdpPort (TYPE_4__*,int,int) ;
 char* ncpaddr_ntoa (struct ncpaddr*) ;
 int ncpaddr_setip4 (struct ncpaddr*,int ) ;
 int ncpaddr_setip6 (struct ncpaddr*,int *) ;
 int ntohl (int ) ;
 int ntohs (int const) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strlen (char*) ;

int
PacketCheck(struct bundle *bundle, u_int32_t family,
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

  const struct icmp6_hdr *icmp6h;

  const unsigned char *payload;
  struct ncpaddr srcaddr, dstaddr;
  int cproto, mask, len, n, pri, logit, result, datalen, frag;
  unsigned loglen;
  u_char tos;

  logit = (log_IsKept(LogTCPIP) || log_IsKept(LogDNS)) &&
          (!filter || filter->logok);
  loglen = 0;
  pri = 0;


  if (family == AF_INET6) {
    const struct ip6_hdr *pip6 = (const struct ip6_hdr *)packet;

    ncpaddr_setip6(&srcaddr, &pip6->ip6_src);
    ncpaddr_setip6(&dstaddr, &pip6->ip6_dst);
    datalen = ntohs(pip6->ip6_plen);
    payload = packet + sizeof *pip6;
    cproto = pip6->ip6_nxt;
    tos = 0;
    frag = 0;
  } else

  {
    const struct ip *pip = (const struct ip *)packet;

    ncpaddr_setip4(&srcaddr, pip->ip_src);
    ncpaddr_setip4(&dstaddr, pip->ip_dst);
    datalen = ntohs(pip->ip_len) - (pip->ip_hl << 2);
    payload = packet + (pip->ip_hl << 2);
    cproto = pip->ip_p;
    tos = pip->ip_tos;
    frag = ntohs(pip->ip_off) & IP_OFFMASK;
  }

  uh = ((void*)0);

  if (logit && loglen < sizeof logbuf) {
    if (prefix)
      snprintf(logbuf + loglen, sizeof logbuf - loglen, "%s", prefix);
    else if (filter)
      snprintf(logbuf + loglen, sizeof logbuf - loglen, "%s ", filter->name);
    else
      snprintf(logbuf + loglen, sizeof logbuf - loglen, "  ");
    loglen += strlen(logbuf + loglen);
  }

  switch (cproto) {
  case 147:
    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *icmph;
      icmph = (const struct icmp *)payload;
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "ICMP: %s:%d ---> ", ncpaddr_ntoa(&srcaddr), icmph->icmp_type);
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", ncpaddr_ntoa(&dstaddr), len, nb);
      loglen += strlen(logbuf + loglen);
    }
    break;


  case 146:
    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *icmp6h;
      icmp6h = (const struct icmp6_hdr *)payload;
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "ICMP: %s:%d ---> ", ncpaddr_ntoa(&srcaddr), icmp6h->icmp6_type);
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", ncpaddr_ntoa(&dstaddr), len, nb);
      loglen += strlen(logbuf + loglen);
    }
    break;


  case 140:
    uh = (const struct udphdr *)payload;
    if (tos == IPTOS_LOWDELAY && bundle->ncp.cfg.urgent.tos)
      pri++;

    if (!frag && ncp_IsUrgentUdpPort(&bundle->ncp, ntohs(uh->uh_sport),
                                     ntohs(uh->uh_dport)))
      pri++;

    if (logit && loglen < sizeof logbuf) {
      len = datalen - sizeof *uh;
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "UDP: %s:%d ---> ", ncpaddr_ntoa(&srcaddr), ntohs(uh->uh_sport));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d (%d/%d)", ncpaddr_ntoa(&dstaddr), ntohs(uh->uh_dport),
               len, nb);
      loglen += strlen(logbuf + loglen);
    }

    if (Enabled(bundle, OPT_FILTERDECAP) &&
        payload[sizeof *uh] == HDLC_ADDR &&
        payload[sizeof *uh + 1] == HDLC_UI) {
      u_short proto;
      const char *type;

      memcpy(&proto, payload + sizeof *uh + 2, sizeof proto);
      type = ((void*)0);

      switch (ntohs(proto)) {
        case 135:
          snprintf(logbuf + loglen, sizeof logbuf - loglen, " contains ");
          result = PacketCheck(bundle, AF_INET, payload + sizeof *uh + 4,
                               nb - (payload - packet) - sizeof *uh - 4, filter,
                               logbuf, psecs);
          if (result != -2)
              return result;
          type = "IP";
          break;

        case 128: type = "compressed VJ"; break;
        case 129: type = "uncompressed VJ"; break;
        case 131: type = "Multi-link"; break;
        case 136: type = "Individual link CCP"; break;
        case 137: type = "CCP"; break;
        case 134: type = "IPCP"; break;
        case 133: type = "LCP"; break;
        case 130: type = "PAP"; break;
        case 139: type = "CBCP"; break;
        case 132: type = "LQR"; break;
        case 138: type = "CHAP"; break;
      }
      if (type) {
        snprintf(logbuf + loglen, sizeof logbuf - loglen,
                 " - %s data", type);
        loglen += strlen(logbuf + loglen);
      }
    }

    break;


  case 148:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
          "GRE: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
              "%s (%d/%d)", ncpaddr_ntoa(&dstaddr), datalen, nb);
      loglen += strlen(logbuf + loglen);
    }
    break;



  case 142:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "OSPF: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", ncpaddr_ntoa(&dstaddr), datalen, nb);
      loglen += strlen(logbuf + loglen);
    }
    break;



  case 143:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "IPv6: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d/%d)", ncpaddr_ntoa(&dstaddr), datalen, nb);
      loglen += strlen(logbuf + loglen);
    }

    if (Enabled(bundle, OPT_FILTERDECAP)) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen, " contains ");
      result = PacketCheck(bundle, AF_INET6, payload, nb - (payload - packet),
                           filter, logbuf, psecs);
      if (result != -2)
        return result;
    }
    break;


  case 144:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "IPIP: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s", ncpaddr_ntoa(&dstaddr));
      loglen += strlen(logbuf + loglen);
    }

    if (Enabled(bundle, OPT_FILTERDECAP) &&
        ((const struct ip *)payload)->ip_v == 4) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen, " contains ");
      result = PacketCheck(bundle, AF_INET, payload, nb - (payload - packet),
                           filter, logbuf, psecs);
      loglen += strlen(logbuf + loglen);
      if (result != -2)
        return result;
    }
    break;

  case 149:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "ESP: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen, "%s, spi %p",
               ncpaddr_ntoa(&dstaddr), payload);
      loglen += strlen(logbuf + loglen);
    }
    break;

  case 150:
    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "AH: %s ---> ", ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen, "%s, spi %p",
               ncpaddr_ntoa(&dstaddr), payload + sizeof(u_int32_t));
      loglen += strlen(logbuf + loglen);
    }
    break;

  case 145:
    if (logit && loglen < sizeof logbuf) {
      uh = (const struct udphdr *)payload;
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "IGMP: %s:%d ---> ", ncpaddr_ntoa(&srcaddr),
               ntohs(uh->uh_sport));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d", ncpaddr_ntoa(&dstaddr), ntohs(uh->uh_dport));
      loglen += strlen(logbuf + loglen);
    }
    break;

  case 141:
    th = (const struct tcphdr *)payload;
    if (tos == IPTOS_LOWDELAY && bundle->ncp.cfg.urgent.tos)
      pri++;

    if (!frag && ncp_IsUrgentTcpPort(&bundle->ncp, ntohs(th->th_sport),
                                     ntohs(th->th_dport)))
      pri++;
    else if (!frag && ncp_IsUrgentTcpLen(&bundle->ncp, datalen))
      pri++;

    if (logit && loglen < sizeof logbuf) {
      len = datalen - (th->th_off << 2);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
           "TCP: %s:%d ---> ", ncpaddr_ntoa(&srcaddr), ntohs(th->th_sport));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s:%d", ncpaddr_ntoa(&dstaddr), ntohs(th->th_dport));
      loglen += strlen(logbuf + loglen);
      n = 0;
      for (mask = TH_FIN; mask != 0x40; mask <<= 1) {
        if (th->th_flags & mask) {
          snprintf(logbuf + loglen, sizeof logbuf - loglen, " %s", TcpFlags[n]);
          loglen += strlen(logbuf + loglen);
        }
        n++;
      }
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "  seq:%lx  ack:%lx (%d/%d)",
               (u_long)ntohl(th->th_seq), (u_long)ntohl(th->th_ack), len, nb);
      loglen += strlen(logbuf + loglen);
      if ((th->th_flags & TH_SYN) && nb > 40) {
        const u_short *sp;

        sp = (const u_short *)(payload + 20);
        if (ntohs(sp[0]) == 0x0204) {
          snprintf(logbuf + loglen, sizeof logbuf - loglen,
                   " MSS = %d", ntohs(sp[1]));
          loglen += strlen(logbuf + loglen);
        }
      }
      snprintf(logbuf + loglen, sizeof logbuf - loglen, " pri:%d", pri);
      loglen += strlen(logbuf + loglen);
    }
    break;

  default:
    if (prefix)
      return -2;

    if (logit && loglen < sizeof logbuf) {
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "<%d>: %s ---> ", cproto, ncpaddr_ntoa(&srcaddr));
      loglen += strlen(logbuf + loglen);
      snprintf(logbuf + loglen, sizeof logbuf - loglen,
               "%s (%d)", ncpaddr_ntoa(&dstaddr), nb);
      loglen += strlen(logbuf + loglen);
    }
    break;
  }

  if (filter && FilterCheck(packet, family, filter, psecs)) {
    if (logit)
      log_Printf(LogTCPIP, "%s - BLOCKED\n", logbuf);
    result = -1;
  } else {

    if (logit && log_IsKept(LogTCPIP)) {
      unsigned alivesecs;

      alivesecs = 0;
      if (filter &&
          FilterCheck(packet, family, &bundle->filter.alive, &alivesecs))
        log_Printf(LogTCPIP, "%s - NO KEEPALIVE\n", logbuf);
      else if (psecs != ((void*)0)) {
        if(*psecs == 0)
          *psecs = alivesecs;
        if (*psecs) {
          if (*psecs != alivesecs)
            log_Printf(LogTCPIP, "%s - (timeout = %d / ALIVE = %d secs)\n",
                       logbuf, *psecs, alivesecs);
          else
            log_Printf(LogTCPIP, "%s - (timeout = %d secs)\n", logbuf, *psecs);
        } else
          log_Printf(LogTCPIP, "%s\n", logbuf);
      }
    }
    result = pri;
  }

  if (filter && uh && ntohs(uh->uh_dport) == 53 && log_IsKept(LogDNS))
    ip_LogDNS(uh, filter->name);

  return result;
}
