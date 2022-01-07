
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ure_softc {int dummy; } ;


 int UGETDW (int *) ;
 int ure_read_mem (struct ure_softc*,int ,int ,int **,int) ;

__attribute__((used)) static uint32_t
ure_read_4(struct ure_softc *sc, uint16_t reg, uint16_t index)
{
 uint8_t temp[4];

 ure_read_mem(sc, reg, index, &temp, 4);
 return (UGETDW(temp));
}
