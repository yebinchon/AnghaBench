
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int sh; int st; } ;


 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static inline u_int32_t
cs4281_rd(struct sc_info *sc, int regno)
{
    return bus_space_read_4(sc->st, sc->sh, regno);
}
