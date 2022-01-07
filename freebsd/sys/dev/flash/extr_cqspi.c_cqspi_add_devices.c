
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int device_probe_and_attach (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int printf (char*,int) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;

__attribute__((used)) static int
cqspi_add_devices(device_t dev)
{
 phandle_t child, node;
 device_t child_dev;
 int error;

 node = ofw_bus_get_node(dev);

 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  child_dev =
      simplebus_add_device(dev, child, 0, ((void*)0), -1, ((void*)0));
  if (child_dev == ((void*)0)) {
   return (ENXIO);
  }

  error = device_probe_and_attach(child_dev);
  if (error != 0) {
   printf("can't probe and attach: %d\n", error);
  }
 }

 return (0);
}
