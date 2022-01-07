
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int qla_host_t ;
struct TYPE_3__ {int addr; int op_count; int addr_stride; } ;
typedef TYPE_1__ ql_minidump_entry_rdcrb_t ;


 int ql_rdwr_indreg32 (int *,int,int*,int) ;

__attribute__((used)) static uint32_t
ql_rdcrb(qla_host_t *ha, ql_minidump_entry_rdcrb_t * crb_entry,
 uint32_t * data_buff)
{
 int loop_cnt;
 int ret;
 uint32_t op_count, addr, stride, value = 0;

 addr = crb_entry->addr;
 op_count = crb_entry->op_count;
 stride = crb_entry->addr_stride;

 for (loop_cnt = 0; loop_cnt < op_count; loop_cnt++) {

  ret = ql_rdwr_indreg32(ha, addr, &value, 1);

  if (ret)
   return (0);

  *data_buff++ = addr;
  *data_buff++ = value;
  addr = addr + stride;
 }




 return (op_count * (2 * sizeof(uint32_t)));
}
