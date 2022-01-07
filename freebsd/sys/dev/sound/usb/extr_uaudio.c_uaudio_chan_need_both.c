
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_alt; scalar_t__ running; } ;
struct TYPE_4__ {scalar_t__ num_alt; scalar_t__ running; int set_alt; } ;
struct uaudio_softc {TYPE_1__ sc_rec_chan; TYPE_2__ sc_play_chan; } ;


 scalar_t__ uaudio_chan_is_async (TYPE_2__*,int ) ;

__attribute__((used)) static int
uaudio_chan_need_both(struct uaudio_softc *sc)
{
 return (sc->sc_play_chan.num_alt > 0 &&
     sc->sc_play_chan.running != 0 &&
     uaudio_chan_is_async(&sc->sc_play_chan,
     sc->sc_play_chan.set_alt) != 0 &&
     sc->sc_rec_chan.num_alt > 0 &&
     sc->sc_rec_chan.running == 0);
}
