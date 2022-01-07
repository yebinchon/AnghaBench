
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
port_rd(struct resource *port, int regno, int size)
{
 bus_space_tag_t st = rman_get_bustag(port);
 bus_space_handle_t sh = rman_get_bushandle(port);

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
