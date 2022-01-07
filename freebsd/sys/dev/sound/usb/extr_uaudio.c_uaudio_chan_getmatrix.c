
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uaudio_softc {scalar_t__ sc_uq_audio_swap_lr; } ;
struct uaudio_chan {struct uaudio_softc* priv_sc; } ;
struct pcmchan_matrix {int dummy; } ;


 int AFMT_CHANNEL (int ) ;
 struct pcmchan_matrix* feeder_matrix_format_map (int ) ;
 struct pcmchan_matrix uaudio_chan_matrix_swap_2_0 ;

struct pcmchan_matrix *
uaudio_chan_getmatrix(struct uaudio_chan *ch, uint32_t format)
{
 struct uaudio_softc *sc;

 sc = ch->priv_sc;

 if (sc != ((void*)0) && sc->sc_uq_audio_swap_lr != 0 &&
     AFMT_CHANNEL(format) == 2)
  return (&uaudio_chan_matrix_swap_2_0);

 return (feeder_matrix_format_map(format));
}
