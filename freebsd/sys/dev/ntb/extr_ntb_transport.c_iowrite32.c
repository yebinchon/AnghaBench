
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int X86_BUS_SPACE_MEM ;
 int bus_space_write_4 (int ,int ,uintptr_t,int ) ;

__attribute__((used)) static inline void
iowrite32(uint32_t val, void *addr)
{

 bus_space_write_4(X86_BUS_SPACE_MEM, 0 , (uintptr_t)addr,
     val);
}
