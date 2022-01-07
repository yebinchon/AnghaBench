
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int sh; int st; } ;


 int KASSERT (int ,char*) ;
 int bus_space_read_1 (int ,int ,unsigned int) ;
 int bus_space_read_2 (int ,int ,unsigned int) ;
 int bus_space_read_4 (int ,int ,unsigned int) ;

__attribute__((used)) static uint32_t
emu_rd_nolock(struct emu_sc_info *sc, unsigned int regno, unsigned int size)
{

 KASSERT(sc != ((void*)0), ("emu_rd: NULL sc"));
 switch (size) {
 case 1:
  return (bus_space_read_1(sc->st, sc->sh, regno));
 case 2:
  return (bus_space_read_2(sc->st, sc->sh, regno));
 case 4:
  return (bus_space_read_4(sc->st, sc->sh, regno));
 }
 return (0xffffffff);
}
