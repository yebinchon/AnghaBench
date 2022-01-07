
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 void* OFW_CLAIM (int ,void*,size_t,int ) ;
 int * ofw_def_impl ;
 int ofw_obj ;

void *
OF_claim(void *virt, size_t size, u_int align)
{

 if (ofw_def_impl == ((void*)0))
  return ((void *)-1);

 return (OFW_CLAIM(ofw_obj, virt, size, align));
}
