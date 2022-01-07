
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFW_RELEASE (int ,void*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

void
OF_release(void *virt, size_t size)
{

 if (ofw_def_impl == ((void*)0))
  return;

 OFW_RELEASE(ofw_obj, virt, size);
}
