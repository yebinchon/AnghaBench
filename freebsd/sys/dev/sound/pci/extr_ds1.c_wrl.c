
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int sh; int st; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
wrl(struct sc_info *sc, u_int32_t *ptr, u_int32_t val)
{
 *(volatile u_int32_t *)ptr = val;
 bus_space_barrier(sc->st, sc->sh, 0, 0, BUS_SPACE_BARRIER_WRITE);
}
