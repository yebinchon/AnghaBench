
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
struct aic_softc {struct aic_rate* sr; } ;
struct aic_rate {int speed; } ;
typedef int kobj_t ;


 struct aic_rate* rate_map ;

__attribute__((used)) static uint32_t
aicchan_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct aic_rate *sr;
 struct aic_softc *sc;
 int threshold;
 int i;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 sr = ((void*)0);


 for (i = 0; rate_map[i].speed != 0; i++) {
  if (rate_map[i].speed == speed)
   sr = &rate_map[i];
 }


 if (sr == ((void*)0)) {
  for (i = 0; rate_map[i].speed != 0; i++) {
   sr = &rate_map[i];
   threshold = sr->speed + ((rate_map[i + 1].speed != 0) ?
       ((rate_map[i + 1].speed - sr->speed) >> 1) : 0);
   if (speed < threshold)
    break;
  }
 }

 sc->sr = sr;



 return (sr->speed);
}
