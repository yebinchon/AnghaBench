
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devclass_t ;


 int TRUE ;
 int devclass_find_internal (char const*,int *,int ) ;

devclass_t
devclass_create(const char *classname)
{
 return (devclass_find_internal(classname, ((void*)0), TRUE));
}
