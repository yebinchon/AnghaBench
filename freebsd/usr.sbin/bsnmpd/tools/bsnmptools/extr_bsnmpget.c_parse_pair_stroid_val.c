
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct snmp_object {int dummy; } ;
typedef int int32_t ;


 scalar_t__ parse_syntax_strval (struct snmp_toolinfo*,struct snmp_object*,char*) ;
 char* snmptools_parse_stroid (struct snmp_toolinfo*,struct snmp_object*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int32_t
parse_pair_stroid_val(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
 char *ptr;

 if ((ptr = snmptools_parse_stroid(snmptoolctx, obj, argv)) == ((void*)0))
  return (-1);

 if (*ptr != '=') {
  warnx("Value to set expected after OID");
  return (-1);
 }

 if (parse_syntax_strval(snmptoolctx, obj, ptr + 1) < 0)
  return (-1);

 return (1);
}
