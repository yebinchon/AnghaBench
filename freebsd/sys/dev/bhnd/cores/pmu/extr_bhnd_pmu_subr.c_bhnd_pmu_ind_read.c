
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_io {int (* rd4 ) (int ,void*) ;int (* wr4 ) (int ,int ,void*) ;} ;
typedef int bus_size_t ;


 int stub1 (int ,int ,void*) ;
 int stub2 (int ,void*) ;

uint32_t
bhnd_pmu_ind_read(const struct bhnd_pmu_io *io, void *io_ctx, bus_size_t addr,
    bus_size_t data, uint32_t reg)
{
 io->wr4(addr, reg, io_ctx);
 return (io->rd4(data, io_ctx));
}
