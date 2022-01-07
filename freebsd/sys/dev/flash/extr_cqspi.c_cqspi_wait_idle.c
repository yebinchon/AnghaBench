
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cqspi_softc {int dummy; } ;


 int CFG_IDLE ;
 int CQSPI_CFG ;
 int READ4 (struct cqspi_softc*,int ) ;

__attribute__((used)) static int
cqspi_wait_idle(struct cqspi_softc *sc)
{
 uint32_t reg;

 do {
  reg = READ4(sc, CQSPI_CFG);
  if (reg & CFG_IDLE) {
   break;
  }
 } while (1);

 return (0);
}
