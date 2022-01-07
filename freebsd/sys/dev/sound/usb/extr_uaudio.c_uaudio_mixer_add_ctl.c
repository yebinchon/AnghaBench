
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uaudio_softc {int sc_audio_rev; int sc_udev; } ;
struct uaudio_mixer_node {size_t class; scalar_t__ type; int minval; int maxval; int mul; scalar_t__ nchan; int ctl; int wIndex; int * wValue; } ;
typedef int int32_t ;


 int DPRINTF (char*,int,...) ;
 int GET_MAX ;
 int GET_MIN ;
 int GET_RES ;
 scalar_t__ MIX_ON_OFF ;
 scalar_t__ MIX_SELECTOR ;
 size_t UAC_NCLASSES ;
 int * uac_names ;
 int uaudio_debug ;
 int uaudio_mixer_add_ctl_sub (struct uaudio_softc*,struct uaudio_mixer_node*) ;
 void* uaudio_mixer_get (int ,int ,int ,struct uaudio_mixer_node*) ;

__attribute__((used)) static void
uaudio_mixer_add_ctl(struct uaudio_softc *sc, struct uaudio_mixer_node *mc)
{
 int32_t res;

 if (mc->class < UAC_NCLASSES) {
  DPRINTF("adding %s.%d\n",
      uac_names[mc->class], mc->ctl);
 } else {
  DPRINTF("adding %d\n", mc->ctl);
 }

 if (mc->type == MIX_ON_OFF) {
  mc->minval = 0;
  mc->maxval = 1;
 } else if (mc->type == MIX_SELECTOR) {
 } else {



  mc->minval = uaudio_mixer_get(sc->sc_udev,
      sc->sc_audio_rev, GET_MIN, mc);
  mc->maxval = uaudio_mixer_get(sc->sc_udev,
      sc->sc_audio_rev, GET_MAX, mc);



  if (mc->maxval < mc->minval) {
   res = mc->maxval;
   mc->maxval = mc->minval;
   mc->minval = res;
  }


  mc->mul = mc->maxval - mc->minval;
  if (mc->mul == 0)
   mc->mul = 1;


  res = uaudio_mixer_get(sc->sc_udev,
      sc->sc_audio_rev, GET_RES, mc);

  DPRINTF("Resolution = %d\n", (int)res);
 }

 uaudio_mixer_add_ctl_sub(sc, mc);
}
