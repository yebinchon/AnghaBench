
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct axge_softc {int dummy; } ;


 int axge_write_mem (struct axge_softc*,int ,int,int ,int *,int) ;

__attribute__((used)) static void
axge_write_cmd_1(struct axge_softc *sc, uint8_t cmd, uint16_t reg, uint8_t val)
{
 axge_write_mem(sc, cmd, 1, reg, &val, 1);
}
