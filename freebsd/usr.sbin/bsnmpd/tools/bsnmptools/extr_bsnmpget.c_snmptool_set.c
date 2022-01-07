
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {int error_index; int error_status; int * bindings; } ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 int ISSET_RETRY (struct snmp_toolinfo*) ;
 scalar_t__ OUTPUT_QUIET ;
 int SNMP_MAX_BINDINGS ;
 int SNMP_PDU_SET ;
 int fprintf (int ,char*) ;
 scalar_t__ snmp_dialog (struct snmp_pdu*,struct snmp_pdu*) ;
 scalar_t__ snmp_object_seterror (struct snmp_toolinfo*,int *,int ) ;
 int snmp_output_err_resp (struct snmp_toolinfo*,struct snmp_pdu*) ;
 int snmp_output_resp (struct snmp_toolinfo*,struct snmp_pdu*,int *) ;
 scalar_t__ snmp_pdu_add_bindings (struct snmp_toolinfo*,int ,int ,struct snmp_pdu*,int ) ;
 scalar_t__ snmp_pdu_check (struct snmp_pdu*,struct snmp_pdu*) ;
 int snmp_pdu_create (struct snmp_pdu*,int ) ;
 int snmp_pdu_free (struct snmp_pdu*) ;
 int snmpset_add_vbind ;
 int snmpset_verify_vbind ;
 int stderr ;
 int warn (char*) ;

__attribute__((used)) static int
snmptool_set(struct snmp_toolinfo *snmptoolctx)
{
 struct snmp_pdu req, resp;

 snmp_pdu_create(&req, SNMP_PDU_SET);

 while ((snmp_pdu_add_bindings(snmptoolctx, snmpset_verify_vbind,
     snmpset_add_vbind, &req, SNMP_MAX_BINDINGS)) > 0) {
  if (snmp_dialog(&req, &resp)) {
   warn("Snmp dialog");
   break;
  }

  if (snmp_pdu_check(&req, &resp) > 0) {
   if (GET_OUTPUT(snmptoolctx) != OUTPUT_QUIET)
    snmp_output_resp(snmptoolctx, &resp, ((void*)0));
   snmp_pdu_free(&resp);
   break;
  }

  snmp_output_err_resp(snmptoolctx, &resp);
  if (!ISSET_RETRY(snmptoolctx)) {
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
  snmp_pdu_free(&req);
  snmp_pdu_create(&req, SNMP_PDU_SET);
 }

 snmp_pdu_free(&req);

 return (0);
}
