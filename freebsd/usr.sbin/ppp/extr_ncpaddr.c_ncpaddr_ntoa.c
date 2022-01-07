
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncpaddr {int dummy; } ;


 char const* ncpaddr_ntowa (struct ncpaddr const*) ;

const char *
ncpaddr_ntoa(const struct ncpaddr *addr)
{
  return ncpaddr_ntowa(addr);
}
