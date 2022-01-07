
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intelspi_softc {int dummy; } ;


 int CS_HIGH ;
 int INTELSPI_READ (struct intelspi_softc*,int ) ;
 int INTELSPI_SSPREG_SPI_CS_CTRL ;
 int INTELSPI_WRITE (struct intelspi_softc*,int ,int ) ;
 int SPI_CS_CTRL_CS_HIGH ;
 int SPI_CS_CTRL_CS_LOW ;
 int SPI_CS_CTRL_CS_MASK ;
 int SPI_CS_CTRL_SW_MODE ;

__attribute__((used)) static void
intelspi_set_cs(struct intelspi_softc *sc, int level)
{
 uint32_t reg;

 reg = INTELSPI_READ(sc, INTELSPI_SSPREG_SPI_CS_CTRL);
 reg &= ~(SPI_CS_CTRL_CS_MASK);
 reg |= SPI_CS_CTRL_SW_MODE;

 if (level == CS_HIGH)
  reg |= SPI_CS_CTRL_CS_HIGH;
 else
  reg |= SPI_CS_CTRL_CS_LOW;

 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SPI_CS_CTRL, reg);
}
