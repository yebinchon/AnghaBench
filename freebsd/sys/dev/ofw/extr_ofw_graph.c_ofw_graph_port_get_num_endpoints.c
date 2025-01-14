
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
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

size_t
ofw_graph_port_get_num_endpoints(phandle_t port)
{
 phandle_t child;
 char *name;
 size_t num = 0;
 int ret;

 for (num = 0, child = OF_child(port); child != 0;
      child = OF_peer(child)) {
  ret = OF_getprop_alloc(child, "name", (void **)&name);
  if (ret == -1)
   continue;
  if (strcmp(name, "endpoint") == 0)
   num++;
  else if (strncmp(name, "endpoint@", 9) == 0)
   num++;
  free(name, M_OFWPROP);
 }

 return (num);
}
