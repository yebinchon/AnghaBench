
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct in_conninfo {int dummy; } ;


 char* tcp_log_addr (struct in_conninfo*,struct tcphdr*,void*,void const*) ;
 scalar_t__ tcp_log_in_vain ;

char *
tcp_log_vain(struct in_conninfo *inc, struct tcphdr *th, void *ip4hdr,
    const void *ip6hdr)
{


 if (tcp_log_in_vain == 0)
  return (((void*)0));

 return (tcp_log_addr(inc, th, ip4hdr, ip6hdr));
}
