
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct emu_sc_info {scalar_t__ mode; scalar_t__ enable_ir; int ** midi; int ** pcm; scalar_t__ broken_digital; scalar_t__ is_ca0108; scalar_t__ is_ca0102; scalar_t__ is_emu10k2; scalar_t__ is_emu10k1; scalar_t__ has_71; scalar_t__ has_51; scalar_t__ has_ac97; int code_size; int routing_code_end; TYPE_1__* rm; } ;
struct TYPE_2__ {int num_gprs; int num_used; } ;


 scalar_t__ MODE_ANALOG ;
 int RT_COUNT ;
 int device_get_desc (int *) ;
 char* device_get_nameunit (int *) ;
 scalar_t__ device_is_attached (int *) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static int
emu10kx_prepare(struct emu_sc_info *sc, struct sbuf *s)
{
 int i;

 sbuf_printf(s, "FreeBSD EMU10Kx Audio Driver\n");
 sbuf_printf(s, "\nHardware resource usage:\n");
 sbuf_printf(s, "DSP General Purpose Registers: %d used, %d total\n", sc->rm->num_used, sc->rm->num_gprs);
 sbuf_printf(s, "DSP Instruction Registers: %d used, %d total\n", sc->routing_code_end, sc->code_size);
 sbuf_printf(s, "Card supports");
 if (sc->has_ac97) {
  sbuf_printf(s, " AC97 codec");
 } else {
  sbuf_printf(s, " NO AC97 codec");
 }
 if (sc->has_51) {
  if (sc->has_71)
   sbuf_printf(s, " and 7.1 output");
  else
   sbuf_printf(s, " and 5.1 output");
 }
 if (sc->is_emu10k1)
  sbuf_printf(s, ", SBLive! DSP code");
 if (sc->is_emu10k2)
  sbuf_printf(s, ", Audigy DSP code");
 if (sc->is_ca0102)
  sbuf_printf(s, ", Audigy DSP code with Audigy2 hacks");
 if (sc->is_ca0108)
  sbuf_printf(s, ", Audigy DSP code with Audigy2Value hacks");
 sbuf_printf(s, "\n");
 if (sc->broken_digital)
  sbuf_printf(s, "Digital mode unsupported\n");
 sbuf_printf(s, "\nInstalled devices:\n");
 for (i = 0; i < RT_COUNT; i++)
  if (sc->pcm[i] != ((void*)0))
   if (device_is_attached(sc->pcm[i])) {
    sbuf_printf(s, "%s on %s\n", device_get_desc(sc->pcm[i]), device_get_nameunit(sc->pcm[i]));
   }
 if (sc->midi[0] != ((void*)0))
  if (device_is_attached(sc->midi[0])) {
   sbuf_printf(s, "EMU10Kx MIDI Interface\n");
   sbuf_printf(s, "\tOn-card connector on %s\n", device_get_nameunit(sc->midi[0]));
  }
 if (sc->midi[1] != ((void*)0))
  if (device_is_attached(sc->midi[1])) {
   sbuf_printf(s, "\tOn-Drive connector on %s\n", device_get_nameunit(sc->midi[1]));
  }
 if (sc->midi[0] != ((void*)0))
  if (device_is_attached(sc->midi[0])) {
   sbuf_printf(s, "\tIR receiver MIDI events %s\n", sc->enable_ir ? "enabled" : "disabled");
  }
 sbuf_printf(s, "Card is in %s mode\n", (sc->mode == MODE_ANALOG) ? "analog" : "digital");

 sbuf_finish(s);
 return (sbuf_len(s));
}
