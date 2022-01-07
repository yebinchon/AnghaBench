
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rue_softc {int dummy; } ;


 int rue_write_mem (struct rue_softc*,int ,int *,int) ;

__attribute__((used)) static int
rue_csr_write_1(struct rue_softc *sc, uint16_t reg, uint8_t val)
{
 return (rue_write_mem(sc, reg, &val, 1));
}
