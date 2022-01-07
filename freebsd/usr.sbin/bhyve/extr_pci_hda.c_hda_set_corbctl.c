
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_codec_cmd_ctl {int dummy; } ;
struct hda_softc {struct hda_codec_cmd_ctl corb; } ;


 int HDAC_CORBCTL_CORBRUN ;
 int assert (int) ;
 int hda_corb_run (struct hda_softc*) ;
 int hda_corb_start (struct hda_softc*) ;
 int hda_get_reg_by_offset (struct hda_softc*,int) ;
 int memset (struct hda_codec_cmd_ctl*,int ,int) ;

__attribute__((used)) static void
hda_set_corbctl(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
 uint32_t value = hda_get_reg_by_offset(sc, offset);
 int err;
 struct hda_codec_cmd_ctl *corb = ((void*)0);

 if (value & HDAC_CORBCTL_CORBRUN) {
  if (!(old & HDAC_CORBCTL_CORBRUN)) {
   err = hda_corb_start(sc);
   assert(!err);
  }
 } else {
  corb = &sc->corb;
  memset(corb, 0, sizeof(*corb));
 }

 hda_corb_run(sc);
}
