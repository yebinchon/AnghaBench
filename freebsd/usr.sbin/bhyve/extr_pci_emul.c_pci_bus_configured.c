
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXBUSES ;
 int assert (int) ;
 int ** pci_businfo ;

int
pci_bus_configured(int bus)
{
 assert(bus >= 0 && bus < MAXBUSES);
 return (pci_businfo[bus] != ((void*)0));
}
