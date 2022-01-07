
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_BUSMAX ;
 int bus_generic_attach (int ) ;
 int qpi_probe_pcib (int ,int) ;

__attribute__((used)) static int
qpi_attach(device_t dev)
{
 int bus;






 for (bus = PCI_BUSMAX; bus >= 0; bus--)
  qpi_probe_pcib(dev, bus);

 return (bus_generic_attach(dev));
}
