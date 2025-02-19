
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_char ;
typedef int tcp_seq ;
struct udphdr {scalar_t__ uh_sport; scalar_t__ uh_dport; } ;
struct tcphdr {scalar_t__ th_sport; scalar_t__ th_dport; int th_seq; } ;
struct sockaddr_in6 {int sin6_len; } ;
struct sockaddr {int dummy; } ;
struct sctphdr {scalar_t__ src_port; scalar_t__ dest_port; int v_tag; } ;
struct TYPE_4__ {int initiate_tag; int a_rwnd; } ;
struct sctp_init_chunk {TYPE_2__ init; } ;
struct msghdr {TYPE_1__* msg_iov; scalar_t__ msg_name; } ;
struct ip6_hdr {int dummy; } ;
struct in6_pktinfo {int ipi6_addr; } ;
struct icmp6_hdr {int icmp6_type; int icmp6_code; scalar_t__ icmp6_id; scalar_t__ icmp6_seq; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;
typedef int sbuf ;
typedef int hbuf ;
typedef int dbuf ;
struct TYPE_3__ {scalar_t__ iov_base; } ;


 int AF_INET6 ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 scalar_t__ CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int ICMP6_DST_UNREACH ;
 int ICMP6_ECHO_REPLY ;
 int ICMP6_PARAMPROB_NEXTHEADER ;
 int ICMP6_PARAM_PROB ;
 int ICMP6_TIME_EXCEEDED ;
 int ICMP6_TIME_EXCEED_TRANSIT ;
 int INET6_ADDRSTRLEN ;

 scalar_t__ IPPROTO_IPV6 ;




 scalar_t__ IPV6_HOPLIMIT ;
 scalar_t__ IPV6_PKTINFO ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int WIDTH ;
 int datalen ;
 int fprintf (int ,char*,int) ;
 void* get_uphdr (struct ip6_hdr*,int*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 scalar_t__ htons (int) ;
 scalar_t__ ident ;
 char* inet_ntop (int ,int *,char*,int) ;
 int port ;
 char* pr_type (int) ;
 int printf (char*,...) ;
 int rcvhlim ;
 struct in6_pktinfo* rcvpktinfo ;
 int srcport ;
 int stderr ;
 int strlcpy (char*,char*,int) ;
 int useproto ;
 scalar_t__ verbose ;
 int warnx (char*) ;

int
packet_ok(struct msghdr *mhdr, int cc, int seq, u_char *type, u_char *code)
{
 struct icmp6_hdr *icp;
 struct sockaddr_in6 *from = (struct sockaddr_in6 *)mhdr->msg_name;
 char *buf = (char *)mhdr->msg_iov[0].iov_base;
 struct cmsghdr *cm;
 int *hlimp;
 char hbuf[NI_MAXHOST];
 if (cc < (int)sizeof(struct icmp6_hdr)) {
  if (verbose) {
   if (getnameinfo((struct sockaddr *)from, from->sin6_len,
       hbuf, sizeof(hbuf), ((void*)0), 0, NI_NUMERICHOST) != 0)
    strlcpy(hbuf, "invalid", sizeof(hbuf));
   printf("data too short (%d bytes) from %s\n", cc, hbuf);
  }
  return (0);
 }
 icp = (struct icmp6_hdr *)buf;


 rcvpktinfo = ((void*)0);
 hlimp = ((void*)0);
 for (cm = (struct cmsghdr *)CMSG_FIRSTHDR(mhdr); cm;
     cm = (struct cmsghdr *)CMSG_NXTHDR(mhdr, cm)) {
  if (cm->cmsg_level == IPPROTO_IPV6 &&
      cm->cmsg_type == IPV6_PKTINFO &&
      cm->cmsg_len ==
      CMSG_LEN(sizeof(struct in6_pktinfo)))
   rcvpktinfo = (struct in6_pktinfo *)(CMSG_DATA(cm));

  if (cm->cmsg_level == IPPROTO_IPV6 &&
      cm->cmsg_type == IPV6_HOPLIMIT &&
      cm->cmsg_len == CMSG_LEN(sizeof(int)))
   hlimp = (int *)CMSG_DATA(cm);
 }
 if (rcvpktinfo == ((void*)0) || hlimp == ((void*)0)) {
  warnx("failed to get received hop limit or packet info");



  rcvhlim = 0;

 }
 else
  rcvhlim = *hlimp;

 *type = icp->icmp6_type;
 *code = icp->icmp6_code;
 if ((*type == ICMP6_TIME_EXCEEDED &&
     *code == ICMP6_TIME_EXCEED_TRANSIT) ||
     (*type == ICMP6_DST_UNREACH) ||
     (*type == ICMP6_PARAM_PROB &&
     *code == ICMP6_PARAMPROB_NEXTHEADER)) {
  struct ip6_hdr *hip;
  struct icmp6_hdr *icmp;
  struct sctp_init_chunk *init;
  struct sctphdr *sctp;
  struct tcphdr *tcp;
  struct udphdr *udp;
  void *up;

  hip = (struct ip6_hdr *)(icp + 1);
  if ((up = get_uphdr(hip, (u_char *)(buf + cc))) == ((void*)0)) {
   if (verbose)
    warnx("failed to get upper layer header");
   return (0);
  }
  switch (useproto) {
  case 132:
   icmp = (struct icmp6_hdr *)up;
   if (icmp->icmp6_id == ident &&
       icmp->icmp6_seq == htons(seq))
    return (1);
   break;
  case 128:
   udp = (struct udphdr *)up;
   if (udp->uh_sport == htons(srcport) &&
       udp->uh_dport == htons(port + seq))
    return (1);
   break;
  case 130:
   sctp = (struct sctphdr *)up;
   if (sctp->src_port != htons(ident) ||
       sctp->dest_port != htons(port + seq)) {
    break;
   }
   if (datalen >= (u_long)(sizeof(struct sctphdr) +
       sizeof(struct sctp_init_chunk))) {
    if (sctp->v_tag != 0) {
     break;
    }
    init = (struct sctp_init_chunk *)(sctp + 1);

    if ((char *)&init->init.a_rwnd > buf + cc) {
     return (1);
    }
    if (init->init.initiate_tag == (u_int32_t)
        ((sctp->src_port << 16) | sctp->dest_port)) {
     return (1);
    }
   } else {
    if (sctp->v_tag ==
        (u_int32_t)((sctp->src_port << 16) |
        sctp->dest_port)) {
     return (1);
    }
   }
   break;
  case 129:
   tcp = (struct tcphdr *)up;
   if (tcp->th_sport == htons(ident) &&
       tcp->th_dport == htons(port + seq) &&
       tcp->th_seq ==
       (tcp_seq)((tcp->th_sport << 16) | tcp->th_dport))
    return (1);
   break;
  case 131:
   return (1);
  default:
   fprintf(stderr, "Unknown probe proto %d.\n", useproto);
   break;
  }
 } else if (useproto == 132 && *type == ICMP6_ECHO_REPLY) {
  if (icp->icmp6_id == ident &&
      icp->icmp6_seq == htons(seq))
   return (1);
 }
 if (verbose) {
  char sbuf[NI_MAXHOST+1], dbuf[INET6_ADDRSTRLEN];
  u_int8_t *p;
  int i;

  if (getnameinfo((struct sockaddr *)from, from->sin6_len,
      sbuf, sizeof(sbuf), ((void*)0), 0, NI_NUMERICHOST) != 0)
   strlcpy(sbuf, "invalid", sizeof(sbuf));
  printf("\n%d bytes from %s to %s", cc, sbuf,
      rcvpktinfo ? inet_ntop(AF_INET6, &rcvpktinfo->ipi6_addr,
      dbuf, sizeof(dbuf)) : "?");
  printf(": icmp type %d (%s) code %d\n", *type, pr_type(*type),
      *code);
  p = (u_int8_t *)(icp + 1);

  for (i = 0; i < cc; i++) {
   if (i % 16 == 0)
    printf("%04x:", i);
   if (i % 4 == 0)
    printf(" ");
   printf("%02x", p[i]);
   if (i % 16 == 16 - 1)
    printf("\n");
  }
  if (cc % 16 != 0)
   printf("\n");
 }
 return (0);
}
