
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncpaddr {int ncpaddr_family; } ;


 int AF_UNSPEC ;

void
ncpaddr_init(struct ncpaddr *addr)
{
  addr->ncpaddr_family = AF_UNSPEC;
}
