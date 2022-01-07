
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int device_probe_and_attach (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int *,scalar_t__) ;

__attribute__((used)) static int
ofw_clkbus_attach(device_t dev)
{
 phandle_t node, child;
 device_t cdev;

 node = ofw_bus_get_node(dev);
 simplebus_init(dev, node);

 for (child = OF_child(node); child > 0; child = OF_peer(child)) {
  cdev = simplebus_add_device(dev, child, 0, ((void*)0), -1, ((void*)0));
  if (cdev != ((void*)0))
   device_probe_and_attach(cdev);
 }

 return (bus_generic_attach(dev));
}
