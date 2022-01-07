
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ure_softc {int dummy; } ;


 int URE_BYTE_EN_DWORD ;
 int USETDW (int *,int ) ;
 int ure_write_mem (struct ure_softc*,int,int,int **,int) ;

__attribute__((used)) static int
ure_write_4(struct ure_softc *sc, uint16_t reg, uint16_t index, uint32_t val)
{
 uint8_t temp[4];

 USETDW(temp, val);
 return (ure_write_mem(sc, reg, index | URE_BYTE_EN_DWORD, &temp, 4));
}
