
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur; } ;
struct wpi_softc {TYPE_1__ rxq; } ;


 int WPI_FH_RX_WPTR ;
 int WPI_WRITE (struct wpi_softc*,int ,int) ;

__attribute__((used)) static void
wpi_update_rx_ring(struct wpi_softc *sc)
{
 WPI_WRITE(sc, WPI_FH_RX_WPTR, sc->rxq.cur & ~7);
}
