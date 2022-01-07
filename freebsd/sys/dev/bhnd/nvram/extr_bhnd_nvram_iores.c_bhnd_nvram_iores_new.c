
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;
struct bhnd_resource {int res; } ;
struct bhnd_nvram_io {int * iops; } ;
struct bhnd_nvram_iores {int bus_width; struct bhnd_nvram_io io; scalar_t__ size; scalar_t__ offset; struct bhnd_resource* res; } ;
typedef scalar_t__ rman_res_t ;
typedef scalar_t__ bus_size_t ;


 int BHND_NV_LOG (char*,int,...) ;
 scalar_t__ BUS_SPACE_MAXSIZE ;
 int M_BHND_NVRAM ;
 int M_WAITOK ;
 scalar_t__ SIZE_MAX ;
 int bhnd_nvram_iores_ops ;
 struct bhnd_nvram_iores* malloc (int,int ,int ) ;
 scalar_t__ rman_get_size (int ) ;
 scalar_t__ rman_get_start (int ) ;

struct bhnd_nvram_io *
bhnd_nvram_iores_new(struct bhnd_resource *r, bus_size_t offset,
    bus_size_t size, u_int bus_width)
{
 struct bhnd_nvram_iores *iores;
 rman_res_t r_start, r_size;


 switch (bus_width) {
 case 1:
 case 2:
 case 4:

  break;
 default:
  BHND_NV_LOG("invalid bus width %u\n", bus_width);
  return (((void*)0));
 }




 if (size > SIZE_MAX || offset > SIZE_MAX) {
  BHND_NV_LOG("offset %#jx+%#jx exceeds SIZE_MAX\n",
      (uintmax_t)offset, (uintmax_t)offset);
  return (((void*)0));
 }

 if (size > BUS_SPACE_MAXSIZE || offset > BUS_SPACE_MAXSIZE)
 {
  BHND_NV_LOG("offset %#jx+%#jx exceeds BUS_SPACE_MAXSIZE\n",
      (uintmax_t)offset, (uintmax_t)offset);
  return (((void*)0));
 }


 r_size = rman_get_size(r->res);
 r_start = rman_get_start(r->res);
 if (r_size < offset || r_size < size || r_size - size < offset)
  return (((void*)0));


 if ((r_start + offset) % bus_width != 0) {
  BHND_NV_LOG("base address %#jx+%#jx not aligned to bus width "
      "%u\n", (uintmax_t)r_start, (uintmax_t)offset, bus_width);
  return (((void*)0));
 }

 if (size % bus_width != 0) {
  BHND_NV_LOG("size %#jx not aligned to bus width %u\n",
      (uintmax_t)size, bus_width);
  return (((void*)0));
 }


 iores = malloc(sizeof(*iores), M_BHND_NVRAM, M_WAITOK);
 iores->io.iops = &bhnd_nvram_iores_ops;
 iores->res = r;
 iores->offset = offset;
 iores->size = size;
 iores->bus_width = bus_width;

 return (&iores->io);
}
