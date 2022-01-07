
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {int dummy; } ;
typedef int __be32 ;


 int htobe32 (int ) ;
 int lio_pci_rw_core_mem (struct octeon_device*,int ,int *,int,int ) ;

void
lio_write_device_mem32(struct octeon_device *oct, uint64_t coreaddr,
         uint32_t val)
{
 __be32 t = htobe32(val);

 lio_pci_rw_core_mem(oct, coreaddr, (uint8_t *)&t, 4, 0);
}
