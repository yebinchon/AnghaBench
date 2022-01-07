
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {int var; } ;
struct snmp_object {TYPE_1__ val; } ;
struct index {int syntax; int tc; } ;
typedef int int32_t ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;


 scalar_t__ GET_OUTPUT (struct snmp_toolinfo*) ;
 int ISSET_ERRIGNORE (struct snmp_toolinfo*) ;
 int MAX_CMD_SYNTAX_LEN ;
 scalar_t__ OUTPUT_VERBOSE ;





 int SNMP_SYNTAX_NULL ;



 int parse_syntax (char*) ;
 char* snmp_cnt64_2asn_oid (char*,int *) ;
 char* snmp_int2asn_oid (char*,int *) ;
 char* snmp_ip2asn_oid (char*,int *) ;
 char* snmp_oid2asn_oid (struct snmp_toolinfo*,char*,int *) ;
 char* snmp_tc2oid (int ,char*,int *) ;
 char* snmp_uint2asn_oid (char*,int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static char *
snmp_parse_subindex(struct snmp_toolinfo *snmptoolctx, char *str,
    struct index *idx, struct snmp_object *object)
{
 char *ptr;
 int32_t i;
 enum snmp_syntax stx;
 char syntax[MAX_CMD_SYNTAX_LEN];

 ptr = str;
 if (GET_OUTPUT(snmptoolctx) == OUTPUT_VERBOSE) {
  for (i = 0; i < MAX_CMD_SYNTAX_LEN ; i++) {
   if (*(ptr + i) == ':')
    break;
  }

  if (i >= MAX_CMD_SYNTAX_LEN) {
   warnx("Unknown syntax in OID - %s", str);
   return (((void*)0));
  }

  if ((stx = parse_syntax(str)) <= SNMP_SYNTAX_NULL) {
   warnx("Invalid  syntax - %s",syntax);
   return (((void*)0));
  }

  if (stx != idx->syntax && !ISSET_ERRIGNORE(snmptoolctx)) {
   warnx("Syntax mismatch - %d expected, %d given",
       idx->syntax, stx);
   return (((void*)0));
  }




  ptr = str + i + 1;
 } else
  stx = idx->syntax;

 switch (stx) {
  case 132:
   return (snmp_int2asn_oid(ptr, &(object->val.var)));
  case 129:
   return (snmp_oid2asn_oid(snmptoolctx, ptr,
       &(object->val.var)));
  case 131:
   return (snmp_ip2asn_oid(ptr, &(object->val.var)));
  case 135:

  case 133:

  case 128:
   return (snmp_uint2asn_oid(ptr, &(object->val.var)));
  case 134:
   return (snmp_cnt64_2asn_oid(ptr, &(object->val.var)));
  case 130:
   return (snmp_tc2oid(idx->tc, ptr, &(object->val.var)));
  default:

   break;
 }

 return (((void*)0));
}
