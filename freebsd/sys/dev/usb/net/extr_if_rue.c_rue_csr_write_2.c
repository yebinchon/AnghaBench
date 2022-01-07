
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rue_softc {int dummy; } ;


 int USETW (int *,int ) ;
 int rue_write_mem (struct rue_softc*,int ,int **,int) ;

__attribute__((used)) static int
rue_csr_write_2(struct rue_softc *sc, uint16_t reg, uint16_t val)
{
 uint8_t temp[2];

 USETW(temp, val);
 return (rue_write_mem(sc, reg, &temp, 2));
}
