
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_softc {scalar_t__ codecs_no; struct hda_codec_inst** codecs; } ;
struct hda_codec_inst {scalar_t__ cad; struct hda_codec_class* codec; int * hops; struct hda_softc* hda; } ;
struct hda_codec_class {int (* init ) (struct hda_codec_inst*,char const*,char const*,char const*) ;} ;


 int DPRINTF (char*) ;
 scalar_t__ HDA_CODEC_MAX ;
 struct hda_codec_inst* calloc (int,int) ;
 int hops ;
 int stub1 (struct hda_codec_inst*,char const*,char const*,char const*) ;

__attribute__((used)) static int
hda_codec_constructor(struct hda_softc *sc, struct hda_codec_class *codec,
    const char *play, const char *rec, const char *opts)
{
 struct hda_codec_inst *hci = ((void*)0);

 if (sc->codecs_no >= HDA_CODEC_MAX)
  return (-1);

 hci = calloc(1, sizeof(struct hda_codec_inst));
 if (!hci)
  return (-1);

 hci->hda = sc;
 hci->hops = &hops;
 hci->cad = sc->codecs_no;
 hci->codec = codec;

 sc->codecs[sc->codecs_no++] = hci;

 if (!codec->init) {
  DPRINTF("This codec does not implement the init function\n");
  return (-1);
 }

 return (codec->init(hci, play, rec, opts));
}
