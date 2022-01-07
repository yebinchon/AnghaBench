
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int IPV6_RTHDR_TYPE_0 ;
 int checknum (int ,int ,int,char*) ;
 int inet6_rth_space (int ,int) ;
 int set_funcname (char*,int) ;

void
test_rth_space()
{
 socklen_t len;

 set_funcname("test_rth_space", sizeof("test_rth_space\0"));




 len = inet6_rth_space(~IPV6_RTHDR_TYPE_0, 0);
 checknum(0, len, 0, "invalid routing header type\0");




 len = inet6_rth_space(IPV6_RTHDR_TYPE_0, 0);
 checknum(0, len, 1, "0 segments\0");
 len = inet6_rth_space(IPV6_RTHDR_TYPE_0, 127);
 checknum(0, len, 1, "0 segments\0");




 len = inet6_rth_space(IPV6_RTHDR_TYPE_0, -1);
 checknum(0, len, 0, "-1 segments\0");
 len = inet6_rth_space(IPV6_RTHDR_TYPE_0, 128);
 checknum(0, len, 0, "128 segments\0");
}
