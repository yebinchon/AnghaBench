
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {TYPE_1__* mem_bus_space; } ;
struct TYPE_2__ {int handle; int tag; } ;


 int bus_space_write_8 (int ,int ,int,int) ;
 int lio_write_csr32 (struct octeon_device*,int,int) ;

__attribute__((used)) static inline void
lio_write_csr64(struct octeon_device *oct, uint32_t reg, uint64_t val)
{





 bus_space_write_8(oct->mem_bus_space[0].tag,
     oct->mem_bus_space[0].handle, reg, val);

}
