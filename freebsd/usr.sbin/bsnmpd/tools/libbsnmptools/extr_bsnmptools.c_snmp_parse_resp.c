
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_pdu {scalar_t__ version; scalar_t__ error_status; scalar_t__ nbindings; int type; } ;
typedef int int32_t ;


 scalar_t__ SNMP_ERR_NOERROR ;
 scalar_t__ SNMP_ERR_NOSUCHNAME ;



 int snmp_parse_get_resp (struct snmp_pdu*,struct snmp_pdu*) ;
 int snmp_parse_getbulk_resp (struct snmp_pdu*,struct snmp_pdu*) ;
 int snmp_parse_getnext_resp (struct snmp_pdu*,struct snmp_pdu*) ;
 int warnx (char*,...) ;

int32_t
snmp_parse_resp(struct snmp_pdu *resp, struct snmp_pdu *req)
{
 if (resp == ((void*)0) || req == ((void*)0))
  return (-2);

 if (resp->version != req->version) {
  warnx("Response has wrong version");
  return (-1);
 }

 if (resp->error_status == SNMP_ERR_NOSUCHNAME) {
  warnx("Error - No Such Name");
  return (0);
 }

 if (resp->error_status != SNMP_ERR_NOERROR) {
  warnx("Error %d in response", resp->error_status);
  return (-1);
 }

 if (resp->nbindings != req->nbindings && req->type != 129){
  warnx("Bad number of bindings in response");
  return (-1);
 }

 switch (req->type) {
  case 130:
   return (snmp_parse_get_resp(resp,req));
  case 129:
   return (snmp_parse_getbulk_resp(resp,req));
  case 128:
   return (snmp_parse_getnext_resp(resp,req));
  default:

   break;
 }

 return (-2);
}
