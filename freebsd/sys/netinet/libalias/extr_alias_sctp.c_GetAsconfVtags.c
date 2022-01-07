
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct TYPE_3__ {struct sctp_paramhdr* Asconf; } ;
struct sctp_nat_msg {int chunk_length; TYPE_2__* sctp_hdr; TYPE_1__ sctpchnk; } ;
struct libalias {int dummy; } ;
struct TYPE_4__ {int v_tag; } ;


 int SCTP_SIZE32 (scalar_t__) ;
 scalar_t__ SCTP_VTAG_PARAM ;
 int SN_LOG (int ,int ) ;
 int SN_LOG_EVENT ;
 int SN_MIN_PARAM_SIZE ;
 struct sctp_paramhdr* SN_SCTP_NEXTPARAM (struct sctp_paramhdr*) ;


 int SN_VTAG_PARAM_SIZE ;
 int logsctperror (char*,int ,int,int) ;
 scalar_t__ ntohs (int ) ;
 int sysctl_param_proc_limit ;

__attribute__((used)) static int
GetAsconfVtags(struct libalias *la, struct sctp_nat_msg *sm, uint32_t *l_vtag, uint32_t *g_vtag, int direction)
{


 struct sctp_vtag_param {
  struct sctp_paramhdr ph;
  uint32_t local_vtag;
  uint32_t remote_vtag;
 } __attribute__((packed));

 struct sctp_vtag_param *vtag_param;
 struct sctp_paramhdr *param;
 int bytes_left;
 int param_size;
 int param_count;

 param_count = 1;
 param = sm->sctpchnk.Asconf;
 param_size = SCTP_SIZE32(ntohs(param->param_length));
 bytes_left = sm->chunk_length;

 while((bytes_left >= param_size) && (bytes_left >= SN_VTAG_PARAM_SIZE)) {
  if (ntohs(param->param_type) == 0xC007) {
   vtag_param = (struct sctp_vtag_param *) param;
   switch (direction) {



   case 129:
    *g_vtag = vtag_param->local_vtag;
    *l_vtag = vtag_param->remote_vtag;
    break;
   case 128:
    *g_vtag = vtag_param->remote_vtag;
    *l_vtag = vtag_param->local_vtag;
    break;
   }
   return (1);
  }

  bytes_left -= param_size;
  if (bytes_left < SN_MIN_PARAM_SIZE) return (0);

  param = SN_SCTP_NEXTPARAM(param);
  param_size = SCTP_SIZE32(ntohs(param->param_length));
  if (++param_count > sysctl_param_proc_limit) {
   SN_LOG(SN_LOG_EVENT,
       logsctperror("Parameter parse limit exceeded (GetAsconfVtags)",
    sm->sctp_hdr->v_tag, sysctl_param_proc_limit, direction));
   return (0);
  }
 }
 return (0);
}
