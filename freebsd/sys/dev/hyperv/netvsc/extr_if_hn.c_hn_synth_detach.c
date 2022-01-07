
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_flags; scalar_t__ hn_rxbuf_gpadl; scalar_t__ hn_chim_gpadl; int hn_ifp; int hn_prichan; } ;


 int HN_FLAG_CHIM_REF ;
 int HN_FLAG_RXBUF_REF ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int KASSERT (int,char*) ;
 scalar_t__ VMBUS_VERSION_WIN10 ;
 int hn_detach_allchans (struct hn_softc*) ;
 int hn_nvs_detach (struct hn_softc*) ;
 int hn_rndis_detach (struct hn_softc*) ;
 int if_printf (int ,char*,int) ;
 int vmbus_chan_gpadl_disconnect (int ,scalar_t__) ;
 scalar_t__ vmbus_current_version ;

__attribute__((used)) static void
hn_synth_detach(struct hn_softc *sc)
{

 KASSERT(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
     ("synthetic parts were not attached"));


 hn_rndis_detach(sc);


 hn_nvs_detach(sc);


 hn_detach_allchans(sc);

 if (vmbus_current_version >= VMBUS_VERSION_WIN10 && sc->hn_rxbuf_gpadl != 0) {



  int error;

  error = vmbus_chan_gpadl_disconnect(sc->hn_prichan,
      sc->hn_rxbuf_gpadl);
  if (error) {
   if_printf(sc->hn_ifp,
       "rxbuf gpadl disconn failed: %d\n", error);
   sc->hn_flags |= HN_FLAG_RXBUF_REF;
  }
  sc->hn_rxbuf_gpadl = 0;
 }

 if (vmbus_current_version >= VMBUS_VERSION_WIN10 && sc->hn_chim_gpadl != 0) {




  int error;

  error = vmbus_chan_gpadl_disconnect(sc->hn_prichan,
      sc->hn_chim_gpadl);
  if (error) {
   if_printf(sc->hn_ifp,
       "chim gpadl disconn failed: %d\n", error);
   sc->hn_flags |= HN_FLAG_CHIM_REF;
  }
  sc->hn_chim_gpadl = 0;
 }
 sc->hn_flags &= ~HN_FLAG_SYNTH_ATTACHED;
}
