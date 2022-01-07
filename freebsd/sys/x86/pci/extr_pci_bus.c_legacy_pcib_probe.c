
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ pci_cfgregopen () ;

__attribute__((used)) static int
legacy_pcib_probe(device_t dev)
{

 if (pci_cfgregopen() == 0)
  return ENXIO;
 return -100;
}
