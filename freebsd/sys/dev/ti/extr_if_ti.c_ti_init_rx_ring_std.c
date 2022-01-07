
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_std; } ;
struct ti_cmd_desc {int dummy; } ;


 int ENOBUFS ;
 int TI_STD_RX_RING_CNT ;
 int TI_UPDATE_STDPROD (struct ti_softc*,int) ;
 scalar_t__ ti_newbuf_std (struct ti_softc*,int) ;

__attribute__((used)) static int
ti_init_rx_ring_std(struct ti_softc *sc)
{
 int i;
 struct ti_cmd_desc cmd;

 for (i = 0; i < TI_STD_RX_RING_CNT; i++) {
  if (ti_newbuf_std(sc, i) != 0)
   return (ENOBUFS);
 }

 sc->ti_std = TI_STD_RX_RING_CNT - 1;
 TI_UPDATE_STDPROD(sc, TI_STD_RX_RING_CNT - 1);

 return (0);
}
