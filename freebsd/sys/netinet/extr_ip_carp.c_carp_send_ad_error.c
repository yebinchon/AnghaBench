
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {scalar_t__ sc_sendad_errors; scalar_t__ sc_sendad_success; TYPE_1__* sc_carpdev; } ;
typedef int fmt ;
struct TYPE_2__ {int if_xname; } ;


 scalar_t__ CARP_SENDAD_MAX_ERRORS ;
 scalar_t__ CARP_SENDAD_MIN_SUCCESS ;
 int IFNAMSIZ ;
 scalar_t__ INT_MAX ;
 int V_carp_senderr_adj ;
 int carp_demote_adj (int ,char*) ;
 int sprintf (char*,char const*,int,...) ;

__attribute__((used)) static void
carp_send_ad_error(struct carp_softc *sc, int error)
{

 if (error) {
  if (sc->sc_sendad_errors < INT_MAX)
   sc->sc_sendad_errors++;
  if (sc->sc_sendad_errors == CARP_SENDAD_MAX_ERRORS) {
   static const char fmt[] = "send error %d on %s";
   char msg[sizeof(fmt) + IFNAMSIZ];

   sprintf(msg, fmt, error, sc->sc_carpdev->if_xname);
   carp_demote_adj(V_carp_senderr_adj, msg);
  }
  sc->sc_sendad_success = 0;
 } else {
  if (sc->sc_sendad_errors >= CARP_SENDAD_MAX_ERRORS &&
      ++sc->sc_sendad_success >= CARP_SENDAD_MIN_SUCCESS) {
   static const char fmt[] = "send ok on %s";
   char msg[sizeof(fmt) + IFNAMSIZ];

   sprintf(msg, fmt, sc->sc_carpdev->if_xname);
   carp_demote_adj(-V_carp_senderr_adj, msg);
   sc->sc_sendad_errors = 0;
  } else
   sc->sc_sendad_errors = 0;
 }
}
