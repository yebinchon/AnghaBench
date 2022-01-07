
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int ida_dev_t; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int destroy_dev (int ) ;
 int device_delete_children (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int ida_free (struct ida_softc*) ;

int
ida_detach(device_t dev)
{
 struct ida_softc *ida;
 int error;

 ida = (struct ida_softc *)device_get_softc(dev);

 error = bus_generic_detach(dev);
 if (error)
  return (error);
 error = device_delete_children(dev);
 if (error)
  return (error);
 destroy_dev(ida->ida_dev_t);
 ida_free(ida);
 return (error);
}
