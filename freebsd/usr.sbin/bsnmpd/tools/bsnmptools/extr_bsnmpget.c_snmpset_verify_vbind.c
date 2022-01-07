
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {scalar_t__ version; } ;
struct TYPE_3__ {scalar_t__ syntax; } ;
struct snmp_object {TYPE_2__* info; TYPE_1__ val; } ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ access; int string; } ;


 scalar_t__ ISSET_ERRIGNORE (struct snmp_toolinfo*) ;
 scalar_t__ ISSET_NUMERIC (struct snmp_toolinfo*) ;
 scalar_t__ SNMP_ACCESS_SET ;
 scalar_t__ SNMP_SYNTAX_COUNTER64 ;
 scalar_t__ SNMP_V1 ;
 int warnx (char*,...) ;

__attribute__((used)) static int32_t
snmpset_verify_vbind(struct snmp_toolinfo *snmptoolctx, struct snmp_pdu *pdu,
    struct snmp_object *obj)
{
 if (pdu->version == SNMP_V1 && obj->val.syntax ==
     SNMP_SYNTAX_COUNTER64) {
  warnx("64-bit counters are not supported in SNMPv1 PDU");
  return (-1);
 }

 if (ISSET_NUMERIC(snmptoolctx) || ISSET_ERRIGNORE(snmptoolctx))
  return (1);

 if (obj->info->access < SNMP_ACCESS_SET) {
  warnx("Object %s not accessible for set - try 'bsnmpset -a'",
      obj->info->string);
  return (-1);
 }

 return (1);
}
