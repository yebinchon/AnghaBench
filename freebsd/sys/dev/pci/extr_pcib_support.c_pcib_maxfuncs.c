
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_FUNCMAX ;

int
pcib_maxfuncs(device_t dev)
{
 return (PCI_FUNCMAX);
}
