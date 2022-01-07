
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umidi_chan {int mtx; } ;
struct uaudio_softc {struct umidi_chan sc_midi_chan; } ;
typedef int device_t ;


 int MTX_DEF ;
 int MTX_RECURSE ;
 struct uaudio_softc* device_get_softc (int ) ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static void
umidi_init(device_t dev)
{
 struct uaudio_softc *sc = device_get_softc(dev);
 struct umidi_chan *chan = &sc->sc_midi_chan;

 mtx_init(&chan->mtx, "umidi lock", ((void*)0), MTX_DEF | MTX_RECURSE);
}
