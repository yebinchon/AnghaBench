
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 scalar_t__ OF_getproplen (int ,char const*) ;

int
OF_hasprop(phandle_t package, const char *propname)
{

 return (OF_getproplen(package, propname) >= 0 ? 1 : 0);
}
