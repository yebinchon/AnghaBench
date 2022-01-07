
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {int pch_cnt; int rch_cnt; int * savemem; TYPE_1__* rch; TYPE_2__* pch; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;


 int ASSP_CONTROL_C ;
 int CHANGE ;
 int DELAY (int) ;
 int HOST_INT_CTRL ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int PCMTRIG_STOP ;
 int REV_B_CODE_MEMORY_BEGIN ;
 int REV_B_CODE_MEMORY_END ;
 int REV_B_DATA_MEMORY_BEGIN ;
 int REV_B_DATA_MEMORY_END ;
 int m3_assp_halt (struct sc_info*) ;
 int m3_pchan_trigger_locked (int *,TYPE_2__*,int ) ;
 int m3_power (struct sc_info*,int) ;
 int m3_rchan_trigger_locked (int *,TYPE_1__*,int ) ;
 int m3_rd_assp_code (struct sc_info*,int) ;
 int m3_rd_assp_data (struct sc_info*,int) ;
 int m3_wr_1 (struct sc_info*,int ,int ) ;
 int m3_wr_2 (struct sc_info*,int ,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
m3_pci_suspend(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);
 int i, index = 0;

        M3_DEBUG(CHANGE, ("m3_pci_suspend\n"));

 M3_LOCK(sc);
 for (i=0 ; i<sc->pch_cnt ; i++) {
  if (sc->pch[i].active) {
   m3_pchan_trigger_locked(((void*)0), &sc->pch[i],
       PCMTRIG_STOP);
  }
 }
 for (i=0 ; i<sc->rch_cnt ; i++) {
  if (sc->rch[i].active) {
   m3_rchan_trigger_locked(((void*)0), &sc->rch[i],
       PCMTRIG_STOP);
  }
 }
 DELAY(10 * 1000);


 m3_wr_2(sc, HOST_INT_CTRL, 0);
 m3_wr_1(sc, ASSP_CONTROL_C, 0);

 m3_assp_halt(sc);


 for (i = REV_B_CODE_MEMORY_BEGIN; i <= REV_B_CODE_MEMORY_END; i++)
  sc->savemem[index++] = m3_rd_assp_code(sc, i);
 for (i = REV_B_DATA_MEMORY_BEGIN; i <= REV_B_DATA_MEMORY_END; i++)
  sc->savemem[index++] = m3_rd_assp_data(sc, i);


 m3_power(sc, 3);
 M3_UNLOCK(sc);

 return 0;
}
