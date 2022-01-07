
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_linkqual_valid; int sc_linkqual; } ;
struct iwi_notif_link_quality {int dummy; } ;
struct iwi_notif {int type; int len; } ;


 int DPRINTFN (int,char*) ;
 int le16toh (int ) ;
 int memcpy (int *,struct iwi_notif_link_quality*,int) ;

__attribute__((used)) static void
iwi_notif_link_quality(struct iwi_softc *sc, struct iwi_notif *notif)
{
 struct iwi_notif_link_quality *lq;
 int len;

 len = le16toh(notif->len);

 DPRINTFN(5, ("Notification (%u) - len=%d, sizeof=%zu\n",
     notif->type,
     len,
     sizeof(struct iwi_notif_link_quality)
     ));


 if (len != sizeof(struct iwi_notif_link_quality)) {
  DPRINTFN(5, ("Notification: (%u) too short (%d)\n",
      notif->type,
      len));
  return;
 }

 lq = (struct iwi_notif_link_quality *)(notif + 1);
 memcpy(&sc->sc_linkqual, lq, sizeof(sc->sc_linkqual));
 sc->sc_linkqual_valid = 1;
}
