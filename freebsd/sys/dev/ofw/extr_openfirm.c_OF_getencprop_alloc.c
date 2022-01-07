
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;


 int OF_getencprop_alloc_multi (int ,char const*,int,void**) ;

ssize_t
OF_getencprop_alloc(phandle_t package, const char *name, void **buf)
{
 ssize_t ret;

 ret = OF_getencprop_alloc_multi(package, name, sizeof(pcell_t),
     buf);
 if (ret < 0)
  return (ret);
 else
  return (ret * sizeof(pcell_t));
}
