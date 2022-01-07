
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;
struct snmp_value {TYPE_1__ v; int syntax; } ;
typedef int int32_t ;


 int SNMP_SYNTAX_INTEGER ;
 scalar_t__ errno ;
 int strtol (char*,char**,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static int32_t
parse_int(struct snmp_value *value, char *val)
{
 char *endptr;
 int32_t v, saved_errno;

 saved_errno = errno;
 errno = 0;

 v = strtol(val, &endptr, 10);

 if (errno != 0) {
  warn("Value %s not supported", val);
  errno = saved_errno;
  return (-1);
 }

 value->syntax = SNMP_SYNTAX_INTEGER;
 value->v.integer = v;
 errno = saved_errno;

 return (0);
}
