
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf {int reg_base; } ;


 int bus_read_8 (int ,int ) ;

uint64_t
nicvf_reg_read(struct nicvf *nic, uint64_t offset)
{

 return (bus_read_8(nic->reg_base, offset));
}
