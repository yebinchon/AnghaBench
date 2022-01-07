
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; int bus; } ;
typedef int device_t ;


 int PCIB_HOTPLUG ;
 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 struct pcib_softc* device_get_softc (int ) ;
 int pcib_detach_hotplug (struct pcib_softc*) ;
 int pcib_free_secbus (int ,int *) ;
 int pcib_free_windows (struct pcib_softc*) ;

int
pcib_detach(device_t dev)
{



 int error;




 error = bus_generic_detach(dev);
 if (error)
  return (error);







 error = device_delete_children(dev);
 if (error)
  return (error);






 return (0);
}
