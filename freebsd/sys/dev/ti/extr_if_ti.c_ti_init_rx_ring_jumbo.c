
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_jumbo; } ;
struct ti_cmd_desc {int dummy; } ;


 int ENOBUFS ;
 int TI_JUMBO_RX_RING_CNT ;
 int TI_UPDATE_JUMBOPROD (struct ti_softc*,int) ;
 scalar_t__ ti_newbuf_jumbo (struct ti_softc*,int,int *) ;

__attribute__((used)) static int
ti_init_rx_ring_jumbo(struct ti_softc *sc)
{
 struct ti_cmd_desc cmd;
 int i;

 for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
  if (ti_newbuf_jumbo(sc, i, ((void*)0)) != 0)
   return (ENOBUFS);
 }

 sc->ti_jumbo = TI_JUMBO_RX_RING_CNT - 1;
 TI_UPDATE_JUMBOPROD(sc, TI_JUMBO_RX_RING_CNT - 1);

 return (0);
}
