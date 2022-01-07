
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int sh; int st; } ;


 int ALS_MIXER_DATA ;
 int ALS_MIXER_INDEX ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
als_mix_wr(struct sc_info *sc, u_int8_t index, u_int8_t data)
{
 bus_space_write_1(sc->st, sc->sh, ALS_MIXER_INDEX, index);
 bus_space_write_1(sc->st, sc->sh, ALS_MIXER_DATA, data);
}
