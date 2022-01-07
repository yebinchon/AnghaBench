
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int var; } ;
typedef int int32_t ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;


 int ASN_OIDSTRLEN ;
 int MAX_CMD_SYNTAX_LEN ;
 int MAX_OCTSTRING_LEN ;
 int SNMP_SYNTAX_NULL ;
 int parse_syntax (char*) ;
 scalar_t__ parse_syntax_val (struct snmp_value*,int,char*) ;
 scalar_t__ snmp_parse_numoid (char*,int *) ;
 int strlcpy (char*,char*,size_t) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_pair_numoid_val(char *str, struct snmp_value *snmp_val)
{
 int32_t cnt;
 char *ptr;
 enum snmp_syntax syntax;
 char oid_str[ASN_OIDSTRLEN];

 ptr = str;
 for (cnt = 0; cnt < ASN_OIDSTRLEN; cnt++)
  if (ptr[cnt] == '=')
   break;

 if (cnt >= ASN_OIDSTRLEN) {
  warnx("OID too long - %s", str);
  return (-1);
 }
 strlcpy(oid_str, ptr, (size_t) (cnt + 1));

 ptr = str + cnt + 1;
 for (cnt = 0; cnt < MAX_CMD_SYNTAX_LEN; cnt++)
  if(ptr[cnt] == ':')
   break;

 if (cnt >= MAX_CMD_SYNTAX_LEN) {
  warnx("Unknown syntax in OID - %s", str);
  return (-1);
 }

 if ((syntax = parse_syntax(ptr)) <= SNMP_SYNTAX_NULL) {
  warnx("Unknown syntax in OID - %s", ptr);
  return (-1);
 }

 ptr = ptr + cnt + 1;
 for (cnt = 0; cnt < MAX_OCTSTRING_LEN; cnt++)
  if (ptr[cnt] == '\0')
   break;

 if (ptr[cnt] != '\0') {
  warnx("Value string too long - %s", ptr);
  return (-1);
 }





 if (snmp_parse_numoid(oid_str, &(snmp_val->var)) < 0) {
  warnx("Error parsing OID %s", oid_str);
  return (-1);
 }

 if (parse_syntax_val(snmp_val, syntax, ptr) < 0)
  return (-1);

 return (1);
}
