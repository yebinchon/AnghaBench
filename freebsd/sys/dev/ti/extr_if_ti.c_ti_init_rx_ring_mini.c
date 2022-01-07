
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_mini; } ;


 int ENOBUFS ;
 int TI_MINI_RX_RING_CNT ;
 int TI_UPDATE_MINIPROD (struct ti_softc*,int) ;
 scalar_t__ ti_newbuf_mini (struct ti_softc*,int) ;

__attribute__((used)) static int
ti_init_rx_ring_mini(struct ti_softc *sc)
{
 int i;

 for (i = 0; i < TI_MINI_RX_RING_CNT; i++) {
  if (ti_newbuf_mini(sc, i) != 0)
   return (ENOBUFS);
 }

 sc->ti_mini = TI_MINI_RX_RING_CNT - 1;
 TI_UPDATE_MINIPROD(sc, TI_MINI_RX_RING_CNT - 1);

 return (0);
}
