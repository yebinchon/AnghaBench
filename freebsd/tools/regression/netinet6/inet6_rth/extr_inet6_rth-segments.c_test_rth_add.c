
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct ip6_rthdr0 {int ip6r0_segleft; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_flags; int ai_family; } ;


 int AF_INET6 ;
 int AI_NUMERICHOST ;
 int IPV6_RTHDR_TYPE_0 ;
 int abort () ;
 int checknum (int,int,int ,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo const*,struct addrinfo**) ;
 int inet6_rth_add (void*,int *) ;
 int * inet6_rth_init (char*,int,int ,int) ;
 int memset (void*,int ,int) ;
 int set_funcname (char*,int) ;

void
test_rth_add()
{
 int i, ret;
 char buf[10240];
 struct addrinfo *res;
 struct addrinfo hints;

 set_funcname("test_rth_add", sizeof("test_rth_add\0"));

 if (((void*)0) == inet6_rth_init(buf, 10240, IPV6_RTHDR_TYPE_0, 127))
  abort();
 memset((void *)&hints, 0, sizeof(struct addrinfo));
 hints.ai_family = AF_INET6;
 hints.ai_flags = AI_NUMERICHOST;
 if (0 != getaddrinfo("::1", ((void*)0), (const struct addrinfo *)&hints, &res))
  abort();
 for (i = 0; i < 127; i++)
  inet6_rth_add((void *)buf,
      &((struct sockaddr_in6 *)(res->ai_addr))->sin6_addr);
 checknum(127, ((struct ip6_rthdr0 *)buf)->ip6r0_segleft, 0,
     "add 127 segments\0");

 ret = inet6_rth_add((void *)buf,
     &((struct sockaddr_in6 *)(res->ai_addr))->sin6_addr);
 checknum(-1, ret, 0, "add 128th segment to 127 segment header\0");

 freeaddrinfo(res);
}
