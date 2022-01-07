
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct axge_softc {int dummy; } ;


 int UGETW (int *) ;
 int axge_read_mem (struct axge_softc*,int ,int ,int ,int **,int) ;

__attribute__((used)) static uint16_t
axge_read_cmd_2(struct axge_softc *sc, uint8_t cmd, uint16_t index,
    uint16_t reg)
{
 uint8_t val[2];

 axge_read_mem(sc, cmd, index, reg, &val, 2);
 return (UGETW(val));
}
