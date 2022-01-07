
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct octeon_device {TYPE_1__* mem_bus_space; } ;
struct TYPE_2__ {int handle; int tag; } ;


 int bus_space_read_8 (int ,int ,scalar_t__) ;
 int lio_read_csr32 (struct octeon_device*,scalar_t__) ;

__attribute__((used)) static inline uint64_t
lio_read_csr64(struct octeon_device *oct, uint32_t reg)
{





 return (bus_space_read_8(oct->mem_bus_space[0].tag,
     oct->mem_bus_space[0].handle, reg));

}
