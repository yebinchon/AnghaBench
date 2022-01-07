
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int * device_t ;


 int M_TEMP ;
 int OFW_BUS_GET_NODE (int *,int *) ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 int free (int **,int ) ;

device_t
ofw_bus_find_child_device_by_phandle(device_t bus, phandle_t node)
{
 device_t *children, retval, child;
 int nkid, i;




 if (node == -1)
  return (((void*)0));






 if (device_get_children(bus, &children, &nkid) != 0)
  return (((void*)0));
 retval = ((void*)0);
 for (i = 0; i < nkid; i++) {
  child = children[i];
  if (OFW_BUS_GET_NODE(bus, child) == node) {
   retval = child;
   break;
  }
 }
 free(children, M_TEMP);

 return (retval);
}
