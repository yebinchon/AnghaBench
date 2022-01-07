
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_alt; scalar_t__ running; } ;
struct TYPE_3__ {scalar_t__ num_alt; scalar_t__ running; } ;
struct uaudio_softc {TYPE_2__ sc_rec_chan; TYPE_1__ sc_play_chan; } ;



__attribute__((used)) static int
uaudio_chan_need_none(struct uaudio_softc *sc)
{
 return (sc->sc_play_chan.num_alt > 0 &&
     sc->sc_play_chan.running == 0 &&
     sc->sc_rec_chan.num_alt > 0 &&
     sc->sc_rec_chan.running == 0);
}
