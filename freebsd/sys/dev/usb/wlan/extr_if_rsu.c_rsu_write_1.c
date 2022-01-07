
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rsu_softc {int dummy; } ;


 int rsu_write_region_1 (struct rsu_softc*,int ,int *,int) ;

__attribute__((used)) static void
rsu_write_1(struct rsu_softc *sc, uint16_t addr, uint8_t val)
{
 rsu_write_region_1(sc, addr, &val, 1);
}
