
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ihandle_t ;


 int OFW_INSTANCE_TO_PATH (int ,int ,char*,size_t) ;
 int * ofw_def_impl ;
 int ofw_obj ;

ssize_t
OF_instance_to_path(ihandle_t instance, char *buf, size_t len)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_INSTANCE_TO_PATH(ofw_obj, instance, buf, len));
}
