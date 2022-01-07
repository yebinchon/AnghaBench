
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_find_dbsf (int ,int ,int ,int ) ;

__attribute__((used)) static device_t
agp_i810_find_bridge(device_t dev)
{

 return (pci_find_dbsf(0, 0, 0, 0));
}
