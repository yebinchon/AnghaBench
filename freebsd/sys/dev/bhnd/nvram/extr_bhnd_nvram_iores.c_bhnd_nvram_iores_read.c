
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iores {int bus_width; int res; scalar_t__ offset; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef scalar_t__ bus_size_t ;


 int ENXIO ;
 int bhnd_bus_read_region_stream_1 (int ,scalar_t__,void*,size_t) ;
 int bhnd_bus_read_region_stream_2 (int ,scalar_t__,void*,size_t) ;
 int bhnd_bus_read_region_stream_4 (int ,scalar_t__,void*,size_t) ;
 int bhnd_nvram_iores_validate_req (struct bhnd_nvram_iores*,size_t,size_t*) ;
 int panic (char*) ;

__attribute__((used)) static int
bhnd_nvram_iores_read(struct bhnd_nvram_io *io, size_t offset, void *buffer,
    size_t nbytes)
{
 struct bhnd_nvram_iores *iores;
 bus_size_t r_offset;
 size_t navail;
 int error;

 iores = (struct bhnd_nvram_iores *)io;



 navail = nbytes;
 if ((error = bhnd_nvram_iores_validate_req(iores, offset, &navail)))
  return (error);


 if (navail < nbytes)
  return (ENXIO);


 if (nbytes == 0)
  return (0);


 r_offset = iores->offset + offset;
 switch (iores->bus_width) {
 case 1:
  bhnd_bus_read_region_stream_1(iores->res, r_offset, buffer,
      nbytes);
  break;
 case 2:
  bhnd_bus_read_region_stream_2(iores->res, r_offset, buffer,
      nbytes / 2);
  break;
 case 4:
  bhnd_bus_read_region_stream_4(iores->res, r_offset, buffer,
      nbytes / 4);
  break;
 default:
  panic("unreachable!");
 }

 return (0);
}
