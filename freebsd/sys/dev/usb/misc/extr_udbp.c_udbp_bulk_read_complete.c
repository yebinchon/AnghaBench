
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {int sc_mtx; int * sc_xfer; int * sc_hook; int sc_packets_in; struct mbuf* sc_bulk_in_buffer; } ;
struct mbuf {int dummy; } ;
typedef int node_p ;
typedef int hook_p ;


 int DPRINTF (char*) ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 size_t UDBP_T_RD ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
udbp_bulk_read_complete(node_p node, hook_p hook, void *arg1, int arg2)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(node);
 struct mbuf *m;
 int error;

 if (sc == ((void*)0)) {
  return;
 }
 mtx_lock(&sc->sc_mtx);

 m = sc->sc_bulk_in_buffer;

 if (m) {

  sc->sc_bulk_in_buffer = ((void*)0);

  if ((sc->sc_hook == ((void*)0)) ||
      NG_HOOK_NOT_VALID(sc->sc_hook)) {
   DPRINTF("No upstream hook\n");
   goto done;
  }
  sc->sc_packets_in++;

  NG_SEND_DATA_ONLY(error, sc->sc_hook, m);

  m = ((void*)0);
 }
done:
 if (m) {
  m_freem(m);
 }


 usbd_transfer_start(sc->sc_xfer[UDBP_T_RD]);

 mtx_unlock(&sc->sc_mtx);
}
