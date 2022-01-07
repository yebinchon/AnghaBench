
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 int M_OFWPROP ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int free (char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;

phandle_t
ofw_bus_find_child(phandle_t start, const char *child_name)
{
 char *name;
 int ret;
 phandle_t child;

 for (child = OF_child(start); child != 0; child = OF_peer(child)) {
  ret = OF_getprop_alloc(child, "name", (void **)&name);
  if (ret == -1)
   continue;
  if (strcmp(name, child_name) == 0) {
   free(name, M_OFWPROP);
   return (child);
  }

  free(name, M_OFWPROP);
 }

 return (0);
}
