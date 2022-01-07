
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int enh_sh; int enh_st; } ;


 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static u_int8_t
sv_direct_get(struct sc_info *sc, u_int8_t reg)
{
 return bus_space_read_1(sc->enh_st, sc->enh_sh, reg);
}
