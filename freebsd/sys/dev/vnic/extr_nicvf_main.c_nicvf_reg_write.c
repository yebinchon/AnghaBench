
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int reg_base; } ;
typedef int bus_space_handle_t ;


 int bus_write_8 (int ,int ,int ) ;

void
nicvf_reg_write(struct nicvf *nic, bus_space_handle_t offset, uint64_t val)
{

 bus_write_8(nic->reg_base, offset, val);
}
