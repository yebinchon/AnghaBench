
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ncpaddr {struct in_addr ncpaddr_ip4addr; int ncpaddr_family; } ;


 int AF_INET ;

void
ncpaddr_setip4(struct ncpaddr *addr, struct in_addr ip)
{
  addr->ncpaddr_family = AF_INET;
  addr->ncpaddr_ip4addr = ip;
}
