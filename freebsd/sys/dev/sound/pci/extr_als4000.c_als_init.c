
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int ALS_GCR_DMA_EMULATION ;
 int ALS_GCR_MISC ;
 int ALS_SB16_CONFIG ;
 int ALS_SB16_DMA_SETUP ;
 int DEB (int ) ;
 scalar_t__ als_esp_reset (struct sc_info*) ;
 int als_gcr_rd (struct sc_info*,int) ;
 int als_gcr_wr (struct sc_info*,int,int) ;
 int als_mix_rd (struct sc_info*,int ) ;
 int als_mix_wr (struct sc_info*,int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
als_init(struct sc_info *sc)
{
 u_int32_t i, v;


 if (als_esp_reset(sc)) {
  return 1;
 }


 v = als_mix_rd(sc, ALS_SB16_CONFIG);
 als_mix_wr(sc, ALS_SB16_CONFIG, v | 0x80);


 als_mix_wr(sc, ALS_SB16_DMA_SETUP, 0x01);


 als_mix_wr(sc, ALS_SB16_CONFIG, v & 0x7f);


 v = als_gcr_rd(sc, ALS_GCR_MISC);
 als_gcr_wr(sc, ALS_GCR_MISC, v | 0x28000);


 for (i = 0x91; i <= 0x96; i++) {
  als_gcr_wr(sc, i, 0);
 }


 v = als_gcr_rd(sc, ALS_GCR_DMA_EMULATION);
 als_gcr_wr(sc, ALS_GCR_DMA_EMULATION, v);
 DEB(printf("GCR_DMA_EMULATION 0x%08x\n", v));
 return 0;
}
