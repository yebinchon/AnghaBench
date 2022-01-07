
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {int dummy; } ;
typedef int * device_t ;


 int ENODEV ;
 int SYSCON_GET_HANDLE (int *,struct syscon**) ;
 int * device_get_parent (int *) ;

int
syscon_get_handle_default(device_t dev, struct syscon **syscon)
{
 device_t parent;

 parent = device_get_parent(dev);
 if (parent == ((void*)0))
  return (ENODEV);
 return (SYSCON_GET_HANDLE(parent, syscon));
}
