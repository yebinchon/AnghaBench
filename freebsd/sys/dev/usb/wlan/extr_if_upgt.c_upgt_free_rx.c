
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {struct upgt_data* sc_rx_data; } ;
struct upgt_data {int * ni; int * buf; } ;


 int UPGT_RX_MAXCOUNT ;

__attribute__((used)) static void
upgt_free_rx(struct upgt_softc *sc)
{
 int i;

 for (i = 0; i < UPGT_RX_MAXCOUNT; i++) {
  struct upgt_data *data = &sc->sc_rx_data[i];

  data->buf = ((void*)0);
  data->ni = ((void*)0);
 }
}
