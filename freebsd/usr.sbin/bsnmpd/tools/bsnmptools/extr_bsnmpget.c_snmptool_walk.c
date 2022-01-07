
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {int nbindings; TYPE_1__* bindings; } ;
struct asn_oid {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {struct asn_oid var; } ;


 int GET_MAXREP (struct snmp_toolinfo*) ;
 int GET_NONREP (struct snmp_toolinfo*) ;
 scalar_t__ GET_PDUTYPE (struct snmp_toolinfo*) ;
 scalar_t__ SNMP_CODE_OK ;
 scalar_t__ SNMP_PDU_GET ;
 scalar_t__ SNMP_PDU_GETBULK ;
 scalar_t__ SNMP_PDU_GETNEXT ;
 int asn_append_oid (struct asn_oid*,struct asn_oid*) ;
 int memset (struct asn_oid*,int ,int) ;
 scalar_t__ snmp_dialog (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_object_remove (struct snmp_toolinfo*,struct asn_oid*) ;
 int snmp_output_err_resp (struct snmp_toolinfo*,struct snmp_pdu*) ;
 scalar_t__ snmp_output_resp (struct snmp_toolinfo*,struct snmp_pdu*,struct asn_oid*) ;
 scalar_t__ snmp_parse_resp (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_pdu_add_bindings (struct snmp_toolinfo*,int *,int ,struct snmp_pdu*,int) ;
 int snmp_pdu_create (struct snmp_pdu*,scalar_t__) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmpget_fix_getbulk (struct snmp_pdu*,int ,int ) ;
 int snmptool_add_vbind ;
 int snmpwalk_nextpdu_create (scalar_t__,struct asn_oid*,struct snmp_pdu*) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
snmptool_walk(struct snmp_toolinfo *snmptoolctx)
{
 struct snmp_pdu req, resp;
 struct asn_oid root;
 int32_t outputs, rc;
 uint32_t op;

 if (GET_PDUTYPE(snmptoolctx) == SNMP_PDU_GETBULK)
  op = SNMP_PDU_GETBULK;
 else
  op = SNMP_PDU_GETNEXT;

 snmp_pdu_create(&req, op);

 while ((rc = snmp_pdu_add_bindings(snmptoolctx, ((void*)0),
     snmptool_add_vbind, &req, 1)) > 0) {


  memset(&root, 0, sizeof(struct asn_oid));
  asn_append_oid(&root, &(req.bindings[0].var));

  if (op == SNMP_PDU_GETBULK)
   snmpget_fix_getbulk(&req, GET_MAXREP(snmptoolctx),
       GET_NONREP(snmptoolctx));

  outputs = 0;
  while (snmp_dialog(&req, &resp) >= 0) {
   if ((snmp_parse_resp(&resp, &req)) < 0) {
    snmp_output_err_resp(snmptoolctx, &resp);
    snmp_pdu_free(&resp);
    outputs = -1;
    break;
   }

   rc = snmp_output_resp(snmptoolctx, &resp, &root);
   if (rc < 0) {
    snmp_pdu_free(&resp);
    outputs = -1;
    break;
   }

   outputs += rc;

   if ((u_int)rc < resp.nbindings) {
    snmp_pdu_free(&resp);
    break;
   }

   snmpwalk_nextpdu_create(op,
       &(resp.bindings[resp.nbindings - 1].var), &req);
   if (op == SNMP_PDU_GETBULK)
    snmpget_fix_getbulk(&req, GET_MAXREP(snmptoolctx),
        GET_NONREP(snmptoolctx));
   snmp_pdu_free(&resp);
  }


  if (outputs == 0) {
   snmpwalk_nextpdu_create(SNMP_PDU_GET, &root, &req);
   if (snmp_dialog(&req, &resp) == SNMP_CODE_OK) {
    if (snmp_parse_resp(&resp, &req) < 0)
     snmp_output_err_resp(snmptoolctx, &resp);
    else
     snmp_output_resp(snmptoolctx, &resp,
         ((void*)0));
    snmp_pdu_free(&resp);
   } else
    warn("Snmp dialog");
  }

  if (snmp_object_remove(snmptoolctx, &root) < 0) {
   warnx("snmp_object_remove");
   break;
  }

  snmp_pdu_free(&req);
  snmp_pdu_create(&req, op);
 }

 snmp_pdu_free(&req);

 if (rc == 0)
  return (0);
 else
  return (1);
}
