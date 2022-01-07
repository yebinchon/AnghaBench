
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 unsigned int ntohl (int ) ;
 int printf (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
print_in_addr(struct in_addr addr)
{
 unsigned int ip;

 ip = ntohl(addr.s_addr);
 printf("%d.%d.%d.%d",
        ip >> 24, (ip >> 16) & 255, (ip >> 8) & 255, ip & 255);
}
