
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int page_count; int npubqpages; int nhqpages; int nnqpages; int nlqpages; } ;
struct rtwn_usb_softc {int ntx; struct rtwn_softc uc_sc; } ;



__attribute__((used)) static void
rtwn_usb_setup_queues(struct rtwn_usb_softc *uc)
{
 struct rtwn_softc *sc = &uc->uc_sc;
 int hasnq, haslq, nqueues, nqpages, nrempages;


 hasnq = haslq = 0;
 switch (uc->ntx) {
 case 4:
 case 3:
  haslq = 1;

 case 2:
  hasnq = 1;

 default:
  break;
 }
 nqueues = 1 + hasnq + haslq;


 nqpages = (sc->page_count - sc->npubqpages) / nqueues;





 nrempages = (sc->page_count - sc->npubqpages) % nqueues;

 sc->nhqpages = nqpages + nrempages;
 sc->nnqpages = (hasnq ? nqpages : 0);
 sc->nlqpages = (haslq ? nqpages : 0);
}
