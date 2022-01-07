
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; int ncpaddr_ip4addr; } ;




 int AF_UNSPEC ;

void
ncpaddr_copy(struct ncpaddr *addr, const struct ncpaddr *from)
{
  switch (from->ncpaddr_family) {
  case 129:
    addr->ncpaddr_family = 129;
    addr->ncpaddr_ip4addr = from->ncpaddr_ip4addr;
    break;

  case 128:
    addr->ncpaddr_family = 128;
    addr->ncpaddr_ip6addr = from->ncpaddr_ip6addr;
    break;

  default:
    addr->ncpaddr_family = AF_UNSPEC;
  }
}
