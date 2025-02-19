
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {scalar_t__ polling; } ;
struct es_chinfo {int ptr; scalar_t__ dir; scalar_t__ index; struct es_info* parent; } ;
typedef int kobj_t ;


 int ES1370_REG_ADC_FRAMECNT ;
 int ES1370_REG_DAC1_FRAMECNT ;
 int ES1370_REG_DAC2_FRAMECNT ;
 int ES1370_REG_MEMPAGE ;
 int ES_BLK_ALIGN ;
 scalar_t__ ES_DAC1 ;
 int ES_LOCK (struct es_info*) ;
 int ES_UNLOCK (struct es_info*) ;
 scalar_t__ PCMDIR_PLAY ;
 int es_rd (struct es_info*,int,int) ;
 int es_wr (struct es_info*,int ,int,int) ;

__attribute__((used)) static uint32_t
eschan_getptr(kobj_t obj, void *data)
{
 struct es_chinfo *ch = data;
 struct es_info *es = ch->parent;
 uint32_t reg, cnt;

 ES_LOCK(es);
 if (es->polling != 0)
  cnt = ch->ptr;
 else {
  if (ch->dir == PCMDIR_PLAY) {
   if (ch->index == ES_DAC1)
    reg = ES1370_REG_DAC1_FRAMECNT;
   else
    reg = ES1370_REG_DAC2_FRAMECNT;
  } else
   reg = ES1370_REG_ADC_FRAMECNT;
  es_wr(es, ES1370_REG_MEMPAGE, reg >> 8, 4);
  cnt = es_rd(es, reg & 0x000000ff, 4) >> 16;

  cnt <<= 2;
 }
 ES_UNLOCK(es);

 cnt &= ES_BLK_ALIGN;

 return (cnt);
}
