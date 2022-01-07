
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rsu_softc {int dummy; } ;


 scalar_t__ rsu_read_region_1 (struct rsu_softc*,int ,int*,int) ;

__attribute__((used)) static uint8_t
rsu_read_1(struct rsu_softc *sc, uint16_t addr)
{
 uint8_t val;

 if (rsu_read_region_1(sc, addr, &val, 1) != 0)
  return (0xff);
 return (val);
}
