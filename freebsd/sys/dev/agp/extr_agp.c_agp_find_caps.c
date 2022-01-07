
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int device_t ;


 int PCIY_AGP ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;

u_int8_t
agp_find_caps(device_t dev)
{
 int capreg;


 if (pci_find_cap(dev, PCIY_AGP, &capreg) != 0)
  capreg = 0;
 return (capreg);
}
