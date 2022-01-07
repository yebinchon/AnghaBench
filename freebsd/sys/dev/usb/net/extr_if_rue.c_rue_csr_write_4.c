
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rue_softc {int dummy; } ;


 int USETDW (int *,int ) ;
 int rue_write_mem (struct rue_softc*,int,int **,int) ;

__attribute__((used)) static int
rue_csr_write_4(struct rue_softc *sc, int reg, uint32_t val)
{
 uint8_t temp[4];

 USETDW(temp, val);
 return (rue_write_mem(sc, reg, &temp, 4));
}
