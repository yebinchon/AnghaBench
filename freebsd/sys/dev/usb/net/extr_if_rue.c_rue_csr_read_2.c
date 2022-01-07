
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rue_softc {int dummy; } ;


 int UGETW (int *) ;
 int rue_read_mem (struct rue_softc*,int ,int **,int) ;

__attribute__((used)) static uint16_t
rue_csr_read_2(struct rue_softc *sc, uint16_t reg)
{
 uint8_t val[2];

 rue_read_mem(sc, reg, &val, 2);
 return (UGETW(val));
}
