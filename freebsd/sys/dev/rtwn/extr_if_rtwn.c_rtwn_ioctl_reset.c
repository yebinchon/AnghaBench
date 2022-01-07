
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct rtwn_vap {int id; } ;
struct rtwn_softc {int sc_flags; } ;
struct ieee80211vap {int iv_opmode; TYPE_1__* iv_ic; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;


 int ENETRESET ;
 int EOPNOTSUPP ;







 int IEEE80211_M_STA ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int rtwn_set_pwrmode (struct rtwn_softc*,struct ieee80211vap*,int) ;

__attribute__((used)) static int
rtwn_ioctl_reset(struct ieee80211vap *vap, u_long cmd)
{
 int error;

 switch (cmd) {

 case 132:
 case 131:
 {
  struct rtwn_softc *sc = vap->iv_ic->ic_softc;
  struct rtwn_vap *uvp = RTWN_VAP(vap);

  if (vap->iv_opmode == IEEE80211_M_STA && uvp->id == 0) {
   RTWN_LOCK(sc);
   if (sc->sc_flags & RTWN_RUNNING)
    error = rtwn_set_pwrmode(sc, vap, 1);
   else
    error = 0;
   RTWN_UNLOCK(sc);
   if (error != 0)
    error = ENETRESET;
  } else
   error = EOPNOTSUPP;
  break;
 }

 case 128:
 case 129:
 case 130:
 case 134:
 case 133:
  error = 0;
  break;
 default:
  error = ENETRESET;
  break;
 }

 return (error);
}
