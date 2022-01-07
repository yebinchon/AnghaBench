
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int uint32; } ;
struct snmp_value {TYPE_1__ v; } ;
typedef int int32_t ;


 scalar_t__ errno ;
 int strtoul (char*,char**,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static int32_t
parse_uint(struct snmp_value *value, char *val)
{
 char *endptr;
 uint32_t v = 0;
 int32_t saved_errno;

 saved_errno = errno;
 errno = 0;

 v = strtoul(val, &endptr, 10);

 if (errno != 0) {
  warn("Value %s not supported", val);
  errno = saved_errno;
  return (-1);
 }

 value->v.uint32 = v;
 errno = saved_errno;

 return (0);
}
