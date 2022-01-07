
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int device_set_desc_copy (int ,char*) ;

__attribute__((used)) static int
ahci_em_probe(device_t dev)
{

 device_set_desc_copy(dev, "AHCI enclosure management bridge");
 return (BUS_PROBE_DEFAULT);
}
