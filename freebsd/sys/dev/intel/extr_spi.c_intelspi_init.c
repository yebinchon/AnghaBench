
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intelspi_softc {int dummy; } ;


 int CLOCK_DIV_10MHZ ;
 int DATA_SIZE_8BITS ;
 int INTELSPI_READ (struct intelspi_softc*,int ) ;
 int INTELSPI_SSPREG_SPI_CS_CTRL ;
 int INTELSPI_SSPREG_SSCR0 ;
 int INTELSPI_SSPREG_SSCR1 ;
 int INTELSPI_WRITE (struct intelspi_softc*,int ,int) ;
 int RX_FIFO_THRESHOLD ;
 int SPI_CS_CTRL_CS_HIGH ;
 int SPI_CS_CTRL_CS_MASK ;
 int SPI_CS_CTRL_SW_MODE ;
 int SSCR0_DSS (int ) ;
 int SSCR0_FRF_SPI ;
 int SSCR0_SCR (int ) ;
 int SSCR0_SSE ;
 int SSCR1_MODE_0 ;
 int SSCR1_RFT (int ) ;
 int SSCR1_TFT (int ) ;
 int TX_FIFO_THRESHOLD ;

__attribute__((used)) static void
intelspi_init(struct intelspi_softc *sc)
{
 uint32_t reg;

 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR0, 0);


 reg = INTELSPI_READ(sc, INTELSPI_SSPREG_SPI_CS_CTRL);
 reg &= ~(SPI_CS_CTRL_CS_MASK);
 reg |= (SPI_CS_CTRL_SW_MODE | SPI_CS_CTRL_CS_HIGH);
 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SPI_CS_CTRL, reg);


 reg = SSCR1_TFT(TX_FIFO_THRESHOLD) | SSCR1_RFT(RX_FIFO_THRESHOLD);



 reg |= SSCR1_MODE_0;
 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR1, reg);







 reg = SSCR0_SCR(CLOCK_DIV_10MHZ);

 reg |= SSCR0_FRF_SPI;

 reg |= SSCR0_DSS(DATA_SIZE_8BITS);

 reg |= SSCR0_SSE;
 INTELSPI_WRITE(sc, INTELSPI_SSPREG_SSCR0, reg);
}
