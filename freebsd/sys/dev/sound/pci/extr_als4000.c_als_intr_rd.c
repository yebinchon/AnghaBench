
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int sh; int st; } ;


 int ALS_SB_MPU_IRQ ;
 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static u_int8_t
als_intr_rd(struct sc_info *sc)
{
 return bus_space_read_1(sc->st, sc->sh, ALS_SB_MPU_IRQ);
}
