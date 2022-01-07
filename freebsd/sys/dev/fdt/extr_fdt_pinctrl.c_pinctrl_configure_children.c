
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int name ;
typedef scalar_t__ device_t ;


 int FDT_PINCTRL_CONFIGURE (scalar_t__,scalar_t__) ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_device_from_xref (scalar_t__) ;
 int OF_getencprop_alloc_multi (scalar_t__,char*,int,void**) ;
 int OF_getprop (scalar_t__,char*,char**,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (scalar_t__*) ;
 int TSENTER () ;
 int TSEXIT () ;
 scalar_t__ bootverbose ;
 int ofw_bus_node_status_okay (scalar_t__) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static int
pinctrl_configure_children(device_t pinctrl, phandle_t parent)
{
 phandle_t node, *configs;
 int i, nconfigs;

 TSENTER();

 for (node = OF_child(parent); node != 0; node = OF_peer(node)) {
  if (!ofw_bus_node_status_okay(node))
   continue;
  pinctrl_configure_children(pinctrl, node);
  nconfigs = OF_getencprop_alloc_multi(node, "pinctrl-0",
      sizeof(*configs), (void **)&configs);
  if (nconfigs <= 0)
   continue;
  if (bootverbose) {
   char name[32];
   OF_getprop(node, "name", &name, sizeof(name));
   printf("Processing %d pin-config node(s) in pinctrl-0 for %s\n",
       nconfigs, name);
  }
  for (i = 0; i < nconfigs; i++) {
   if (OF_device_from_xref(configs[i]) == pinctrl)
    FDT_PINCTRL_CONFIGURE(pinctrl, configs[i]);
  }
  OF_prop_free(configs);
 }
 TSEXIT();
 return (0);
}
