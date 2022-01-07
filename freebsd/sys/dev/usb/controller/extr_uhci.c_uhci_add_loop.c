
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_loops; struct uhci_qh* sc_reclaim_qh_p; struct uhci_qh* sc_last_qh_p; } ;
typedef TYPE_1__ uhci_softc_t ;
struct uhci_qh {int page_cache; int qh_self; int qh_h_next; } ;


 int DPRINTFN (int,char*) ;
 scalar_t__ uhcinoloop ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static void
uhci_add_loop(uhci_softc_t *sc)
{
 struct uhci_qh *qh_lst;
 struct uhci_qh *qh_rec;






 if (++(sc->sc_loops) == 1) {
  DPRINTFN(6, "add\n");

  qh_lst = sc->sc_last_qh_p;
  qh_rec = sc->sc_reclaim_qh_p;



  qh_lst->qh_h_next = qh_rec->qh_self;
  usb_pc_cpu_flush(qh_lst->page_cache);
 }
}
