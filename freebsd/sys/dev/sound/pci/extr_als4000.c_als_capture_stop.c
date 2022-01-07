
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_active; struct sc_info* parent; } ;


 int ALS_FIFO1_CONTROL ;
 int ALS_FIFO1_STOP ;
 int als_mix_wr (struct sc_info*,int ,int ) ;

__attribute__((used)) static int
als_capture_stop(struct sc_chinfo *ch)
{
 struct sc_info *sc = ch->parent;
 u_int32_t active;

 active = ch->dma_active;
 if (active) {
  als_mix_wr(sc, ALS_FIFO1_CONTROL, ALS_FIFO1_STOP);
 }
 ch->dma_active = 0;
 return active;
}
