
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_softc {struct rc_chans* sc_channels; } ;
struct rc_chans {TYPE_1__* rc_tp; } ;
struct TYPE_2__ {int t_termios; } ;


 int CD180_NCHAN ;
 int RC_FAKEID ;
 int rc_hwreset (struct rc_softc*,int ) ;
 int rc_param (TYPE_1__*,int *) ;

__attribute__((used)) static void
rc_reinit(struct rc_softc *sc)
{
 struct rc_chans *rc;
 int i;

 rc_hwreset(sc, RC_FAKEID);
 rc = sc->sc_channels;
 for (i = 0; i < CD180_NCHAN; i++, rc++)
  (void) rc_param(rc->rc_tp, &rc->rc_tp->t_termios);
}
