
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int PCIB_HOTPLUG ;
 int bus_child_present (int ) ;
 struct pcib_softc* device_get_softc (int ) ;
 int pcib_hotplug_present (struct pcib_softc*) ;

int
pcib_child_present(device_t dev, device_t child)
{
 return (bus_child_present(dev));

}
