
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctphdr {scalar_t__ src_port; scalar_t__ dest_port; int v_tag; } ;
struct sctp_shutdown_ack_chunk {int dummy; } ;
struct sctp_paramhdr {int param_type; } ;
struct TYPE_2__ {struct sctp_paramhdr* Asconf; struct sctp_init_ack* InitAck; struct sctp_init* Init; } ;
struct sctp_nat_msg {int chunk_length; TYPE_1__ sctpchnk; int msg; struct sctphdr* sctp_hdr; struct ip* ip_hdr; } ;
struct sctp_nat_assoc {void* TableRegister; int Gaddr; void* state; } ;
struct sctp_ipv6addr_param {int dummy; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct sctp_init_chunk {int dummy; } ;
struct sctp_init_ack_chunk {int dummy; } ;
struct sctp_init_ack {int dummy; } ;
struct sctp_init {int dummy; } ;
struct sctp_chunkhdr {int chunk_flags; int chunk_type; int chunk_length; } ;
struct sctp_asconf_chunk {int dummy; } ;
struct sctp_asconf_ack_chunk {int dummy; } ;
struct libalias {int dummy; } ;
struct in_addr {int s_addr; } ;
struct ip {int ip_hl; int ip_dst; struct in_addr ip_src; int ip_len; } ;


 struct sctp_nat_assoc* FindSctpGlobal (struct libalias*,struct in_addr,int ,scalar_t__,scalar_t__,int*) ;
 struct sctp_nat_assoc* FindSctpGlobalT (struct libalias*,struct in_addr,int ,scalar_t__,scalar_t__) ;
 struct sctp_nat_assoc* FindSctpLocal (struct libalias*,struct in_addr,int ,int ,scalar_t__,scalar_t__) ;
 struct sctp_nat_assoc* FindSctpLocalT (struct libalias*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ IS_SCTP_CONTROL (struct sctp_chunkhdr*) ;
 int LIST_INIT (int *) ;



 int SCTP_HAD_NO_TCB ;


 int SCTP_IPV4_ADDRESS ;


 int SCTP_SIZE32 (int ) ;
 void* SN_ID ;
 int SN_MIN_CHUNK_SIZE ;
 void* SN_NULL_TBL ;
 int SN_PARSE_ERROR_AS_MALLOC ;
 int SN_PARSE_ERROR_CHHL ;
 int SN_PARSE_ERROR_IPSHL ;
 int SN_PARSE_ERROR_LOOKUP ;
 int SN_PARSE_ERROR_LOOKUP_ABORT ;
 int SN_PARSE_ERROR_PARTIALLOOKUP ;
 int SN_PARSE_ERROR_PORT ;
 int SN_PARSE_ERROR_VTAG ;
 int SN_PARSE_OK ;
 int SN_SCTP_ABORT ;
 int SN_SCTP_ASCONF ;
 int SN_SCTP_ASCONFACK ;
 struct sctp_chunkhdr* SN_SCTP_FIRSTCHUNK (struct sctphdr*) ;
 int SN_SCTP_INIT ;
 int SN_SCTP_INITACK ;
 struct sctp_chunkhdr* SN_SCTP_NEXTCHUNK (struct sctp_chunkhdr*) ;
 int SN_SCTP_OTHER ;
 int SN_SCTP_SHUTACK ;
 int SN_SCTP_SHUTCOMP ;
 int SN_TO_LOCAL ;
 scalar_t__ ip_next (struct ip*) ;
 int ntohs (int ) ;
 scalar_t__ sn_malloc (int) ;
 int sysctl_chunk_proc_limit ;
 int sysctl_initialising_chunk_proc_limit ;

__attribute__((used)) static int
sctp_PktParser(struct libalias *la, int direction, struct ip *pip,
    struct sctp_nat_msg *sm, struct sctp_nat_assoc **passoc)

{
 struct sctphdr *sctp_hdr;
 struct sctp_chunkhdr *chunk_hdr;
 struct sctp_paramhdr *param_hdr;
 struct in_addr ipv4addr;
 int bytes_left;
 int chunk_length;
 int chunk_count;
 int partial_match = 0;
 sm->ip_hdr = pip;

 bytes_left = ntohs(pip->ip_len) - (pip->ip_hl << 2);


 if (bytes_left < sizeof(struct sctphdr)) {
  sm->sctp_hdr = ((void*)0);
  return (SN_PARSE_ERROR_IPSHL);
 }

 sm->sctp_hdr = sctp_hdr = (struct sctphdr *) ip_next(pip);
 bytes_left -= sizeof(struct sctphdr);


 if (sctp_hdr->src_port == 0 || sctp_hdr->dest_port == 0)
  return (SN_PARSE_ERROR_PORT);


 if (bytes_left < SN_MIN_CHUNK_SIZE)
  return (SN_PARSE_ERROR_CHHL);


 chunk_hdr = SN_SCTP_FIRSTCHUNK(sctp_hdr);

 chunk_length = SCTP_SIZE32(ntohs(chunk_hdr->chunk_length));
 if ((chunk_length < SN_MIN_CHUNK_SIZE) || (chunk_length > bytes_left))
  return (SN_PARSE_ERROR_CHHL);

 if ((chunk_hdr->chunk_flags & SCTP_HAD_NO_TCB) &&
     ((chunk_hdr->chunk_type == 134) ||
  (chunk_hdr->chunk_type == 128))) {

  if (direction == SN_TO_LOCAL)
   *passoc = FindSctpGlobalT(la, pip->ip_src, sctp_hdr->v_tag, sctp_hdr->dest_port, sctp_hdr->src_port);
  else
   *passoc = FindSctpLocalT(la, pip->ip_dst, sctp_hdr->v_tag, sctp_hdr->dest_port, sctp_hdr->src_port);
 } else {

  if (direction == SN_TO_LOCAL)
   *passoc = FindSctpGlobal(la, pip->ip_src, sctp_hdr->v_tag, sctp_hdr->src_port, sctp_hdr->dest_port, &partial_match);
  else
   *passoc = FindSctpLocal(la, pip->ip_src, pip->ip_dst, sctp_hdr->v_tag, sctp_hdr->src_port, sctp_hdr->dest_port);
 }

 chunk_count = 1;

 sm->msg = SN_SCTP_OTHER;
 sm->chunk_length = 0;
 while (IS_SCTP_CONTROL(chunk_hdr)) {
  switch (chunk_hdr->chunk_type) {
  case 131:
   if (chunk_length < sizeof(struct sctp_init_chunk))
    return (SN_PARSE_ERROR_CHHL);
   sm->msg = SN_SCTP_INIT;
   sm->sctpchnk.Init = (struct sctp_init *) ((char *) chunk_hdr + sizeof(struct sctp_chunkhdr));
   sm->chunk_length = chunk_length;

   if (*passoc == ((void*)0)) {
    if (sctp_hdr->v_tag == 0) {
     *passoc = (struct sctp_nat_assoc *) sn_malloc(sizeof(struct sctp_nat_assoc));
     if (*passoc == ((void*)0)) {
      return (SN_PARSE_ERROR_AS_MALLOC);
     }

     (*passoc)->state = SN_ID;
     LIST_INIT(&((*passoc)->Gaddr));
     (*passoc)->TableRegister = SN_NULL_TBL;
     return (SN_PARSE_OK);
    }
    return (SN_PARSE_ERROR_VTAG);
   }
   return (SN_PARSE_ERROR_LOOKUP);
  case 130:
   if (chunk_length < sizeof(struct sctp_init_ack_chunk))
    return (SN_PARSE_ERROR_CHHL);
   sm->msg = SN_SCTP_INITACK;
   sm->sctpchnk.InitAck = (struct sctp_init_ack *) ((char *) chunk_hdr + sizeof(struct sctp_chunkhdr));
   sm->chunk_length = chunk_length;
   return ((*passoc == ((void*)0)) ? (SN_PARSE_ERROR_LOOKUP) : (SN_PARSE_OK));
  case 134:
   sm->msg = SN_SCTP_ABORT;
   sm->chunk_length = chunk_length;
   return ((*passoc == ((void*)0)) ? (SN_PARSE_ERROR_LOOKUP_ABORT) : (SN_PARSE_OK));
  case 129:
   if (chunk_length < sizeof(struct sctp_shutdown_ack_chunk))
    return (SN_PARSE_ERROR_CHHL);
   if (sm->msg > SN_SCTP_SHUTACK) {
    sm->msg = SN_SCTP_SHUTACK;
    sm->chunk_length = chunk_length;
   }
   break;
  case 128:
   if (sm->msg > SN_SCTP_SHUTCOMP) {
    sm->msg = SN_SCTP_SHUTCOMP;
    sm->chunk_length = chunk_length;
   }
   return ((*passoc == ((void*)0)) ? (SN_PARSE_ERROR_LOOKUP) : (SN_PARSE_OK));
  case 133:
   if (sm->msg > SN_SCTP_ASCONF) {
    if (chunk_length < (sizeof(struct sctp_asconf_chunk) + sizeof(struct sctp_ipv4addr_param)))
     return (SN_PARSE_ERROR_CHHL);

    param_hdr = (struct sctp_paramhdr *) ((char *) chunk_hdr + sizeof(struct sctp_asconf_chunk));
    if (ntohs(param_hdr->param_type) == SCTP_IPV4_ADDRESS) {
     if ((*passoc == ((void*)0)) && (direction == SN_TO_LOCAL)) {

      ipv4addr.s_addr = ((struct sctp_ipv4addr_param *) param_hdr)->addr;
      *passoc = FindSctpGlobal(la, ipv4addr, sctp_hdr->v_tag, sctp_hdr->src_port, sctp_hdr->dest_port, &partial_match);
     }
     param_hdr = (struct sctp_paramhdr *)
      ((char *) param_hdr + sizeof(struct sctp_ipv4addr_param));
     sm->chunk_length = chunk_length - sizeof(struct sctp_asconf_chunk) - sizeof(struct sctp_ipv4addr_param);
    } else {
     if (chunk_length < (sizeof(struct sctp_asconf_chunk) + sizeof(struct sctp_ipv6addr_param)))
      return (SN_PARSE_ERROR_CHHL);
     param_hdr = (struct sctp_paramhdr *)
      ((char *) param_hdr + sizeof(struct sctp_ipv6addr_param));
     sm->chunk_length = chunk_length - sizeof(struct sctp_asconf_chunk) - sizeof(struct sctp_ipv6addr_param);
    }
    sm->msg = SN_SCTP_ASCONF;
    sm->sctpchnk.Asconf = param_hdr;

    if (*passoc == ((void*)0)) {
     *passoc = (struct sctp_nat_assoc *) sn_malloc(sizeof(struct sctp_nat_assoc));
     if (*passoc == ((void*)0)) {
      return (SN_PARSE_ERROR_AS_MALLOC);
     }

     (*passoc)->state = SN_ID;
     LIST_INIT(&((*passoc)->Gaddr));
     (*passoc)->TableRegister = SN_NULL_TBL;
     return (SN_PARSE_OK);
    }
   }
   break;
  case 132:
   if (sm->msg > SN_SCTP_ASCONFACK) {
    if (chunk_length < sizeof(struct sctp_asconf_ack_chunk))
     return (SN_PARSE_ERROR_CHHL);

    param_hdr = (struct sctp_paramhdr *) ((char *) chunk_hdr
        + sizeof(struct sctp_asconf_ack_chunk));
    sm->msg = SN_SCTP_ASCONFACK;
    sm->sctpchnk.Asconf = param_hdr;
    sm->chunk_length = chunk_length - sizeof(struct sctp_asconf_ack_chunk);
   }
   break;
  default:
   break;
  }


  if ((*passoc == ((void*)0)) && (chunk_count >= sysctl_initialising_chunk_proc_limit))
   return (SN_PARSE_ERROR_LOOKUP);


  bytes_left-= chunk_length;


  if (bytes_left == 0)
   return (*passoc == ((void*)0)) ? (SN_PARSE_ERROR_LOOKUP) : (SN_PARSE_OK);


  if (bytes_left < SN_MIN_CHUNK_SIZE)
   return (SN_PARSE_ERROR_CHHL);

  chunk_hdr = SN_SCTP_NEXTCHUNK(chunk_hdr);


  chunk_length = SCTP_SIZE32(ntohs(chunk_hdr->chunk_length));
  if ((chunk_length < SN_MIN_CHUNK_SIZE) || (chunk_length > bytes_left))
   return (SN_PARSE_ERROR_CHHL);
  if (++chunk_count > sysctl_chunk_proc_limit)
   return (SN_PARSE_OK);
 }

 if (*passoc == ((void*)0))
  return (partial_match) ? (SN_PARSE_ERROR_PARTIALLOOKUP) : (SN_PARSE_ERROR_LOOKUP);
 else
  return (SN_PARSE_OK);
}
