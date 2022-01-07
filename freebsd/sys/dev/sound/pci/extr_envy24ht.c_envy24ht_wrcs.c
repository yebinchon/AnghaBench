
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int csh; int cst; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static void
envy24ht_wrcs(struct sc_info *sc, int regno, u_int32_t data, int size)
{
 switch (size) {
 case 1:
  bus_space_write_1(sc->cst, sc->csh, regno, data);
  break;
 case 2:
  bus_space_write_2(sc->cst, sc->csh, regno, data);
  break;
 case 4:
  bus_space_write_4(sc->cst, sc->csh, regno, data);
  break;
 }
}
