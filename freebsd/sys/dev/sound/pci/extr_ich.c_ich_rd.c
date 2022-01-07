
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_info {int nabmbarh; int nabmbart; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static __inline uint32_t
ich_rd(struct sc_info *sc, int regno, int size)
{
 switch (size) {
 case 1:
  return (bus_space_read_1(sc->nabmbart, sc->nabmbarh, regno));
 case 2:
  return (bus_space_read_2(sc->nabmbart, sc->nabmbarh, regno));
 case 4:
  return (bus_space_read_4(sc->nabmbart, sc->nabmbarh, regno));
 default:
  return (0xffffffff);
 }
}
