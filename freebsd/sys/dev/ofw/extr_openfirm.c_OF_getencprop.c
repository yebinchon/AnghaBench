
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;


 int KASSERT (int,char*) ;
 scalar_t__ OF_getprop (int ,char const*,int *,size_t) ;
 int be32toh (int ) ;

ssize_t
OF_getencprop(phandle_t node, const char *propname, pcell_t *buf, size_t len)
{
 ssize_t retval;
 int i;

 KASSERT(len % 4 == 0, ("Need a multiple of 4 bytes"));

 retval = OF_getprop(node, propname, buf, len);
 if (retval <= 0)
  return (retval);

 for (i = 0; i < len/4; i++)
  buf[i] = be32toh(buf[i]);

 return (retval);
}
