
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct sc_info {int pch_cnt; int rch_cnt; TYPE_1__* rch; TYPE_2__* pch; int * savemem; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;


 int CHANGE ;
 int DSP_PORT_CONTROL_REG_B ;
 int ENXIO ;
 int KDATA_DMA_ACTIVE ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int PCMTRIG_START ;
 int REGB_ENABLE_RESET ;
 int REV_B_CODE_MEMORY_BEGIN ;
 int REV_B_CODE_MEMORY_END ;
 int REV_B_DATA_MEMORY_BEGIN ;
 int REV_B_DATA_MEMORY_END ;
 int device_printf (int ,char*) ;
 int m3_amp_enable (struct sc_info*) ;
 int m3_assp_halt (struct sc_info*) ;
 int m3_codec_reset (struct sc_info*) ;
 int m3_config (struct sc_info*) ;
 int m3_enable_ints (struct sc_info*) ;
 int m3_pchan_trigger_locked (int *,TYPE_2__*,int ) ;
 int m3_power (struct sc_info*,int ) ;
 int m3_rchan_trigger_locked (int *,TYPE_1__*,int ) ;
 int m3_wr_1 (struct sc_info*,int ,int) ;
 int m3_wr_assp_code (struct sc_info*,int,int ) ;
 int m3_wr_assp_data (struct sc_info*,int,int ) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
m3_pci_resume(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);
 int i, index = 0;
 u_int8_t reset_state;

 M3_DEBUG(CHANGE, ("m3_pci_resume\n"));

 M3_LOCK(sc);

 m3_power(sc, 0);

 m3_config(sc);

 reset_state = m3_assp_halt(sc);

 m3_codec_reset(sc);


 for (i = REV_B_CODE_MEMORY_BEGIN; i <= REV_B_CODE_MEMORY_END; i++)
  m3_wr_assp_code(sc, i, sc->savemem[index++]);
 for (i = REV_B_DATA_MEMORY_BEGIN; i <= REV_B_DATA_MEMORY_END; i++)
  m3_wr_assp_data(sc, i, sc->savemem[index++]);


 m3_wr_assp_data(sc, KDATA_DMA_ACTIVE, 0);


 m3_wr_1(sc, DSP_PORT_CONTROL_REG_B, reset_state | REGB_ENABLE_RESET);

 m3_amp_enable(sc);

 m3_enable_ints(sc);

 M3_UNLOCK(sc);
 if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  return (ENXIO);
 }
 M3_LOCK(sc);


 for (i=0 ; i<sc->pch_cnt ; i++) {
  if (sc->pch[i].active) {
   m3_pchan_trigger_locked(((void*)0), &sc->pch[i],
       PCMTRIG_START);
  }
 }
 for (i=0 ; i<sc->rch_cnt ; i++) {
  if (sc->rch[i].active) {
   m3_rchan_trigger_locked(((void*)0), &sc->rch[i],
       PCMTRIG_START);
  }
 }

 M3_UNLOCK(sc);
 return 0;
}
