
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int PF_INET6 ;
 int PF_LOCAL ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int dotest (int ,int ,int ) ;

int
main(void)
{

 dotest(PF_INET, SOCK_DGRAM, 0);
 dotest(PF_INET, SOCK_STREAM, 0);
 dotest(PF_INET6, SOCK_DGRAM, 0);
 dotest(PF_INET6, SOCK_STREAM, 0);
 dotest(PF_LOCAL, SOCK_DGRAM, 0);
 dotest(PF_LOCAL, SOCK_STREAM, 0);

 return (0);
}
