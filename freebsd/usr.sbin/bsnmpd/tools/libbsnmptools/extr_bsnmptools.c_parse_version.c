
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int version; } ;


 int SNMP_V1 ;
 int SNMP_V2c ;
 int SNMP_V3 ;
 int assert (int ) ;
 scalar_t__ errno ;
 TYPE_1__ snmp_client ;
 int strtoul (char*,int *,int) ;
 int warn (char*) ;
 int warnx (char*,int) ;

int32_t
parse_version(char *opt_arg)
{
 uint32_t v;
 int32_t saved_errno;

 assert(opt_arg != ((void*)0));

 saved_errno = errno;
 errno = 0;

 v = strtoul(opt_arg, ((void*)0), 10);
 if (errno != 0) {
  warn("Error parsing version");
  errno = saved_errno;
  return (-1);
 }

 switch (v) {
  case 1:
   snmp_client.version = SNMP_V1;
   break;
  case 2:
   snmp_client.version = SNMP_V2c;
   break;
  case 3:
   snmp_client.version = SNMP_V3;
   break;
  default:
   warnx("Unsupported SNMP version - %u", v);
   errno = saved_errno;
   return (-1);
 }

 errno = saved_errno;
 return (2);
}
