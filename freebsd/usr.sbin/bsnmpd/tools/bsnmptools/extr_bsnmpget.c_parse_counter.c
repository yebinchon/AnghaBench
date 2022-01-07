
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int syntax; } ;
typedef int int32_t ;


 int SNMP_SYNTAX_COUNTER ;
 scalar_t__ parse_uint (struct snmp_value*,char*) ;

__attribute__((used)) static int32_t
parse_counter(struct snmp_value *value, char *val)
{
 if (parse_uint(value, val) < 0)
  return (-1);

 value->syntax = SNMP_SYNTAX_COUNTER;
 return (0);
}
