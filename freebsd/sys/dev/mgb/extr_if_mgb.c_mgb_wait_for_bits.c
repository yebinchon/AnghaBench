
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_READ_REG (struct mgb_softc*,int) ;
 int DELAY (int) ;
 int MGB_STS_OK ;
 int MGB_STS_TIMEOUT ;
 int MGB_TIMEOUT ;

__attribute__((used)) static int
mgb_wait_for_bits(struct mgb_softc *sc, int reg, int set_bits, int clear_bits)
{
 int i, val;

 i = 0;
 do {




  DELAY(100);
  val = CSR_READ_REG(sc, reg);
  if ((val & set_bits) == set_bits &&
      (val & clear_bits) == 0)
   return MGB_STS_OK;
 } while (i++ < MGB_TIMEOUT);

 return MGB_STS_TIMEOUT;
}
