
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sb_chinfo {int dch; int fmt; int blksz; int spd; int buffer; scalar_t__ run; } ;
struct sb_info {int bd_flags; struct sb_chinfo rch; struct sb_chinfo pch; int drq1; int drq2; } ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int AFMT_SIGNED ;
 int BD_F_DMARUN ;
 int BD_F_DMARUN2 ;
 int BD_F_SB16X ;
 int DSP_CMD_IN16 ;
 int DSP_CMD_OUT16 ;
 int DSP_DMA16 ;
 int DSP_DMA8 ;
 int DSP_F16_ADC ;
 int DSP_F16_AUTO ;
 int DSP_F16_DAC ;
 int DSP_F16_FIFO_ON ;
 int DSP_F16_SIGNED ;
 int DSP_F16_STEREO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCMTRIG_START ;
 int PCMTRIG_STOP ;
 int RANGE (int,int,int) ;
 int sb_cmd (struct sb_info*,int) ;
 int sb_cmd2 (struct sb_info*,int,int) ;
 int sb_lock (struct sb_info*) ;
 int sb_reset_dsp (struct sb_info*) ;
 int sb_unlock (struct sb_info*) ;
 int sndbuf_dma (int ,int ) ;
 int sndbuf_dmasetdir (int ,int ) ;
 int sndbuf_dmasetup (int ,int ) ;

__attribute__((used)) static int
sb_setup(struct sb_info *sb)
{
 struct sb_chinfo *ch;
 u_int8_t v;
 int l, pprio;

 sb_lock(sb);
 if (sb->bd_flags & BD_F_DMARUN)
  sndbuf_dma(sb->pch.buffer, PCMTRIG_STOP);
 if (sb->bd_flags & BD_F_DMARUN2)
  sndbuf_dma(sb->rch.buffer, PCMTRIG_STOP);
 sb->bd_flags &= ~(BD_F_DMARUN | BD_F_DMARUN2);

 sb_reset_dsp(sb);

 if (sb->bd_flags & BD_F_SB16X) {

  pprio = sb->pch.run? 1 : 0;
  sndbuf_dmasetup(sb->pch.buffer, pprio? sb->drq1 : sb->drq2);
  sb->pch.dch = pprio? 1 : 0;
  sndbuf_dmasetup(sb->rch.buffer, pprio? sb->drq2 : sb->drq1);
  sb->rch.dch = pprio? 2 : 1;
 } else {
  if (sb->pch.run && sb->rch.run) {
   pprio = (sb->rch.fmt & AFMT_16BIT)? 0 : 1;
   sndbuf_dmasetup(sb->pch.buffer, pprio? sb->drq2 : sb->drq1);
   sb->pch.dch = pprio? 2 : 1;
   sndbuf_dmasetup(sb->rch.buffer, pprio? sb->drq1 : sb->drq2);
   sb->rch.dch = pprio? 1 : 2;
  } else {
   if (sb->pch.run) {
    sndbuf_dmasetup(sb->pch.buffer, (sb->pch.fmt & AFMT_16BIT)? sb->drq2 : sb->drq1);
    sb->pch.dch = (sb->pch.fmt & AFMT_16BIT)? 2 : 1;
    sndbuf_dmasetup(sb->rch.buffer, (sb->pch.fmt & AFMT_16BIT)? sb->drq1 : sb->drq2);
    sb->rch.dch = (sb->pch.fmt & AFMT_16BIT)? 1 : 2;
   } else if (sb->rch.run) {
    sndbuf_dmasetup(sb->pch.buffer, (sb->rch.fmt & AFMT_16BIT)? sb->drq1 : sb->drq2);
    sb->pch.dch = (sb->rch.fmt & AFMT_16BIT)? 1 : 2;
    sndbuf_dmasetup(sb->rch.buffer, (sb->rch.fmt & AFMT_16BIT)? sb->drq2 : sb->drq1);
    sb->rch.dch = (sb->rch.fmt & AFMT_16BIT)? 2 : 1;
   }
  }
 }

 sndbuf_dmasetdir(sb->pch.buffer, PCMDIR_PLAY);
 sndbuf_dmasetdir(sb->rch.buffer, PCMDIR_REC);






 ch = &sb->pch;
 if (ch->run) {
  l = ch->blksz;
  if (ch->fmt & AFMT_16BIT)
   l >>= 1;
  l--;


  RANGE(ch->spd, 5000, 45000);
  sb_cmd(sb, DSP_CMD_OUT16);
      sb_cmd(sb, ch->spd >> 8);
  sb_cmd(sb, ch->spd & 0xff);


  v = DSP_F16_AUTO | DSP_F16_FIFO_ON | DSP_F16_DAC;
  v |= (ch->fmt & AFMT_16BIT)? DSP_DMA16 : DSP_DMA8;
  sb_cmd(sb, v);

  v = (AFMT_CHANNEL(ch->fmt) > 1)? DSP_F16_STEREO : 0;
  v |= (ch->fmt & AFMT_SIGNED)? DSP_F16_SIGNED : 0;
  sb_cmd2(sb, v, l);
  sndbuf_dma(ch->buffer, PCMTRIG_START);
  sb->bd_flags |= BD_F_DMARUN;
 }

 ch = &sb->rch;
 if (ch->run) {
  l = ch->blksz;
  if (ch->fmt & AFMT_16BIT)
   l >>= 1;
  l--;


  RANGE(ch->spd, 5000, 45000);
  sb_cmd(sb, DSP_CMD_IN16);
      sb_cmd(sb, ch->spd >> 8);
  sb_cmd(sb, ch->spd & 0xff);


  v = DSP_F16_AUTO | DSP_F16_FIFO_ON | DSP_F16_ADC;
  v |= (ch->fmt & AFMT_16BIT)? DSP_DMA16 : DSP_DMA8;
  sb_cmd(sb, v);

  v = (AFMT_CHANNEL(ch->fmt) > 1)? DSP_F16_STEREO : 0;
  v |= (ch->fmt & AFMT_SIGNED)? DSP_F16_SIGNED : 0;
  sb_cmd2(sb, v, l);
  sndbuf_dma(ch->buffer, PCMTRIG_START);
  sb->bd_flags |= BD_F_DMARUN2;
 }
 sb_unlock(sb);

     return 0;
}
