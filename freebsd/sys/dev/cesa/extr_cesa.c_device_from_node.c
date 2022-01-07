
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int * device_t ;


 int M_TEMP ;
 int OFW_BUS_GET_NODE (int *,int *) ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 int * device_lookup_by_name (char*) ;
 int free (int **,int ) ;

__attribute__((used)) static device_t
device_from_node(device_t root, phandle_t node)
{
 device_t *children, retval;
 int nkid, i;


 if (node == -1)
  return (((void*)0));

 if (root == ((void*)0))

  if ((root = device_lookup_by_name("root0")) == ((void*)0))
   return (((void*)0));

 if (device_get_children(root, &children, &nkid) != 0)
  return (((void*)0));

 retval = ((void*)0);
 for (i = 0; i < nkid; i++) {

  if (OFW_BUS_GET_NODE(root, children[i]) == node) {
   retval = children[i];
   break;
  }

  if ((retval = device_from_node(children[i], node)) != ((void*)0))
   break;
 }
 free(children, M_TEMP);

 return (retval);
}
