
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {int dummy; } ;


 int lio_pci_rw_core_mem (struct octeon_device*,int ,int *,int ,int ) ;

void
lio_pci_write_core_mem(struct octeon_device *oct, uint64_t coreaddr,
         uint8_t *buf, uint32_t len)
{

 lio_pci_rw_core_mem(oct, coreaddr, buf, len, 0);
}
