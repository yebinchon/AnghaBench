
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int rxl; } ;
struct sbni_softc {int delta_rxl; int cur_rxl_index; scalar_t__ cur_rxl_rcvd; scalar_t__ prev_rxl_rcvd; TYPE_1__ csr1; } ;


 int CSR0 ;
 int CSR1 ;
 int * rxl_tab ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int ) ;

__attribute__((used)) static void
change_level(struct sbni_softc *sc)
{
 if (sc->delta_rxl == 0)
  return;

 if (sc->cur_rxl_index == 0)
  sc->delta_rxl = 1;
 else if (sc->cur_rxl_index == 15)
  sc->delta_rxl = -1;
 else if (sc->cur_rxl_rcvd < sc->prev_rxl_rcvd)
  sc->delta_rxl = -sc->delta_rxl;

 sc->csr1.rxl = rxl_tab[sc->cur_rxl_index += sc->delta_rxl];
 sbni_inb(sc, CSR0);
 sbni_outb(sc, CSR1, *(u_char *)&sc->csr1);

 sc->prev_rxl_rcvd = sc->cur_rxl_rcvd;
 sc->cur_rxl_rcvd = 0;
}
