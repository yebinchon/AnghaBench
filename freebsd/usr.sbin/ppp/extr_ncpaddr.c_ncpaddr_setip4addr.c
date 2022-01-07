
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int s_addr; } ;
struct ncpaddr {TYPE_1__ ncpaddr_ip4addr; int ncpaddr_family; } ;


 int AF_INET ;

void
ncpaddr_setip4addr(struct ncpaddr *addr, u_int32_t ip)
{
  addr->ncpaddr_family = AF_INET;
  addr->ncpaddr_ip4addr.s_addr = ip;
}
