
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int mth; int mtt; } ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static void
envy24_wrmt(struct sc_info *sc, int regno, u_int32_t data, int size)
{
 switch (size) {
 case 1:
  bus_space_write_1(sc->mtt, sc->mth, regno, data);
  break;
 case 2:
  bus_space_write_2(sc->mtt, sc->mth, regno, data);
  break;
 case 4:
  bus_space_write_4(sc->mtt, sc->mth, regno, data);
  break;
 }
}
