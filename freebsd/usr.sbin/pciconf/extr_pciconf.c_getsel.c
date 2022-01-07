
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcisel {int dummy; } ;


 struct pcisel getdevice (char const*) ;
 struct pcisel parsesel (char const*) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static struct pcisel
getsel(const char *str)
{





 if (strchr(str, ':') == ((void*)0))
  return (getdevice(str));
 else
  return (parsesel(str));
}
