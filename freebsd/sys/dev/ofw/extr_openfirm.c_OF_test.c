
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFW_TEST (int ,char const*) ;
 int * ofw_def_impl ;
 int ofw_obj ;

int
OF_test(const char *name)
{

 if (ofw_def_impl == ((void*)0))
  return (-1);

 return (OFW_TEST(ofw_obj, name));
}
