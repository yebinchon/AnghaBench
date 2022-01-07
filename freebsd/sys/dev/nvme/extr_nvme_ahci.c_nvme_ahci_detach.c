
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int nvme_detach (int ) ;

__attribute__((used)) static int
nvme_ahci_detach(device_t dev)
{

 return (nvme_detach(dev));
}
