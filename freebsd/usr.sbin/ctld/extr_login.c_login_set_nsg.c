
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_response {int bhslr_flags; } ;


 int BHSLR_FLAGS_TRANSIT ;
 int BHSLR_STAGE_FULL_FEATURE_PHASE ;
 int BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 int BHSLR_STAGE_SECURITY_NEGOTIATION ;
 int assert (int) ;

__attribute__((used)) static void
login_set_nsg(struct pdu *response, int nsg)
{
 struct iscsi_bhs_login_response *bhslr;

 assert(nsg == BHSLR_STAGE_SECURITY_NEGOTIATION ||
     nsg == BHSLR_STAGE_OPERATIONAL_NEGOTIATION ||
     nsg == BHSLR_STAGE_FULL_FEATURE_PHASE);

 bhslr = (struct iscsi_bhs_login_response *)response->pdu_bhs;

 bhslr->bhslr_flags &= 0xFC;
 bhslr->bhslr_flags |= nsg;
 bhslr->bhslr_flags |= BHSLR_FLAGS_TRANSIT;
}
