
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_request {int bhslr_flags; } ;


 int BHSLR_STAGE_FULL_FEATURE_PHASE ;
 int BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 int BHSLR_STAGE_SECURITY_NEGOTIATION ;
 int assert (int) ;

__attribute__((used)) static void
login_set_csg(struct pdu *request, int csg)
{
 struct iscsi_bhs_login_request *bhslr;

 assert(csg == BHSLR_STAGE_SECURITY_NEGOTIATION ||
     csg == BHSLR_STAGE_OPERATIONAL_NEGOTIATION ||
     csg == BHSLR_STAGE_FULL_FEATURE_PHASE);

 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;

 bhslr->bhslr_flags &= 0xF3;
 bhslr->bhslr_flags |= csg << 2;
}
