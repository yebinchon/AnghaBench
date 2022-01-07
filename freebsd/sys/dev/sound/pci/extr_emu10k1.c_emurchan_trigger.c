
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_rchinfo {int run; int irqmask; int setupreg; int sizereg; int spd; int fmt; int num; struct sc_info* parent; } ;
struct sc_info {int bufsz; int lock; int audigy; } ;
typedef int kobj_t ;


 int AFMT_CHANNEL (int ) ;
 int EMU_ADCCR_LCHANENABLE ;
 int EMU_ADCCR_RCHANENABLE ;
 int EMU_A_ADCCR_LCHANENABLE ;
 int EMU_A_ADCCR_RCHANENABLE ;
 int EMU_INTE ;
 int EMU_RECBS_BUFSIZE_16384 ;
 int EMU_RECBS_BUFSIZE_32768 ;
 int EMU_RECBS_BUFSIZE_4096 ;
 int EMU_RECBS_BUFSIZE_65536 ;
 int EMU_RECBS_BUFSIZE_8192 ;

 int PCMTRIG_COMMON (int) ;




 int audigy_recval (int ) ;
 int emu_rd (struct sc_info*,int ,int) ;
 int emu_recval (int ) ;
 int emu_wr (struct sc_info*,int ,int ,int) ;
 int emu_wrptr (struct sc_info*,int ,int ,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
emurchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_rchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t val, sz;

 if (!PCMTRIG_COMMON(go))
  return 0;

 switch(sc->bufsz) {
 case 4096:
  sz = EMU_RECBS_BUFSIZE_4096;
  break;

 case 8192:
  sz = EMU_RECBS_BUFSIZE_8192;
  break;

 case 16384:
  sz = EMU_RECBS_BUFSIZE_16384;
  break;

 case 32768:
  sz = EMU_RECBS_BUFSIZE_32768;
  break;

 case 65536:
  sz = EMU_RECBS_BUFSIZE_65536;
  break;

 default:
  sz = EMU_RECBS_BUFSIZE_4096;
 }

 snd_mtxlock(sc->lock);
 switch(go) {
 case 129:
  ch->run = 1;
  emu_wrptr(sc, 0, ch->sizereg, sz);
  if (ch->num == 0) {
   if (sc->audigy) {
    val = EMU_A_ADCCR_LCHANENABLE;
    if (AFMT_CHANNEL(ch->fmt) > 1)
     val |= EMU_A_ADCCR_RCHANENABLE;
    val |= audigy_recval(ch->spd);
   } else {
    val = EMU_ADCCR_LCHANENABLE;
    if (AFMT_CHANNEL(ch->fmt) > 1)
     val |= EMU_ADCCR_RCHANENABLE;
    val |= emu_recval(ch->spd);
   }

   emu_wrptr(sc, 0, ch->setupreg, 0);
   emu_wrptr(sc, 0, ch->setupreg, val);
  }
  val = emu_rd(sc, EMU_INTE, 4);
  val |= ch->irqmask;
  emu_wr(sc, EMU_INTE, val, 4);
  break;

 case 128:
 case 132:
  ch->run = 0;
  emu_wrptr(sc, 0, ch->sizereg, 0);
  if (ch->setupreg)
   emu_wrptr(sc, 0, ch->setupreg, 0);
  val = emu_rd(sc, EMU_INTE, 4);
  val &= ~ch->irqmask;
  emu_wr(sc, EMU_INTE, val, 4);
  break;

 case 130:
 case 131:
 default:
  break;
 }
 snd_mtxunlock(sc->lock);

 return 0;
}
