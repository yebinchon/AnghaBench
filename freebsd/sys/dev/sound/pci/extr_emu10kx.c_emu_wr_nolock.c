
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int sh; int st; } ;


 int KASSERT (int ,char*) ;
 int bus_space_write_1 (int ,int ,unsigned int,int ) ;
 int bus_space_write_2 (int ,int ,unsigned int,int ) ;
 int bus_space_write_4 (int ,int ,unsigned int,int ) ;

__attribute__((used)) static void
emu_wr_nolock(struct emu_sc_info *sc, unsigned int regno, uint32_t data, unsigned int size)
{

 KASSERT(sc != ((void*)0), ("emu_rd: NULL sc"));
 switch (size) {
 case 1:
  bus_space_write_1(sc->st, sc->sh, regno, data);
  break;
 case 2:
  bus_space_write_2(sc->st, sc->sh, regno, data);
  break;
 case 4:
  bus_space_write_4(sc->st, sc->sh, regno, data);
  break;
 }
}
