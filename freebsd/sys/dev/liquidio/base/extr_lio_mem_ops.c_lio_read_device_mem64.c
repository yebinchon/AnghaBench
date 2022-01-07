
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct octeon_device {int dummy; } ;
typedef int __be64 ;


 int be64toh (int ) ;
 int lio_pci_rw_core_mem (struct octeon_device*,int ,int *,int,int) ;

uint64_t
lio_read_device_mem64(struct octeon_device *oct, uint64_t coreaddr)
{
 __be64 ret;

 lio_pci_rw_core_mem(oct, coreaddr, (uint8_t *)&ret, 8, 1);

 return (be64toh(ret));
}
