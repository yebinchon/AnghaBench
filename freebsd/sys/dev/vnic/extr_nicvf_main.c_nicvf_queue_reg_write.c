
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int reg_base; } ;
typedef scalar_t__ bus_space_handle_t ;


 int NIC_Q_NUM_SHIFT ;
 int bus_write_8 (int ,scalar_t__,int) ;

void
nicvf_queue_reg_write(struct nicvf *nic, bus_space_handle_t offset,
    uint64_t qidx, uint64_t val)
{

 bus_write_8(nic->reg_base, offset + (qidx << NIC_Q_NUM_SHIFT), val);
}
