
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_tx_ring {int qid; int cur; } ;
struct wpi_softc {int dummy; } ;


 int WPI_HBUS_TARG_WRPTR ;
 int WPI_WRITE (struct wpi_softc*,int ,int) ;

__attribute__((used)) static void
wpi_update_tx_ring(struct wpi_softc *sc, struct wpi_tx_ring *ring)
{
 WPI_WRITE(sc, WPI_HBUS_TARG_WRPTR, ring->qid << 8 | ring->cur);
}
