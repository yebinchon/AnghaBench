
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int KASSERT (int ,char*) ;
 int pci_pir_parse () ;
 int * pir_device ;

__attribute__((used)) static int
pir_attach(device_t dev)
{

 pci_pir_parse();
 KASSERT(pir_device == ((void*)0), ("Multiple pir devices"));
 pir_device = dev;
 return (0);
}
