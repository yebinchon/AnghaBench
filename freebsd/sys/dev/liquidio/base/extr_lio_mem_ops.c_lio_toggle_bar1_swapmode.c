
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* bar1_idx_read ) (struct octeon_device*,int) ;int (* bar1_idx_write ) (struct octeon_device*,int,int) ;} ;
struct octeon_device {TYPE_1__ fn_list; } ;


 int stub1 (struct octeon_device*,int) ;
 int stub2 (struct octeon_device*,int,int) ;

__attribute__((used)) static inline void
lio_toggle_bar1_swapmode(struct octeon_device *oct, uint32_t idx)
{
 uint32_t mask;

 mask = oct->fn_list.bar1_idx_read(oct, idx);
 mask = (mask & 0x2) ? (mask & ~2) : (mask | 2);
 oct->fn_list.bar1_idx_write(oct, idx, mask);
}
