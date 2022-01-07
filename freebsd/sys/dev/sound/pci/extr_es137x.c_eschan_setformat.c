
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int sctrl; } ;
struct es_chinfo {scalar_t__ dir; scalar_t__ index; int fmt; struct es_info* parent; } ;
typedef int kobj_t ;


 int AFMT_CHANNEL (int) ;
 int AFMT_S16_LE ;
 int ES1370_REG_SERIAL_CONTROL ;
 scalar_t__ ES_DAC1 ;
 int ES_LOCK (struct es_info*) ;
 int ES_UNLOCK (struct es_info*) ;
 scalar_t__ PCMDIR_PLAY ;
 int SCTRL_P1FMT ;
 int SCTRL_P1SEB ;
 int SCTRL_P1SMB ;
 int SCTRL_P2FMT ;
 int SCTRL_P2SEB ;
 int SCTRL_P2SMB ;
 int SCTRL_R1FMT ;
 int SCTRL_R1SEB ;
 int SCTRL_R1SMB ;
 int es_wr (struct es_info*,int ,int ,int) ;

__attribute__((used)) static int
eschan_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct es_chinfo *ch = data;
 struct es_info *es = ch->parent;

 ES_LOCK(es);
 if (ch->dir == PCMDIR_PLAY) {
  if (ch->index == ES_DAC1) {
   es->sctrl &= ~SCTRL_P1FMT;
   if (format & AFMT_S16_LE)
    es->sctrl |= SCTRL_P1SEB;
   if (AFMT_CHANNEL(format) > 1)
    es->sctrl |= SCTRL_P1SMB;
  } else {
   es->sctrl &= ~SCTRL_P2FMT;
   if (format & AFMT_S16_LE)
    es->sctrl |= SCTRL_P2SEB;
   if (AFMT_CHANNEL(format) > 1)
    es->sctrl |= SCTRL_P2SMB;
  }
 } else {
  es->sctrl &= ~SCTRL_R1FMT;
  if (format & AFMT_S16_LE)
   es->sctrl |= SCTRL_R1SEB;
  if (AFMT_CHANNEL(format) > 1)
   es->sctrl |= SCTRL_R1SMB;
 }
 es_wr(es, ES1370_REG_SERIAL_CONTROL, es->sctrl, 4);
 ES_UNLOCK(es);
 ch->fmt = format;
 return (0);
}
