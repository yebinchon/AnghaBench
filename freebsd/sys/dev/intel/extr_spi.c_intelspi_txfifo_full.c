
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intelspi_softc {int dummy; } ;


 int INTELSPI_ASSERT_LOCKED (struct intelspi_softc*) ;
 int INTELSPI_READ (struct intelspi_softc*,int ) ;
 int INTELSPI_SSPREG_SSSR ;
 int SSSR_TNF ;

__attribute__((used)) static int
intelspi_txfifo_full(struct intelspi_softc *sc)
{
 uint32_t sssr;

 INTELSPI_ASSERT_LOCKED(sc);

 sssr = INTELSPI_READ(sc, INTELSPI_SSPREG_SSSR);
 if (sssr & SSSR_TNF)
  return (0);

 return (1);
}
