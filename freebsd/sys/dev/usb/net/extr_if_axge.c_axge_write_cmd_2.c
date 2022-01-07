
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct axge_softc {int dummy; } ;


 int USETW (int *,int ) ;
 int axge_write_mem (struct axge_softc*,int ,int ,int ,int **,int) ;

__attribute__((used)) static void
axge_write_cmd_2(struct axge_softc *sc, uint8_t cmd, uint16_t index,
    uint16_t reg, uint16_t val)
{
 uint8_t temp[2];

 USETW(temp, val);
 axge_write_mem(sc, cmd, index, reg, &temp, 2);
}
