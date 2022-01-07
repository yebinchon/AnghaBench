
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;


 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getprop (int ,char const*,void*,int) ;
 int OF_getproplen (int ,char const*) ;
 int free (void*,int ) ;
 void* malloc (int,int ,int ) ;

ssize_t
OF_getprop_alloc_multi(phandle_t package, const char *propname, int elsz, void **buf)
{
 int len;

 *buf = ((void*)0);
 if ((len = OF_getproplen(package, propname)) == -1 ||
     len % elsz != 0)
  return (-1);

 if (len > 0) {
  *buf = malloc(len, M_OFWPROP, M_WAITOK);
  if (OF_getprop(package, propname, *buf, len) == -1) {
   free(*buf, M_OFWPROP);
   *buf = ((void*)0);
   return (-1);
  }
 }
 return (len / elsz);
}
