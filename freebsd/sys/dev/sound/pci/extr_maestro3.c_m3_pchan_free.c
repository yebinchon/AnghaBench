
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {int dac_idx; struct sc_info* parent; } ;
struct sc_info {int pch_cnt; int rch_cnt; } ;
typedef int kobj_t ;


 int CHANGE ;
 int KDATA_DMA_XFER0 ;
 int KDATA_INSTANCE0_MINISRC ;
 int KDATA_MIXER_XFER0 ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int m3_wr_assp_data (struct sc_info*,int,int ) ;

__attribute__((used)) static int
m3_pchan_free(kobj_t kobj, void *chdata)
{
 struct sc_pchinfo *ch = chdata;
 struct sc_info *sc = ch->parent;

 M3_LOCK(sc);
        M3_DEBUG(CHANGE, ("m3_pchan_free(dac=%d)\n", ch->dac_idx));





 m3_wr_assp_data(sc, KDATA_INSTANCE0_MINISRC +
   (sc->pch_cnt - 1) + sc->rch_cnt, 0);
 m3_wr_assp_data(sc, KDATA_DMA_XFER0 +
   (sc->pch_cnt - 1) + sc->rch_cnt, 0);
 m3_wr_assp_data(sc, KDATA_MIXER_XFER0 + (sc->pch_cnt-1), 0);
 sc->pch_cnt--;
 M3_UNLOCK(sc);

 return (0);
}
