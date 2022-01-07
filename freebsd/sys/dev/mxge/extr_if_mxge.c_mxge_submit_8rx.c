
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int addr_low; } ;
typedef TYPE_1__ mcp_kreq_ether_recv_t ;


 int mxge_pio_copy (TYPE_1__ volatile*,TYPE_1__*,int) ;
 int wmb () ;

__attribute__((used)) static inline void
mxge_submit_8rx(volatile mcp_kreq_ether_recv_t *dst,
  mcp_kreq_ether_recv_t *src)
{
 uint32_t low;

 low = src->addr_low;
 src->addr_low = 0xffffffff;
 mxge_pio_copy(dst, src, 4 * sizeof (*src));
 wmb();
 mxge_pio_copy(dst + 4, src + 4, 4 * sizeof (*src));
 wmb();
 src->addr_low = low;
 dst->addr_low = low;
 wmb();
}
