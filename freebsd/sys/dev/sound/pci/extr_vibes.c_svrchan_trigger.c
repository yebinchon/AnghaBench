
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct sc_info {int dmac_sh; int dmac_st; } ;
struct sc_chinfo {int dma_active; int buffer; int fmt; int spd; struct sc_info* parent; } ;
typedef int kobj_t ;





 int SV_AFMT_DMAC (int ) ;
 int SV_AFMT_DMAC_MSK ;
 int SV_DMA_MODE_AUTO ;
 int SV_DMA_MODE_RD ;
 int SV_INTR_PER_BUFFER ;
 int SV_RECORD_ENABLE ;
 int SV_REG_DMAC_COUNT_HI ;
 int SV_REG_DMAC_COUNT_LO ;
 int SV_REG_ENABLE ;
 int SV_REG_FORMAT ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;
 int sv_dma_set_config (int ,int ,int ,int ,int) ;
 int sv_indirect_get (struct sc_info*,int ) ;
 int sv_indirect_set (struct sc_info*,int ,int) ;
 int sv_set_recspeed (struct sc_info*,int ) ;

__attribute__((used)) static int
svrchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t count, enable;
 u_int8_t v;

 switch(go) {
 case 129:

  sv_set_recspeed(sc, ch->spd);


  v = sv_indirect_get(sc, SV_REG_FORMAT) & ~SV_AFMT_DMAC_MSK;
  v |= SV_AFMT_DMAC(ch->fmt);
  sv_indirect_set(sc, SV_REG_FORMAT, v);


  count = sndbuf_getsize(ch->buffer) / 2;
  sv_dma_set_config(sc->dmac_st, sc->dmac_sh,
      sndbuf_getbufaddr(ch->buffer),
      count - 1,
      SV_DMA_MODE_AUTO | SV_DMA_MODE_RD);
  count = count / SV_INTR_PER_BUFFER - 1;
  sv_indirect_set(sc, SV_REG_DMAC_COUNT_HI, count >> 8);
  sv_indirect_set(sc, SV_REG_DMAC_COUNT_LO, count & 0xff);


  enable = sv_indirect_get(sc, SV_REG_ENABLE) | SV_RECORD_ENABLE;
  sv_indirect_set(sc, SV_REG_ENABLE, enable);
  ch->dma_active = 1;
  break;
 case 128:
 case 130:
  enable = sv_indirect_get(sc, SV_REG_ENABLE) & ~SV_RECORD_ENABLE;
  sv_indirect_set(sc, SV_REG_ENABLE, enable);
  ch->dma_active = 0;
  break;
 }

 return 0;
}
