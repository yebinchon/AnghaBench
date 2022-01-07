
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hn_softc {int hn_link_flags; int hn_ifp; } ;


 int HN_LINK_FLAG_LINKUP ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ NDIS_MEDIA_STATE_CONNECTED ;
 int hn_rndis_get_linkstatus (struct hn_softc*,scalar_t__*) ;
 int if_link_state_change (int ,int ) ;

__attribute__((used)) static void
hn_link_status(struct hn_softc *sc)
{
 uint32_t link_status;
 int error;

 error = hn_rndis_get_linkstatus(sc, &link_status);
 if (error) {

  return;
 }

 if (link_status == NDIS_MEDIA_STATE_CONNECTED)
  sc->hn_link_flags |= HN_LINK_FLAG_LINKUP;
 else
  sc->hn_link_flags &= ~HN_LINK_FLAG_LINKUP;
 if_link_state_change(sc->hn_ifp,
     (sc->hn_link_flags & HN_LINK_FLAG_LINKUP) ?
     LINK_STATE_UP : LINK_STATE_DOWN);
}
