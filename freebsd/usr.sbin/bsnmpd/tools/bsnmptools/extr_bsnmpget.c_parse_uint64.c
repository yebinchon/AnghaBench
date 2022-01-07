
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int counter64; } ;
struct snmp_value {TYPE_1__ v; int syntax; } ;
typedef int int32_t ;


 int SNMP_SYNTAX_COUNTER64 ;
 scalar_t__ errno ;
 int strtoull (char*,char**,int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int32_t
parse_uint64(struct snmp_value *value, char *val)
{
 char *endptr;
 int32_t saved_errno;
 uint64_t v;

 saved_errno = errno;
 errno = 0;

 v = strtoull(val, &endptr, 10);

 if (errno != 0) {
  warnx("Value %s not supported", val);
  errno = saved_errno;
  return (-1);
 }

 value->syntax = SNMP_SYNTAX_COUNTER64;
 value->v.counter64 = v;
 errno = saved_errno;

 return (0);
}
