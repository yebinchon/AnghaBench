
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_info {int nabmbarh; int nabmbart; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static __inline void
ich_wr(struct sc_info *sc, int regno, uint32_t data, int size)
{
 switch (size) {
 case 1:
  bus_space_write_1(sc->nabmbart, sc->nabmbarh, regno, data);
  break;
 case 2:
  bus_space_write_2(sc->nabmbart, sc->nabmbarh, regno, data);
  break;
 case 4:
  bus_space_write_4(sc->nabmbart, sc->nabmbarh, regno, data);
  break;
 }
}
