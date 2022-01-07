
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {TYPE_1__* rds_ring; } ;
struct TYPE_9__ {TYPE_2__ dma_buf; } ;
struct TYPE_10__ {TYPE_3__ hw; } ;
typedef TYPE_4__ qla_host_t ;
struct TYPE_11__ {size_t buf_size; int buf_addr; scalar_t__ handle; } ;
typedef TYPE_5__ q80_recv_desc_t ;
typedef int bus_addr_t ;
struct TYPE_7__ {scalar_t__ dma_b; } ;



__attribute__((used)) static __inline void
qla_set_hw_rcv_desc(qla_host_t *ha, uint32_t ridx, uint32_t index,
 uint32_t handle, bus_addr_t paddr, uint32_t buf_size)
{
 q80_recv_desc_t *rcv_desc;

 rcv_desc = (q80_recv_desc_t *)ha->hw.dma_buf.rds_ring[ridx].dma_b;

 rcv_desc += index;

 rcv_desc->handle = (uint16_t)handle;
 rcv_desc->buf_size = buf_size;
 rcv_desc->buf_addr = paddr;

 return;
}
