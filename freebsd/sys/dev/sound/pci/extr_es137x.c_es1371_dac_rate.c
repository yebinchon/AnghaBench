
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es_info {int dummy; } ;


 unsigned int ES1371_DIS_P1 ;
 unsigned int ES1371_DIS_P2 ;
 unsigned int ES1371_DIS_R1 ;
 unsigned int ES1371_DIS_SRC ;
 int ES1371_REG_SMPRATE ;
 int ES_DAC1 ;
 int ES_LOCK_ASSERT (struct es_info*) ;
 unsigned int ES_SMPREG_DAC1 ;
 unsigned int ES_SMPREG_DAC2 ;
 scalar_t__ ES_SMPREG_INT_REGS ;
 scalar_t__ ES_SMPREG_VFREQ_FRAC ;
 int es1371_src_read (struct es_info*,scalar_t__) ;
 int es1371_src_write (struct es_info*,scalar_t__,unsigned int) ;
 unsigned int es1371_wait_src_ready (struct es_info*) ;
 int es_wr (struct es_info*,int ,unsigned int,int) ;

__attribute__((used)) static unsigned int
es1371_dac_rate(struct es_info *es, unsigned int rate, int set)
{
   unsigned int freq, r, result, dac, dis;

 ES_LOCK_ASSERT(es);

   if (rate > 48000)
  rate = 48000;
   if (rate < 4000)
  rate = 4000;
   freq = ((rate << 15) + 1500) / 3000;
   result = (freq * 3000) >> 15;

 dac = (set == ES_DAC1) ? ES_SMPREG_DAC1 : ES_SMPREG_DAC2;
 dis = (set == ES_DAC1) ? ES1371_DIS_P2 : ES1371_DIS_P1;
 r = (es1371_wait_src_ready(es) & (ES1371_DIS_SRC | ES1371_DIS_P1 |
     ES1371_DIS_P2 | ES1371_DIS_R1));
 es_wr(es, ES1371_REG_SMPRATE, r, 4);
 es1371_src_write(es, dac + ES_SMPREG_INT_REGS,
     (es1371_src_read(es, dac + ES_SMPREG_INT_REGS) & 0x00ff) |
     ((freq >> 5) & 0xfc00));
 es1371_src_write(es, dac + ES_SMPREG_VFREQ_FRAC, freq & 0x7fff);
 r = (es1371_wait_src_ready(es) &
     (ES1371_DIS_SRC | dis | ES1371_DIS_R1));
 es_wr(es, ES1371_REG_SMPRATE, r, 4);
   return (result);
}
