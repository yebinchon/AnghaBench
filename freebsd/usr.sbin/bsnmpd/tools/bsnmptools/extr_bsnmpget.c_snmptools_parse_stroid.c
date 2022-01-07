
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ syntax; int var; } ;
struct snmp_object {TYPE_1__ val; } ;
struct asn_oid {scalar_t__ len; } ;
typedef scalar_t__ int32_t ;
typedef int asn_subid_t ;


 scalar_t__ GET_PDUTYPE (struct snmp_toolinfo*) ;
 int MAXSTR ;
 scalar_t__ SNMP_PDU_GET ;
 int asn_append_oid (int *,struct asn_oid*) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 int memset (struct asn_oid*,int ,int) ;
 scalar_t__ snmp_lookup_oidall (struct snmp_toolinfo*,struct snmp_object*,char*) ;
 char* snmp_parse_index (struct snmp_toolinfo*,char*,struct snmp_object*) ;
 char* snmp_parse_suboid (char*,struct asn_oid*) ;
 scalar_t__ snmp_suboid_append (int *,int ) ;
 int strlcpy (char*,char*,scalar_t__) ;
 int warnx (char*,char*) ;

__attribute__((used)) static char *
snmptools_parse_stroid(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
 char string[MAXSTR], *str;
 int32_t i = 0;
 struct asn_oid in_oid;

 str = argv;

 if (*str == '.')
  str++;

 while (isalpha(*str) || *str == '_' || (i != 0 && isdigit(*str))) {
  str++;
  i++;
 }

 if (i <= 0 || i >= MAXSTR)
  return (((void*)0));

 memset(&in_oid, 0, sizeof(struct asn_oid));
 if ((str = snmp_parse_suboid((argv + i), &in_oid)) == ((void*)0)) {
  warnx("Invalid OID - %s", argv);
  return (((void*)0));
 }

 strlcpy(string, argv, i + 1);
 if (snmp_lookup_oidall(snmptoolctx, obj, string) < 0) {
  warnx("No entry for %s in mapping lists", string);
  return (((void*)0));
 }


 if (in_oid.len > 0)
  asn_append_oid(&(obj->val.var), &in_oid);
 else if (*str == '[') {
  if ((str = snmp_parse_index(snmptoolctx, str + 1, obj)) == ((void*)0))
   return (((void*)0));
 } else if (obj->val.syntax > 0 && GET_PDUTYPE(snmptoolctx) ==
     SNMP_PDU_GET) {
  if (snmp_suboid_append(&(obj->val.var), (asn_subid_t) 0) < 0)
   return (((void*)0));
 }

 return (str);
}
