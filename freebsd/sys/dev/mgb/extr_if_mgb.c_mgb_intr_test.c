
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int isr_test_flag; } ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int) ;
 int DELAY (int) ;
 int MGB_INTR_ENBL_CLR ;
 int MGB_INTR_ENBL_SET ;
 int MGB_INTR_SET ;
 int MGB_INTR_STS ;
 int MGB_INTR_STS_ANY ;
 int MGB_INTR_STS_TEST ;
 int MGB_INTR_VEC_ENBL_SET ;
 int MGB_TIMEOUT ;

__attribute__((used)) static bool
mgb_intr_test(struct mgb_softc *sc)
{
 int i;

 sc->isr_test_flag = 0;
 CSR_WRITE_REG(sc, MGB_INTR_STS, MGB_INTR_STS_TEST);
 CSR_WRITE_REG(sc, MGB_INTR_VEC_ENBL_SET, MGB_INTR_STS_ANY);
 CSR_WRITE_REG(sc, MGB_INTR_ENBL_SET,
     MGB_INTR_STS_ANY | MGB_INTR_STS_TEST);
 CSR_WRITE_REG(sc, MGB_INTR_SET, MGB_INTR_STS_TEST);
 if (sc->isr_test_flag)
  return 1;
 for (i = 0; i < MGB_TIMEOUT; i++) {
  DELAY(10);
  if (sc->isr_test_flag)
   break;
 }
 CSR_WRITE_REG(sc, MGB_INTR_ENBL_CLR, MGB_INTR_STS_TEST);
 CSR_WRITE_REG(sc, MGB_INTR_STS, MGB_INTR_STS_TEST);
 return sc->isr_test_flag;
}
