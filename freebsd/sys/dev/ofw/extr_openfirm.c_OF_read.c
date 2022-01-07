
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ihandle_t ;


 int OFW_READ (int ,int ,void*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_read(ihandle_t instance, void *addr, size_t len)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_READ(ofw_obj, instance, addr, len));
}
