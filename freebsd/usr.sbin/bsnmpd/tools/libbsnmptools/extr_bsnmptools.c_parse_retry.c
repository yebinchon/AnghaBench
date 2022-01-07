
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int retries; } ;


 int assert (int ) ;
 scalar_t__ errno ;
 TYPE_1__ snmp_client ;
 int strtoul (char*,int *,int) ;
 int warn (char*) ;

int32_t
parse_retry(char *opt_arg)
{
 uint32_t v;
 int32_t saved_errno;

 assert(opt_arg != ((void*)0));

 saved_errno = errno;
 errno = 0;

 v = strtoul(opt_arg, ((void*)0), 10);
 if (errno != 0) {
  warn("Error parsing retries count");
  errno = saved_errno;
  return (-1);
 }

 snmp_client.retries = v;
 errno = saved_errno;
 return (2);
}
