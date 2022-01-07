
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {int var; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef int int32_t ;


 scalar_t__ ISSET_NUMERIC (struct snmp_toolinfo*) ;
 scalar_t__ snmp_parse_numoid (char*,int *) ;
 int * snmptools_parse_stroid (struct snmp_toolinfo*,struct snmp_object*,char*) ;

__attribute__((used)) static int32_t
snmptools_parse_oid(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
 if (argv == ((void*)0))
  return (-1);

 if (ISSET_NUMERIC(snmptoolctx)) {
  if (snmp_parse_numoid(argv, &(obj->val.var)) < 0)
   return (-1);
 } else {
  if (snmptools_parse_stroid(snmptoolctx, obj, argv) == ((void*)0) &&
      snmp_parse_numoid(argv, &(obj->val.var)) < 0)
   return (-1);
 }

 return (1);
}
