
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_paramhdr {int param_length; int param_type; } ;
struct TYPE_3__ {struct sctp_paramhdr* Asconf; } ;
struct sctp_nat_msg {int chunk_length; TYPE_2__* sctp_hdr; TYPE_1__ sctpchnk; } ;
struct libalias {int dummy; } ;
struct TYPE_4__ {int v_tag; } ;


 scalar_t__ SCTP_ADD_IP_ADDRESS ;
 scalar_t__ SCTP_DEL_IP_ADDRESS ;
 int SCTP_SIZE32 (scalar_t__) ;
 int SN_ASCONFACK_PARAM_SIZE ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_EVENT ;
 int SN_MIN_PARAM_SIZE ;
 struct sctp_paramhdr* SN_SCTP_NEXTPARAM (struct sctp_paramhdr*) ;
 int logsctperror (char*,int ,int,int) ;
 scalar_t__ ntohs (int ) ;
 int sysctl_param_proc_limit ;

__attribute__((used)) static int
IsADDorDEL(struct libalias *la, struct sctp_nat_msg *sm, int direction)
{
 struct sctp_paramhdr *param;
 int bytes_left;
 int param_size;
 int param_count;

 param_count = 1;
 param = sm->sctpchnk.Asconf;
 param_size = SCTP_SIZE32(ntohs(param->param_length));

 bytes_left = sm->chunk_length;
 if (bytes_left < param_size)
  return (0);

 while(bytes_left >= SN_ASCONFACK_PARAM_SIZE) {
  if (ntohs(param->param_type) == SCTP_ADD_IP_ADDRESS)
   return (SCTP_ADD_IP_ADDRESS);
  else if (ntohs(param->param_type) == SCTP_DEL_IP_ADDRESS)
   return (SCTP_DEL_IP_ADDRESS);

  bytes_left -= param_size;
  if (bytes_left >= SN_MIN_PARAM_SIZE) {
   param = SN_SCTP_NEXTPARAM(param);
  } else {
   return (0);
  }
  param_size = SCTP_SIZE32(ntohs(param->param_length));
  if (bytes_left < param_size) return (0);

  if (++param_count > sysctl_param_proc_limit) {
   SN_LOG(SN_LOG_EVENT,
       logsctperror("Parameter parse limit exceeded IsADDorDEL)",
    sm->sctp_hdr->v_tag, sysctl_param_proc_limit, direction));
   return (0);
  }
 }
 return (0);
}
