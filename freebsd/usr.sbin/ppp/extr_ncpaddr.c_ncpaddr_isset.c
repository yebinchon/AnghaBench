
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncpaddr {scalar_t__ ncpaddr_family; } ;


 scalar_t__ AF_UNSPEC ;

int
ncpaddr_isset(const struct ncpaddr *addr)
{
  return addr->ncpaddr_family != AF_UNSPEC;
}
