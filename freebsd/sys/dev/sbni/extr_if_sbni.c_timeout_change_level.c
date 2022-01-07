
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int rxl; } ;
struct sbni_softc {size_t cur_rxl_index; size_t timeout_rxl; scalar_t__ cur_rxl_rcvd; scalar_t__ prev_rxl_rcvd; TYPE_1__ csr1; } ;


 int CSR0 ;
 int CSR1 ;
 int * rxl_tab ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int ) ;
 size_t* timeout_rxl_tab ;

__attribute__((used)) static void
timeout_change_level(struct sbni_softc *sc)
{
 sc->cur_rxl_index = timeout_rxl_tab[sc->timeout_rxl];
 if (++sc->timeout_rxl >= 4)
  sc->timeout_rxl = 0;

 sc->csr1.rxl = rxl_tab[sc->cur_rxl_index];
 sbni_inb(sc, CSR0);
 sbni_outb(sc, CSR1, *(u_char *)&sc->csr1);

 sc->prev_rxl_rcvd = sc->cur_rxl_rcvd;
 sc->cur_rxl_rcvd = 0;
}
