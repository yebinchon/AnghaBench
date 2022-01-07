
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int tv_sec; } ;
struct TYPE_4__ {TYPE_1__ timeout; } ;


 int assert (int ) ;
 scalar_t__ errno ;
 TYPE_2__ snmp_client ;
 int strtol (char*,int *,int) ;
 int warn (char*) ;

int32_t
parse_timeout(char *opt_arg)
{
 int32_t v, saved_errno;

 assert(opt_arg != ((void*)0));

 saved_errno = errno;
 errno = 0;

 v = strtol(opt_arg, ((void*)0), 10);
 if (errno != 0) {
  warn("Error parsing timeout value");
  errno = saved_errno;
  return (-1);
 }

 snmp_client.timeout.tv_sec = v;
 errno = saved_errno;
 return (2);
}
