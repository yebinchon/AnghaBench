
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhnd_erom_iores {int * mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef int bhnd_size_t ;


 int bhnd_bus_read_1 (int *,int ) ;
 int bhnd_bus_read_2 (int *,int ) ;
 int bhnd_bus_read_4 (int *,int ) ;
 int panic (char*,...) ;

__attribute__((used)) static uint32_t
bhnd_erom_iores_read(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
 struct bhnd_erom_iores *iores = (struct bhnd_erom_iores *)eio;

 if (iores->mapped == ((void*)0))
  panic("read with invalid mapping");

 switch (width) {
 case 1:
  return (bhnd_bus_read_1(iores->mapped, offset));
 case 2:
  return (bhnd_bus_read_2(iores->mapped, offset));
 case 4:
  return (bhnd_bus_read_4(iores->mapped, offset));
 default:
  panic("invalid width %u", width);
 }
}
