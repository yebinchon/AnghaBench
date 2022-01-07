
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icmp6_filter {int dummy; } ;
typedef int socklen_t ;
typedef int ic6f ;


 int ICMP6_FILTER ;
 int ICMP6_FILTER_SETBLOCKALL (struct icmp6_filter*) ;
 int ICMP6_FILTER_SETPASSALL (struct icmp6_filter*) ;
 int IPPROTO_ICMPV6 ;
 int PF_INET6 ;
 int SOCK_RAW ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ getsockopt (int,int ,int ,struct icmp6_filter*,int*) ;
 struct icmp6_filter ic6f_blockall ;
 struct icmp6_filter ic6f_passall ;
 scalar_t__ memcmp (struct icmp6_filter*,struct icmp6_filter*,int) ;
 scalar_t__ setsockopt (int,int ,int ,struct icmp6_filter*,int) ;
 int socket (int ,int ,int ) ;

int
main(int argc, char *argv[])
{
 struct icmp6_filter ic6f;
 socklen_t len;
 int s;

 ICMP6_FILTER_SETPASSALL(&ic6f_passall);
 ICMP6_FILTER_SETBLOCKALL(&ic6f_blockall);

 s = socket(PF_INET6, SOCK_RAW, 0);
 if (s < 0)
  err(-1, "socket(PF_INET6, SOCK_RAW, 0)");





 len = sizeof(ic6f);
 if (getsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
  err(-1, "1: getsockopt(ICMP6_FILTER)");
 if (memcmp(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
  errx(-1, "1: getsockopt(ICMP6_FILTER) - default not passall");




 len = sizeof(ic6f);
 ICMP6_FILTER_SETPASSALL(&ic6f);
 if (setsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
  err(-1, "2: setsockopt(ICMP6_FILTER, PASSALL)");




 len = sizeof(ic6f);
 if (getsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
  err(-1, "3: getsockopt(ICMP6_FILTER)");
 if (memcmp(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
  errx(-1, "3: getsockopt(ICMP6_FILTER) - not passall");




 len = sizeof(ic6f);
 ICMP6_FILTER_SETBLOCKALL(&ic6f);
 if (setsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
  err(-1, "4: setsockopt(ICMP6_FILTER, BLOCKALL)");




 len = sizeof(ic6f);
 if (getsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
  err(-1, "5: getsockopt(ICMP6_FILTER)");
 if (memcmp(&ic6f, &ic6f_blockall, sizeof(ic6f)) != 0)
  errx(-1, "5: getsockopt(ICMP6_FILTER) - not blockall");




 len = sizeof(ic6f);
 ICMP6_FILTER_SETPASSALL(&ic6f);
 if (setsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
  err(-1, "6: setsockopt(ICMP6_FILTER, PASSALL)");




 len = sizeof(ic6f);
 if (getsockopt(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
  err(-1, "7: getsockopt(ICMP6_FILTER)");
 if (memcmp(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
  errx(-1, "7: getsockopt(ICMP6_FILTER) - not passall");

 close(s);
 return (0);
}
