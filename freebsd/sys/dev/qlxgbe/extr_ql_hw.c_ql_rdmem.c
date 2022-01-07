
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int qla_host_t ;
struct TYPE_5__ {int read_addr; int read_data_size; } ;
typedef TYPE_1__ ql_minidump_entry_rdmem_t ;
struct TYPE_6__ {int data_uhi; int data_ulo; int data_hi; int data_lo; } ;
typedef TYPE_2__ q80_offchip_mem_val_t ;


 int ql_rdwr_offchip_mem (int *,int volatile,TYPE_2__*,int) ;

__attribute__((used)) static uint32_t
ql_rdmem(qla_host_t *ha,
 ql_minidump_entry_rdmem_t *mem_entry,
 uint32_t *data_buff)
{
 int ret;
        int i, loop_cnt;
        volatile uint32_t addr;
 q80_offchip_mem_val_t val;

        addr = mem_entry->read_addr;


        loop_cnt = mem_entry->read_data_size / (sizeof(uint32_t) * 4);

        for (i = 0; i < loop_cnt; i++) {

  ret = ql_rdwr_offchip_mem(ha, (addr & 0x0ffffffff), &val, 1);
  if (ret)
   return (0);

                *data_buff++ = val.data_lo;
                *data_buff++ = val.data_hi;
                *data_buff++ = val.data_ulo;
                *data_buff++ = val.data_uhi;

                addr += (sizeof(uint32_t) * 4);
        }

        return (loop_cnt * (sizeof(uint32_t) * 4));
}
