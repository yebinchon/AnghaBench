
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int reflect_6 (int ,int ) ;

__attribute__((used)) static int
reflect_udp6(void)
{

 return (reflect_6(PF_INET6, SOCK_DGRAM));
}
