
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct snmp_pdu {size_t nbindings; TYPE_1__* bindings; } ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {scalar_t__ syntax; int var; } ;


 scalar_t__ SNMP_SYNTAX_NOSUCHINSTANCE ;
 scalar_t__ SNMP_SYNTAX_NOSUCHOBJECT ;
 scalar_t__ SNMP_V1 ;
 scalar_t__ asn_compare_oid (int *,int *) ;
 TYPE_2__ snmp_client ;
 int warnx (char*) ;

int32_t
snmp_parse_get_resp(struct snmp_pdu *resp, struct snmp_pdu *req)
{
 uint32_t i;

 for (i = 0; i < req->nbindings; i++) {
  if (asn_compare_oid(&req->bindings[i].var,
      &resp->bindings[i].var) != 0) {
   warnx("Bad OID in response");
   return (-1);
  }

  if (snmp_client.version != SNMP_V1 && (resp->bindings[i].syntax
      == SNMP_SYNTAX_NOSUCHOBJECT || resp->bindings[i].syntax ==
      SNMP_SYNTAX_NOSUCHINSTANCE))
   return (0);
 }

 return (1);
}
