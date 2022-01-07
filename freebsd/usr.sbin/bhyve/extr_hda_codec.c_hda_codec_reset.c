
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_ops {int (* signal ) (struct hda_ops*) ;int cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_ops* hops; } ;
struct hda_codec_stream {void* right_mute; void* left_mute; void* right_gain; void* left_gain; } ;
struct hda_codec_softc {int (* signal ) (struct hda_ops*) ;int cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_codec_softc* hops; } ;
struct hda_codec_inst {int (* signal ) (struct hda_ops*) ;int cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_codec_inst* hops; } ;


 int DPRINTF (char*,...) ;
 void* HDA_CODEC_AMP_NUMSTEPS ;
 void* HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE ;
 int HDA_CODEC_STREAMS_COUNT ;
 int assert (struct hda_ops*) ;
 int stub1 (struct hda_ops*) ;

__attribute__((used)) static int
hda_codec_reset(struct hda_codec_inst *hci)
{
 struct hda_ops *hops = ((void*)0);
 struct hda_codec_softc *sc = ((void*)0);
 struct hda_codec_stream *st = ((void*)0);
 int i;

 assert(hci);

 hops = hci->hops;
 assert(hops);

 sc = (struct hda_codec_softc *)hci->priv;
 assert(sc);

 for (i = 0; i < HDA_CODEC_STREAMS_COUNT; i++) {
  st = &sc->streams[i];
  st->left_gain = HDA_CODEC_AMP_NUMSTEPS;
  st->right_gain = HDA_CODEC_AMP_NUMSTEPS;
  st->left_mute = HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE;
  st->right_mute = HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE;
 }

 DPRINTF("cad: 0x%x\n", hci->cad);

 if (!hops->signal) {
  DPRINTF("The controller ops does not implement 			 the signal function\n");

  return (-1);
 }

 return (hops->signal(hci));
}
