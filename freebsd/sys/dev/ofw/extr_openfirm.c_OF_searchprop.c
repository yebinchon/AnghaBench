
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ phandle_t ;


 int OF_getprop (scalar_t__,char const*,void*,size_t) ;
 scalar_t__ OF_parent (scalar_t__) ;

ssize_t
OF_searchprop(phandle_t node, const char *propname, void *buf, size_t len)
{
 ssize_t rv;

 for (; node != 0; node = OF_parent(node))
  if ((rv = OF_getprop(node, propname, buf, len)) != -1)
   return (rv);
 return (-1);
}
