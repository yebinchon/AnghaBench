
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_softc {int dummy; } ;
struct hda_codec_class {int dummy; } ;


 int DPRINTF (char*,char const*,...) ;
 int assert (int) ;
 struct hda_softc* calloc (int,int) ;
 int dbg ;
 int fopen (char*,char*) ;
 int hda_codec_constructor (struct hda_softc*,struct hda_codec_class*,char*,char*,int *) ;
 struct hda_codec_class* hda_find_codec_class (char*) ;
 int hda_parse_config (char const*,char*,char*) ;
 int hda_reset_regs (struct hda_softc*) ;

__attribute__((used)) static struct hda_softc *
hda_init(const char *opts)
{
 struct hda_softc *sc = ((void*)0);
 struct hda_codec_class *codec = ((void*)0);
 char play[64];
 char rec[64];
 int err, p, r;





 DPRINTF("opts: %s\n", opts);

 sc = calloc(1, sizeof(*sc));
 if (!sc)
  return (((void*)0));

 hda_reset_regs(sc);





 codec = hda_find_codec_class("hda_codec");
 if (codec) {
  p = hda_parse_config(opts, "play=", play);
  r = hda_parse_config(opts, "rec=", rec);
  DPRINTF("play: %s rec: %s\n", play, rec);
  if (p | r) {
   err = hda_codec_constructor(sc, codec, p ? play : ((void*)0), r ? rec : ((void*)0), ((void*)0));

   assert(!err);
  }
 }

 return (sc);
}
