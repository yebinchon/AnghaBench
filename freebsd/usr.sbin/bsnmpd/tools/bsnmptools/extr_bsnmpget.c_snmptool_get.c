
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {int error_index; int error_status; int * bindings; } ;


 int GET_MAXREP (struct snmp_toolinfo*) ;
 int GET_NONREP (struct snmp_toolinfo*) ;
 scalar_t__ GET_PDUTYPE (struct snmp_toolinfo*) ;
 int ISSET_RETRY (struct snmp_toolinfo*) ;
 int SNMP_MAX_BINDINGS ;
 scalar_t__ SNMP_PDU_GETBULK ;
 int fprintf (int ,char*) ;
 int snmp_dialog (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_object_seterror (struct snmp_toolinfo*,int *,int ) ;
 int snmp_output_err_resp (struct snmp_toolinfo*,struct snmp_pdu*) ;
 int snmp_output_resp (struct snmp_toolinfo*,struct snmp_pdu*,int *) ;
 scalar_t__ snmp_parse_resp (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_pdu_add_bindings (struct snmp_toolinfo*,int ,int ,struct snmp_pdu*,int ) ;
 int snmp_pdu_create (struct snmp_pdu*,scalar_t__) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmpget_fix_getbulk (struct snmp_pdu*,int ,int ) ;
 int snmpget_verify_vbind ;
 int snmptool_add_vbind ;
 int stderr ;
 int warn (char*) ;

__attribute__((used)) static int
snmptool_get(struct snmp_toolinfo *snmptoolctx)
{
 struct snmp_pdu req, resp;

 snmp_pdu_create(&req, GET_PDUTYPE(snmptoolctx));

 while ((snmp_pdu_add_bindings(snmptoolctx, snmpget_verify_vbind,
      snmptool_add_vbind, &req, SNMP_MAX_BINDINGS)) > 0) {

  if (GET_PDUTYPE(snmptoolctx) == SNMP_PDU_GETBULK)
   snmpget_fix_getbulk(&req, GET_MAXREP(snmptoolctx),
       GET_NONREP(snmptoolctx));

  if (snmp_dialog(&req, &resp) == -1) {
   warn("Snmp dialog");
   break;
  }

  if (snmp_parse_resp(&resp, &req) >= 0) {
   snmp_output_resp(snmptoolctx, &resp, ((void*)0));
   snmp_pdu_free(&resp);
   break;
  }

  snmp_output_err_resp(snmptoolctx, &resp);
  if (GET_PDUTYPE(snmptoolctx) == SNMP_PDU_GETBULK ||
      !ISSET_RETRY(snmptoolctx)) {
   snmp_pdu_free(&resp);
   break;
  }





  if (snmp_object_seterror(snmptoolctx,
      &(resp.bindings[resp.error_index - 1]),
      resp.error_status) <= 0) {
   snmp_pdu_free(&resp);
   break;
  }

  fprintf(stderr, "Retrying...\n");
  snmp_pdu_free(&resp);
  snmp_pdu_create(&req, GET_PDUTYPE(snmptoolctx));
 }

 snmp_pdu_free(&req);

 return (0);
}
