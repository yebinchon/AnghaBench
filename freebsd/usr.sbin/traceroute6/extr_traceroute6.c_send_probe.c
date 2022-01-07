
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int16_t ;
struct tcphdr {int th_sport; int th_dport; int th_seq; int th_off; int th_sum; int th_flags; int th_ack; } ;
struct sockaddr {int dummy; } ;
struct sctphdr {int src_port; int dest_port; int v_tag; void* checksum; } ;
struct sctp_paramhdr {void* param_length; void* param_type; } ;
struct TYPE_6__ {int initiate_tag; void* initial_tsn; void* num_inbound_streams; void* num_outbound_streams; void* a_rwnd; } ;
struct TYPE_5__ {void* chunk_length; int chunk_flags; int chunk_type; } ;
struct sctp_init_chunk {TYPE_2__ init; TYPE_1__ ch; } ;
struct sctp_chunkhdr {void* chunk_length; int chunk_flags; int chunk_type; } ;
struct icmp6_hdr {int icmp6_id; void* icmp6_seq; int icmp6_cksum; int icmp6_code; int icmp6_type; } ;
typedef int i ;
struct TYPE_7__ {int sin6_len; void* sin6_port; } ;


 TYPE_3__ Dst ;
 int ICMP6_ECHO_REQUEST ;

 int IPPROTO_IPV6 ;




 int IPV6_UNICAST_HOPS ;
 int SCTP_INITIATION ;
 int SCTP_PAD ;
 int SCTP_PAD_CHUNK ;
 int SCTP_SHUTDOWN_ACK ;
 int Src ;
 int TH_SYN ;
 scalar_t__ datalen ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 char* hostname ;
 void* htonl (int) ;
 void* htons (int) ;
 int ident ;
 scalar_t__ outpacket ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*,scalar_t__,int) ;
 void* sctp_crc32c (scalar_t__,scalar_t__) ;
 int sendto (int ,char*,scalar_t__,int ,struct sockaddr*,int ) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;
 int sndsock ;
 int stderr ;
 int stdout ;
 int tcp_chksum (int *,TYPE_3__*,scalar_t__,scalar_t__) ;
 int useproto ;

void
send_probe(int seq, u_long hops)
{
 struct icmp6_hdr *icp;
 struct sctphdr *sctp;
 struct sctp_chunkhdr *chk;
 struct sctp_init_chunk *init;
 struct sctp_paramhdr *param;
 struct tcphdr *tcp;
 int i;

 i = hops;
 if (setsockopt(sndsock, IPPROTO_IPV6, IPV6_UNICAST_HOPS,
     (char *)&i, sizeof(i)) < 0) {
  perror("setsockopt IPV6_UNICAST_HOPS");
 }

 Dst.sin6_port = htons(port + seq);

 switch (useproto) {
 case 132:
  icp = (struct icmp6_hdr *)outpacket;

  icp->icmp6_type = ICMP6_ECHO_REQUEST;
  icp->icmp6_code = 0;
  icp->icmp6_cksum = 0;
  icp->icmp6_id = ident;
  icp->icmp6_seq = htons(seq);
  break;
 case 128:
  break;
 case 131:

  break;
 case 130:
  sctp = (struct sctphdr *)outpacket;

  sctp->src_port = htons(ident);
  sctp->dest_port = htons(port + seq);
  if (datalen >= (u_long)(sizeof(struct sctphdr) +
      sizeof(struct sctp_init_chunk))) {
   sctp->v_tag = 0;
  } else {
   sctp->v_tag = (sctp->src_port << 16) | sctp->dest_port;
  }
  sctp->checksum = htonl(0);
  if (datalen >= (u_long)(sizeof(struct sctphdr) +
      sizeof(struct sctp_init_chunk))) {







   init = (struct sctp_init_chunk *)(sctp + 1);
   init->ch.chunk_type = SCTP_INITIATION;
   init->ch.chunk_flags = 0;
   init->ch.chunk_length = htons((u_int16_t)(datalen -
       sizeof(struct sctphdr)));
   init->init.initiate_tag = (sctp->src_port << 16) |
       sctp->dest_port;
   init->init.a_rwnd = htonl(1500);
   init->init.num_outbound_streams = htons(1);
   init->init.num_inbound_streams = htons(1);
   init->init.initial_tsn = htonl(0);
   if (datalen >= (u_long)(sizeof(struct sctphdr) +
       sizeof(struct sctp_init_chunk) +
       sizeof(struct sctp_paramhdr))) {
    param = (struct sctp_paramhdr *)(init + 1);
    param->param_type = htons(SCTP_PAD);
    param->param_length =
        htons((u_int16_t)(datalen -
        sizeof(struct sctphdr) -
        sizeof(struct sctp_init_chunk)));
   }
  } else {




   if (datalen >= (u_long)(sizeof(struct sctphdr) +
       sizeof(struct sctp_chunkhdr))) {
    chk = (struct sctp_chunkhdr *)(sctp + 1);
    chk->chunk_type = SCTP_SHUTDOWN_ACK;
    chk->chunk_flags = 0;
    chk->chunk_length = htons(4);
   }
   if (datalen >= (u_long)(sizeof(struct sctphdr) +
       2 * sizeof(struct sctp_chunkhdr))) {
    chk = chk + 1;
    chk->chunk_type = SCTP_PAD_CHUNK;
    chk->chunk_flags = 0;
    chk->chunk_length = htons((u_int16_t)(datalen -
        sizeof(struct sctphdr) -
        sizeof(struct sctp_chunkhdr)));
   }
  }
  sctp->checksum = sctp_crc32c(outpacket, datalen);
  break;
 case 129:
  tcp = (struct tcphdr *)outpacket;

  tcp->th_sport = htons(ident);
  tcp->th_dport = htons(port + seq);
  tcp->th_seq = (tcp->th_sport << 16) | tcp->th_dport;
  tcp->th_ack = 0;
  tcp->th_off = 5;
  tcp->th_flags = TH_SYN;
  tcp->th_sum = 0;
  tcp->th_sum = tcp_chksum(&Src, &Dst, outpacket, datalen);
  break;
 default:
  fprintf(stderr, "Unknown probe protocol %d.\n", useproto);
  exit(1);
 }

 i = sendto(sndsock, (char *)outpacket, datalen, 0,
     (struct sockaddr *)&Dst, Dst.sin6_len);
 if (i < 0 || (u_long)i != datalen) {
  if (i < 0)
   perror("sendto");
  printf("traceroute6: wrote %s %lu chars, ret=%d\n",
      hostname, datalen, i);
  (void) fflush(stdout);
 }
}
