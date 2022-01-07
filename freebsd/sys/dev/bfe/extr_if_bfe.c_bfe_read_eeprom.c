
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct bfe_softc {int dummy; } ;


 int CSR_READ_4 (struct bfe_softc*,int) ;

__attribute__((used)) static void
bfe_read_eeprom(struct bfe_softc *sc, u_int8_t *data)
{
 long i;
 u_int16_t *ptr = (u_int16_t *)data;

 for(i = 0; i < 128; i += 2)
  ptr[i/2] = CSR_READ_4(sc, 4096 + i);
}
