
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct sc_info {int dmaa_sh; int dmaa_st; } ;
struct sc_chinfo {int spd; int dma_active; int buffer; int fmt; struct sc_info* parent; } ;
typedef int kobj_t ;





 int SV_AFMT_DMAA (int ) ;
 int SV_AFMT_DMAA_MSK ;
 int SV_DMA_MODE_AUTO ;
 int SV_DMA_MODE_WR ;
 int SV_INTR_PER_BUFFER ;
 int SV_PLAYBACK_PAUSE ;
 int SV_PLAY_ENABLE ;
 int SV_REG_DMAA_COUNT_HI ;
 int SV_REG_DMAA_COUNT_LO ;
 int SV_REG_ENABLE ;
 int SV_REG_FORMAT ;
 int SV_REG_PCM_SAMPLING_HI ;
 int SV_REG_PCM_SAMPLING_LO ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;
 int sv_dma_set_config (int ,int ,int ,int ,int) ;
 int sv_indirect_get (struct sc_info*,int ) ;
 int sv_indirect_set (struct sc_info*,int ,int) ;

__attribute__((used)) static int
svpchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t count, enable, speed;
 u_int8_t v;

 switch(go) {
 case 129:

  speed = (ch->spd * 65536) / 48000;
  if (speed > 65535)
   speed = 65535;
  sv_indirect_set(sc, SV_REG_PCM_SAMPLING_HI, speed >> 8);
  sv_indirect_set(sc, SV_REG_PCM_SAMPLING_LO, speed & 0xff);


  v = sv_indirect_get(sc, SV_REG_FORMAT) & ~SV_AFMT_DMAA_MSK;
  v |= SV_AFMT_DMAA(ch->fmt);
  sv_indirect_set(sc, SV_REG_FORMAT, v);


  count = sndbuf_getsize(ch->buffer);
  sv_dma_set_config(sc->dmaa_st, sc->dmaa_sh,
      sndbuf_getbufaddr(ch->buffer),
      count - 1,
      SV_DMA_MODE_AUTO | SV_DMA_MODE_WR);
  count = count / SV_INTR_PER_BUFFER - 1;
  sv_indirect_set(sc, SV_REG_DMAA_COUNT_HI, count >> 8);
  sv_indirect_set(sc, SV_REG_DMAA_COUNT_LO, count & 0xff);


  enable = sv_indirect_get(sc, SV_REG_ENABLE);
  enable = (enable | SV_PLAY_ENABLE) & ~SV_PLAYBACK_PAUSE;
  sv_indirect_set(sc, SV_REG_ENABLE, enable);
  ch->dma_active = 1;
  break;
 case 128:
 case 130:
  enable = sv_indirect_get(sc, SV_REG_ENABLE) & ~SV_PLAY_ENABLE;
  sv_indirect_set(sc, SV_REG_ENABLE, enable);
  ch->dma_active = 0;
  break;
 }

 return 0;
}
