
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int phandle_t ;
typedef int name ;
typedef int * device_t ;


 int ENOENT ;
 int FDT_PINCTRL_CONFIGURE (int *,int ) ;
 int * OF_device_from_xref (int ) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (int *) ;
 int ofw_bus_get_node (int *) ;
 int snprintf (char*,int,char*,int) ;

int
fdt_pinctrl_configure(device_t client, u_int index)
{
 device_t pinctrl;
 phandle_t *configs;
 int i, nconfigs;
 char name[16];

 snprintf(name, sizeof(name), "pinctrl-%u", index);
 nconfigs = OF_getencprop_alloc_multi(ofw_bus_get_node(client), name,
     sizeof(*configs), (void **)&configs);
 if (nconfigs < 0)
  return (ENOENT);
 if (nconfigs == 0)
  return (0);
 for (i = 0; i < nconfigs; i++) {
  if ((pinctrl = OF_device_from_xref(configs[i])) != ((void*)0))
   FDT_PINCTRL_CONFIGURE(pinctrl, configs[i]);
 }
 OF_prop_free(configs);
 return (0);
}
