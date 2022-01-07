
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {scalar_t__ is_statsn; scalar_t__ is_cmdsn; int is_maxcmdsn; int is_expcmdsn; } ;
struct iscsi_bhs_scsi_command {int bhssc_opcode; void* bhssc_expstatsn; void* bhssc_cmdsn; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_SCSI_DATA_OUT ;
 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*,scalar_t__,int ,int ,int) ;
 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 scalar_t__ ISCSI_SNGT (scalar_t__,int ) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 void* htonl (scalar_t__) ;

__attribute__((used)) static bool
iscsi_pdu_prepare(struct icl_pdu *request)
{
 struct iscsi_session *is;
 struct iscsi_bhs_scsi_command *bhssc;

 is = PDU_SESSION(request);

 ISCSI_SESSION_LOCK_ASSERT(is);





 bhssc = (struct iscsi_bhs_scsi_command *)request->ip_bhs;




 if (bhssc->bhssc_opcode != ISCSI_BHS_OPCODE_SCSI_DATA_OUT) {
  if (ISCSI_SNGT(is->is_cmdsn, is->is_maxcmdsn) &&
      (bhssc->bhssc_opcode & ISCSI_BHS_OPCODE_IMMEDIATE) == 0) {
   return (1);
  }
  bhssc->bhssc_cmdsn = htonl(is->is_cmdsn);
  if ((bhssc->bhssc_opcode & ISCSI_BHS_OPCODE_IMMEDIATE) == 0)
   is->is_cmdsn++;
 }
 bhssc->bhssc_expstatsn = htonl(is->is_statsn + 1);

 return (0);
}
