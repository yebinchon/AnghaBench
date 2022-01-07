
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;


 int OF_getencprop (scalar_t__,char const*,int *,size_t) ;
 scalar_t__ OF_parent (scalar_t__) ;

ssize_t
OF_searchencprop(phandle_t node, const char *propname, pcell_t *buf, size_t len)
{
 ssize_t rv;

 for (; node != 0; node = OF_parent(node))
  if ((rv = OF_getencprop(node, propname, buf, len)) != -1)
   return (rv);
 return (-1);
}
