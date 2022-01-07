
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int reg; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static u_int32_t
nm_rd(struct sc_info *sc, int regno, int size)
{
 bus_space_tag_t st = rman_get_bustag(sc->reg);
 bus_space_handle_t sh = rman_get_bushandle(sc->reg);

 switch (size) {
 case 1:
  return bus_space_read_1(st, sh, regno);
 case 2:
  return bus_space_read_2(st, sh, regno);
 case 4:
  return bus_space_read_4(st, sh, regno);
 default:
  return 0xffffffff;
 }
}
