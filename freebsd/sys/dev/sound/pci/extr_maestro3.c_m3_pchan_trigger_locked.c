
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int active; scalar_t__ dac_data; int prevptr; int ptr; int dac_idx; struct sc_info* parent; } ;
struct sc_info {int pch_active_cnt; } ;
typedef int kobj_t ;


 int CALL ;
 scalar_t__ CDATA_INSTANCE_READY ;
 int CHANGE ;
 int CLKRUN_GEN_ENABLE ;
 int HOST_INT_CTRL ;
 scalar_t__ KDATA_MIXER_TASK_NUMBER ;
 scalar_t__ KDATA_TIMER_COUNT_CURRENT ;
 scalar_t__ KDATA_TIMER_COUNT_RELOAD ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK_ASSERT (struct sc_info*) ;





 int m3_chan_active (struct sc_info*) ;
 int m3_rd_2 (struct sc_info*,int ) ;
 int m3_wr_2 (struct sc_info*,int ,int) ;
 int m3_wr_assp_data (struct sc_info*,scalar_t__,int) ;

__attribute__((used)) static int
m3_pchan_trigger_locked(kobj_t kobj, void *chdata, int go)
{
 struct sc_pchinfo *ch = chdata;
 struct sc_info *sc = ch->parent;
 u_int32_t data;

 M3_LOCK_ASSERT(sc);
 M3_DEBUG(go == 129 ? CHANGE :
   go == 128 ? CHANGE :
   go == 132 ? CHANGE :
   CALL,
   ("m3_pchan_trigger(dac=%d, go=0x%x{%s})\n", ch->dac_idx, go,
    go == 129 ? "PCMTRIG_START" :
    go == 128 ? "PCMTRIG_STOP" :
    go == 132 ? "PCMTRIG_ABORT" : "ignore"));

 switch(go) {
 case 129:
  if (ch->active) {
   return 0;
  }
  ch->active = 1;
  ch->ptr = 0;
  ch->prevptr = 0;
  sc->pch_active_cnt++;


  if (m3_chan_active(sc) == 1) {
                 m3_wr_assp_data(sc, KDATA_TIMER_COUNT_RELOAD, 240);
                 m3_wr_assp_data(sc, KDATA_TIMER_COUNT_CURRENT, 240);
                 data = m3_rd_2(sc, HOST_INT_CTRL);
                 m3_wr_2(sc, HOST_INT_CTRL, data | CLKRUN_GEN_ENABLE);
  }

                m3_wr_assp_data(sc, ch->dac_data + CDATA_INSTANCE_READY, 1);
                m3_wr_assp_data(sc, KDATA_MIXER_TASK_NUMBER,
    sc->pch_active_cnt);
  break;

 case 128:
 case 132:
  if (ch->active == 0) {
   return 0;
  }
  ch->active = 0;
  sc->pch_active_cnt--;



  if (m3_chan_active(sc) == 0) {
                 m3_wr_assp_data(sc, KDATA_TIMER_COUNT_RELOAD, 0);
                 m3_wr_assp_data(sc, KDATA_TIMER_COUNT_CURRENT, 0);
                 data = m3_rd_2(sc, HOST_INT_CTRL);
                 m3_wr_2(sc, HOST_INT_CTRL, data & ~CLKRUN_GEN_ENABLE);
  }

                m3_wr_assp_data(sc, ch->dac_data + CDATA_INSTANCE_READY, 0);
                m3_wr_assp_data(sc, KDATA_MIXER_TASK_NUMBER,
    sc->pch_active_cnt);
  break;

 case 130:

 case 131:

 default:
  break;
 }
 return 0;
}
