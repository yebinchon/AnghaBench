
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int device; } ;


 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static inline uint32_t
lio_read_pci_cfg(struct octeon_device *oct, uint32_t reg)
{

 return (pci_read_config(oct->device, reg, 4));
}
