
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ rxbuflen; scalar_t__ txbuflen; } ;


 scalar_t__ MAX_BUFF_SIZE ;
 int assert (int ) ;
 scalar_t__ errno ;
 TYPE_1__ snmp_client ;
 scalar_t__ strtoul (char*,int *,int) ;
 int warn (char*) ;
 int warnx (char*,scalar_t__) ;

int32_t
parse_buflen(char *opt_arg)
{
 uint32_t size;
 int32_t saved_errno;

 assert(opt_arg != ((void*)0));

 saved_errno = errno;
 errno = 0;

 size = strtoul(opt_arg, ((void*)0), 10);
 if (errno != 0) {
  warn("Error parsing buffer size");
  errno = saved_errno;
  return (-1);
 }

 if (size > MAX_BUFF_SIZE) {
  warnx("Buffer size too big - %d max allowed", MAX_BUFF_SIZE);
  errno = saved_errno;
  return (-1);
 }

 snmp_client.txbuflen = snmp_client.rxbuflen = size;
 errno = saved_errno;
 return (2);
}
