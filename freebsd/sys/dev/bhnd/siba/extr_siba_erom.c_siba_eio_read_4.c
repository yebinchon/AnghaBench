
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct siba_erom_io {scalar_t__ ncores; int eio; } ;
typedef int bus_size_t ;


 int SIBA_CORE_OFFSET (scalar_t__) ;
 int SIBA_CORE_SIZE ;
 int bhnd_erom_io_read (int ,int,int) ;
 int panic (char*,scalar_t__,...) ;

__attribute__((used)) static uint32_t
siba_eio_read_4(struct siba_erom_io *io, u_int core_idx, bus_size_t offset)
{

 if (core_idx >= io->ncores)
  panic("core index %u out of range (ncores=%u)", core_idx,
      io->ncores);

 if (offset > SIBA_CORE_SIZE - sizeof(uint32_t))
  panic("invalid core offset %#jx", (uintmax_t)offset);


 return (bhnd_erom_io_read(io->eio, SIBA_CORE_OFFSET(core_idx) + offset,
     4));
}
