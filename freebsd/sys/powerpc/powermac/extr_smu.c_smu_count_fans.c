
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_softc {int * sc_fans; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef int device_t ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 struct smu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int memset (char*,int ,int) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int smu_fill_fan_prop (int ,scalar_t__,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
smu_count_fans(device_t dev)
{
 struct smu_softc *sc;
 phandle_t child, node, root;
 int nfans = 0;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);


 for (root = OF_child(node); root != 0; root = OF_peer(root)) {
  char name[32];
  memset(name, 0, sizeof(name));
  OF_getprop(root, "name", name, sizeof(name));
  if (strncmp(name, "rpm-fans", 9) == 0 ||
      strncmp(name, "pwm-fans", 9) == 0 ||
      strncmp(name, "fans", 5) == 0)
   for (child = OF_child(root); child != 0;
        child = OF_peer(child)) {
    nfans++;

    if (sc->sc_fans != ((void*)0)) {
     smu_fill_fan_prop(dev, child,
         nfans - 1);
    }
   }
 }
 if (nfans == 0) {
  device_printf(dev, "WARNING: No fans detected!\n");
  return (0);
 }
 return (nfans);
}
