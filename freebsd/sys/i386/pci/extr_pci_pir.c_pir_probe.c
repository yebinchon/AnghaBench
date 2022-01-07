
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int buf ;


 int device_set_desc_copy (int ,char*) ;
 int pci_route_count ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
pir_probe(device_t dev)
{
 char buf[64];

 snprintf(buf, sizeof(buf), "PCI Interrupt Routing Table: %d Entries",
     pci_route_count);
 device_set_desc_copy(dev, buf);
 return (0);
}
