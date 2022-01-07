
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_softc {int codecs_no; int wall_clock_start; struct hda_codec_inst** codecs; } ;
struct hda_codec_inst {int (* reset ) (struct hda_codec_inst*) ;struct hda_codec_inst* codec; } ;
struct hda_codec_class {int (* reset ) (struct hda_codec_inst*) ;struct hda_codec_class* codec; } ;


 int assert (struct hda_codec_inst*) ;
 int hda_get_clock_ns () ;
 int hda_reset_regs (struct hda_softc*) ;
 int stub1 (struct hda_codec_inst*) ;

__attribute__((used)) static void
hda_reset(struct hda_softc *sc)
{
 int i;
 struct hda_codec_inst *hci = ((void*)0);
 struct hda_codec_class *codec = ((void*)0);

 hda_reset_regs(sc);


 for (i = 0; i < sc->codecs_no; i++) {
  hci = sc->codecs[i];
  assert(hci);

  codec = hci->codec;
  assert(codec);

  if (codec->reset)
   codec->reset(hci);
 }

 sc->wall_clock_start = hda_get_clock_ns();
}
