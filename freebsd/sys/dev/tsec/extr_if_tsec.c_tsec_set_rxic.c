
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {int rx_ic_count; int rx_ic_time; } ;


 int TSEC_REG_RXIC ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;

__attribute__((used)) static void
tsec_set_rxic(struct tsec_softc *sc)
{
 uint32_t rxic_val;

 if (sc->rx_ic_count == 0 || sc->rx_ic_time == 0)

  rxic_val = 0;
 else {
  rxic_val = 0x80000000;
  rxic_val |= (sc->rx_ic_count << 21);
  rxic_val |= sc->rx_ic_time;
 }

 TSEC_WRITE(sc, TSEC_REG_RXIC, rxic_val);
}
