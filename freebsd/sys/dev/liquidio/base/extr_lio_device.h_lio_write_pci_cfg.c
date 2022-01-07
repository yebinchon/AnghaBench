
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int device; } ;


 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static inline void
lio_write_pci_cfg(struct octeon_device *oct, uint32_t reg, uint32_t value)
{

 pci_write_config(oct->device, reg, value, 4);
}
