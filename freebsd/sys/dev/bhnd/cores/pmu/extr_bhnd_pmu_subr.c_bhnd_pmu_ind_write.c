
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_io {int (* rd4 ) (int ,void*) ;int (* wr4 ) (int ,int,void*) ;} ;
typedef int bus_size_t ;


 int UINT32_MAX ;
 int stub1 (int ,int,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,int,void*) ;

void
bhnd_pmu_ind_write(const struct bhnd_pmu_io *io, void *io_ctx, bus_size_t addr,
    bus_size_t data, uint32_t reg, uint32_t val, uint32_t mask)
{
 uint32_t rval;

 io->wr4(addr, reg, io_ctx);

 if (mask != UINT32_MAX) {
  rval = io->rd4(data, io_ctx);
  rval &= ~mask | (val & mask);
 } else {
  rval = val;
 }

 io->wr4(data, rval, io_ctx);
}
