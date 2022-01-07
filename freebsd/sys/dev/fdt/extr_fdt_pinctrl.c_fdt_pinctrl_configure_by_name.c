
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int fdt_pinctrl_configure (int ,int) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

int
fdt_pinctrl_configure_by_name(device_t client, const char * name)
{
 char * names;
 int i, offset, nameslen;

 nameslen = OF_getprop_alloc(ofw_bus_get_node(client), "pinctrl-names",
     (void **)&names);
 if (nameslen <= 0)
  return (ENOENT);
 for (i = 0, offset = 0; offset < nameslen; i++) {
  if (strcmp(name, &names[offset]) == 0)
   break;
  offset += strlen(&names[offset]) + 1;
 }
 OF_prop_free(names);
 if (offset < nameslen)
  return (fdt_pinctrl_configure(client, i));
 else
  return (ENOENT);
}
