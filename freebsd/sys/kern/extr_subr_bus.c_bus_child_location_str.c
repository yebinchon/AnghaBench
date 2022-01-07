
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int BUS_CHILD_LOCATION_STR (int *,int *,char*,size_t) ;
 int * device_get_parent (int *) ;

int
bus_child_location_str(device_t child, char *buf, size_t buflen)
{
 device_t parent;

 parent = device_get_parent(child);
 if (parent == ((void*)0)) {
  *buf = '\0';
  return (0);
 }
 return (BUS_CHILD_LOCATION_STR(parent, child, buf, buflen));
}
