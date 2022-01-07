
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value ;
typedef int uint32_t ;
typedef int qla_host_t ;
struct TYPE_3__ {int read_addr; int op_count; scalar_t__ read_addr_stride; } ;
typedef TYPE_1__ ql_minidump_entry_rdocm_t ;


 int READ_REG32 (int *,int volatile) ;

__attribute__((used)) static uint32_t
ql_rdocm(qla_host_t *ha,
 ql_minidump_entry_rdocm_t *ocmEntry,
 uint32_t *data_buff)
{
 int i, loop_cnt;
 volatile uint32_t addr;
 volatile uint32_t value;

 addr = ocmEntry->read_addr;
 loop_cnt = ocmEntry->op_count;

 for (i = 0; i < loop_cnt; i++) {
  value = READ_REG32(ha, addr);
  *data_buff++ = value;
  addr += ocmEntry->read_addr_stride;
 }
 return (loop_cnt * sizeof(value));
}
