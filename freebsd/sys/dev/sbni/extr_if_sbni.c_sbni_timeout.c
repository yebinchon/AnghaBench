
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int timeout_number; } ;
struct sbni_softc {int wch; int csr1; scalar_t__ delta_rxl; TYPE_1__ in_stats; scalar_t__ timer_ticks; } ;


 int BU_EMP ;
 int CSR0 ;
 int CSR1 ;
 int PR_RES ;
 int RC_CHK ;
 int RC_RDY ;
 int SBNI_ASSERT_LOCKED (struct sbni_softc*) ;
 int SBNI_HZ ;
 int callout_reset (int *,int,void (*) (void*),struct sbni_softc*) ;
 int hz ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int) ;
 int timeout_change_level (struct sbni_softc*) ;

__attribute__((used)) static void
sbni_timeout(void *xsc)
{
 struct sbni_softc *sc;
 u_char csr0;

 sc = (struct sbni_softc *)xsc;
 SBNI_ASSERT_LOCKED(sc);

 csr0 = sbni_inb(sc, CSR0);
 if (csr0 & RC_CHK) {

  if (sc->timer_ticks) {
   if (csr0 & (RC_RDY | BU_EMP))

    sc->timer_ticks--;
  } else {
   sc->in_stats.timeout_number++;
   if (sc->delta_rxl)
    timeout_change_level(sc);

   sbni_outb(sc, CSR1, *(u_char *)&sc->csr1 | PR_RES);
   csr0 = sbni_inb(sc, CSR0);
  }
 }

 sbni_outb(sc, CSR0, csr0 | RC_CHK);
 callout_reset(&sc->wch, hz/SBNI_HZ, sbni_timeout, sc);
}
