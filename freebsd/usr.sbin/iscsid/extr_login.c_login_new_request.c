
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_request {int bhslr_opcode; int bhslr_expstatsn; scalar_t__ bhslr_cmdsn; scalar_t__ bhslr_initiator_task_tag; int bhslr_tsih; int bhslr_isid; int bhslr_flags; } ;
struct connection {scalar_t__ conn_statsn; int conn_tsih; int conn_isid; } ;


 int BHSLR_FLAGS_TRANSIT ;
 int BHSLR_STAGE_FULL_FEATURE_PHASE ;


 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_LOGIN_REQUEST ;
 int assert (int) ;
 int htonl (scalar_t__) ;
 int htons (int ) ;
 int log_errx (int,char*,int) ;
 int login_set_csg (struct pdu*,int) ;
 int login_set_nsg (struct pdu*,int) ;
 int memcpy (int ,int *,int) ;
 struct pdu* pdu_new (struct connection*) ;

__attribute__((used)) static struct pdu *
login_new_request(struct connection *conn, int csg)
{
 struct pdu *request;
 struct iscsi_bhs_login_request *bhslr;
 int nsg;

 request = pdu_new(conn);
 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
 bhslr->bhslr_opcode = ISCSI_BHS_OPCODE_LOGIN_REQUEST |
     ISCSI_BHS_OPCODE_IMMEDIATE;

 bhslr->bhslr_flags = BHSLR_FLAGS_TRANSIT;
 switch (csg) {
 case 128:
  nsg = 129;
  break;
 case 129:
  nsg = BHSLR_STAGE_FULL_FEATURE_PHASE;
  break;
 default:
  assert(!"invalid csg");
  log_errx(1, "invalid csg %d", csg);
 }
 login_set_csg(request, csg);
 login_set_nsg(request, nsg);

 memcpy(bhslr->bhslr_isid, &conn->conn_isid, sizeof(bhslr->bhslr_isid));
 bhslr->bhslr_tsih = htons(conn->conn_tsih);
 bhslr->bhslr_initiator_task_tag = 0;
 bhslr->bhslr_cmdsn = 0;
 bhslr->bhslr_expstatsn = htonl(conn->conn_statsn + 1);

 return (request);
}
