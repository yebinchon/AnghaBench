
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int buf; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static void
nm_wrbuf(struct sc_info *sc, int regno, u_int32_t data, int size)
{
 bus_space_tag_t st = rman_get_bustag(sc->buf);
 bus_space_handle_t sh = rman_get_bushandle(sc->buf);

 switch (size) {
 case 1:
  bus_space_write_1(st, sh, regno, data);
  break;
 case 2:
  bus_space_write_2(st, sh, regno, data);
  break;
 case 4:
  bus_space_write_4(st, sh, regno, data);
  break;
 }
}
