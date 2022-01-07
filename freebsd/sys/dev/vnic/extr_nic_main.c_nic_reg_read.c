
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicpf {int reg_base; } ;


 int bus_read_8 (int ,int ) ;

__attribute__((used)) static __inline uint64_t
nic_reg_read(struct nicpf *nic, uint64_t offset)
{
 uint64_t val;

 val = bus_read_8(nic->reg_base, offset);
 return (val);
}
