
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr {int ip6r_type; } ;


 int IPV6_RTHDR_TYPE_0 ;
 int abort () ;
 int checknum (int,int,int ,char*) ;
 int * inet6_rth_init (void*,int,int ,int) ;
 int inet6_rth_segments (void const*) ;
 int set_funcname (char*,int) ;

void
test_rth_segments()
{
 int seg;
 char buf[10240];

 set_funcname("test_rth_segments", sizeof("test_rth_segments\0"));




 if (((void*)0) == inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0))
  abort();
 ((struct ip6_rthdr *)buf)->ip6r_type = ~IPV6_RTHDR_TYPE_0;
 seg = inet6_rth_segments((const void *)buf);
 checknum(-1, seg, 0, "invalid routing header type\0");




 if (((void*)0) == inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0))
  abort();
 seg = inet6_rth_segments((const void *)buf);
 checknum(0, seg, 0, "0 segments\0");




 if (((void*)0) == inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 127))
  abort();
 seg = inet6_rth_segments((const void *)buf);
 checknum(127, seg, 0, "127 segments\0");
}
