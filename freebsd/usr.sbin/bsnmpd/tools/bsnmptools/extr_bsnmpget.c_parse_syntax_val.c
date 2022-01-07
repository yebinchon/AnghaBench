
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int dummy; } ;
typedef int int32_t ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;


 int SNMP_STRING ;
 int parse_counter (struct snmp_value*,char*) ;
 int parse_gauge (struct snmp_value*,char*) ;
 int parse_int (struct snmp_value*,char*) ;
 int parse_ip (struct snmp_value*,char*) ;
 int parse_oid_numeric (struct snmp_value*,char*) ;
 int parse_ticks (struct snmp_value*,char*) ;
 int parse_uint64 (struct snmp_value*,char*) ;
 int snmp_tc2oct (int ,struct snmp_value*,char*) ;

__attribute__((used)) static int32_t
parse_syntax_val(struct snmp_value *value, enum snmp_syntax syntax, char *val)
{
 switch (syntax) {
  case 132:
   return (parse_int(value, val));
  case 131:
   return (parse_ip(value, val));
  case 135:
   return (parse_counter(value, val));
  case 133:
   return (parse_gauge(value, val));
  case 128:
   return (parse_ticks(value, val));
  case 134:
   return (parse_uint64(value, val));
  case 130:
   return (snmp_tc2oct(SNMP_STRING, value, val));
  case 129:
   return (parse_oid_numeric(value, val));
  default:

   break;
 }

 return (-1);
}
