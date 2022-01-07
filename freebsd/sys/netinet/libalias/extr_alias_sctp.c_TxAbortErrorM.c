
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctphdr {scalar_t__ checksum; scalar_t__ v_tag; void* dest_port; void* src_port; } ;
struct TYPE_6__ {TYPE_1__* Init; } ;
struct sctp_nat_msg {TYPE_4__* ip_hdr; TYPE_3__* sctp_hdr; TYPE_2__ sctpchnk; } ;
struct sctp_nat_assoc {int l_addr; int a_addr; scalar_t__ l_vtag; scalar_t__ g_vtag; } ;
struct sctp_error_cause {void* code; void* length; } ;
struct sctp_chunkhdr {int chunk_flags; void* chunk_length; int chunk_type; } ;
struct libalias {int dummy; } ;
struct ip {int ip_hl; int ip_ttl; int ip_dst; int ip_sum; int ip_src; int ip_p; scalar_t__ ip_off; int ip_id; void* ip_len; scalar_t__ ip_tos; int ip_v; } ;
struct TYPE_8__ {int ip_src; int ip_dst; int ip_id; int ip_v; void* ip_len; } ;
struct TYPE_7__ {void* src_port; void* dest_port; scalar_t__ v_tag; } ;
struct TYPE_5__ {scalar_t__ initiate_tag; } ;


 int INET_ADDRSTRLEN ;
 int INET_NTOA_BUF (char*) ;
 int IPPROTO_SCTP ;
 int SCTP_ABORT_ASSOCIATION ;
 int SCTP_HAD_NO_TCB ;
 int SCTP_MIDDLEBOX_FLAG ;
 int SCTP_MISSING_NAT ;
 int SCTP_NAT_TABLE_COLLISION ;
 int SCTP_OPERATION_ERROR ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_EVENT ;




 int SN_TO_LOCAL ;
 int SN_TX_ABORT ;
 int SN_TX_ERROR ;
 int SctpAliasLog (char*,char*,char*,int,int ,int,int ,int ) ;
 int calculate_crc32c (int,unsigned char*,int) ;
 void* htons (int) ;
 int in_cksum_hdr (struct ip*) ;
 int inet_ntoa_r (int ,int ) ;
 scalar_t__ local_sctp_finalize_crc32 (int ) ;
 int memcpy (TYPE_4__*,struct ip*,int) ;
 int ntohl (scalar_t__) ;
 int ntohs (void*) ;

__attribute__((used)) static void
TxAbortErrorM(struct libalias *la, struct sctp_nat_msg *sm, struct sctp_nat_assoc *assoc, int sndrply, int direction)
{
 int sctp_size = sizeof(struct sctphdr) + sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_error_cause);
 int ip_size = sizeof(struct ip) + sctp_size;
 int include_error_cause = 1;
 char tmp_ip[ip_size];
 char addrbuf[INET_ADDRSTRLEN];

 if (ntohs(sm->ip_hdr->ip_len) < ip_size) {
  include_error_cause = 0;
  ip_size = ip_size - sizeof(struct sctp_error_cause);
  sctp_size = sctp_size - sizeof(struct sctp_error_cause);
 }

 struct ip* ip = (struct ip *) tmp_ip;
 struct sctphdr* sctp_hdr = (struct sctphdr *) ((char *) ip + sizeof(*ip));
 struct sctp_chunkhdr* chunk_hdr = (struct sctp_chunkhdr *) ((char *) sctp_hdr + sizeof(*sctp_hdr));
 struct sctp_error_cause* error_cause = (struct sctp_error_cause *) ((char *) chunk_hdr + sizeof(*chunk_hdr));


 ip->ip_v = sm->ip_hdr->ip_v;
 ip->ip_hl = 5;
 ip->ip_tos = 0;
 ip->ip_len = htons(ip_size);
 ip->ip_id = sm->ip_hdr->ip_id;
 ip->ip_off = 0;
 ip->ip_ttl = 255;
 ip->ip_p = IPPROTO_SCTP;






 chunk_hdr->chunk_type = (sndrply & SN_TX_ABORT) ? SCTP_ABORT_ASSOCIATION : SCTP_OPERATION_ERROR;
 chunk_hdr->chunk_flags = 0x02;
 if (include_error_cause) {
  error_cause->code = htons((sndrply & 131) ? 0x00b1 : 0x00b0);
  error_cause->length = htons(sizeof(struct sctp_error_cause));
  chunk_hdr->chunk_length = htons(sizeof(*chunk_hdr) + sizeof(struct sctp_error_cause));
 } else {
  chunk_hdr->chunk_length = htons(sizeof(*chunk_hdr));
 }


 switch (sndrply) {
 case 131:
  chunk_hdr->chunk_flags |= SCTP_HAD_NO_TCB;
  sctp_hdr->v_tag = sm->sctp_hdr->v_tag;
  break;
 case 129:
  sctp_hdr->v_tag = (direction == SN_TO_LOCAL) ? assoc->g_vtag : assoc->l_vtag ;
  break;
 case 128:
  sctp_hdr->v_tag = sm->sctp_hdr->v_tag;
  break;
 case 130:
  sctp_hdr->v_tag = sm->sctpchnk.Init->initiate_tag;
  break;
 }


 if (sndrply == 128) {
  ip->ip_src = (direction == SN_TO_LOCAL) ? sm->ip_hdr->ip_src : assoc->a_addr;
  ip->ip_dst = (direction == SN_TO_LOCAL) ? assoc->l_addr : sm->ip_hdr->ip_dst;
  sctp_hdr->src_port = sm->sctp_hdr->src_port;
  sctp_hdr->dest_port = sm->sctp_hdr->dest_port;
 } else {
  ip->ip_src = sm->ip_hdr->ip_dst;
  ip->ip_dst = sm->ip_hdr->ip_src;
  sctp_hdr->src_port = sm->sctp_hdr->dest_port;
  sctp_hdr->dest_port = sm->sctp_hdr->src_port;
 }


 ip->ip_sum = in_cksum_hdr(ip);


 sctp_hdr->checksum = 0;
 sctp_hdr->checksum = local_sctp_finalize_crc32(calculate_crc32c(0xffffffff, (unsigned char *) sctp_hdr, sctp_size));

 memcpy(sm->ip_hdr, ip, ip_size);

 SN_LOG(SN_LOG_EVENT,SctpAliasLog("%s %s 0x%x (->%s:%u vtag=0x%x crc=0x%x)\n",
  ((sndrply == 128) ? "Sending" : "Replying"),
  ((sndrply & SN_TX_ERROR) ? "ErrorM" : "AbortM"),
  (include_error_cause ? ntohs(error_cause->code) : 0),
  inet_ntoa_r(ip->ip_dst, INET_NTOA_BUF(addrbuf)),
  ntohs(sctp_hdr->dest_port),
  ntohl(sctp_hdr->v_tag), ntohl(sctp_hdr->checksum)));
}
