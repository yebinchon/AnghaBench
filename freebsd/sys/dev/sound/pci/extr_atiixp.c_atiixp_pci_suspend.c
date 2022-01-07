
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int flags; } ;
struct atiixp_info {TYPE_1__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int ATI_IXP_CHN_RUNNING ;
 int ATI_IXP_CHN_SUSPEND ;
 int ATI_REG_CMD ;
 int ATI_REG_CMD_AC_RESET ;
 int ATI_REG_CMD_POWERDOWN ;
 int PCMTRIG_STOP ;
 int atiixp_chan_trigger (int *,TYPE_1__*,int ) ;
 int atiixp_disable_interrupts (struct atiixp_info*) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;
 struct atiixp_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
atiixp_pci_suspend(device_t dev)
{
 struct atiixp_info *sc = pcm_getdevinfo(dev);
 uint32_t value;


 atiixp_lock(sc);
 atiixp_disable_interrupts(sc);
 atiixp_unlock(sc);


 if (sc->pch.flags & ATI_IXP_CHN_RUNNING) {
  atiixp_chan_trigger(((void*)0), &sc->pch, PCMTRIG_STOP);
  sc->pch.flags |= ATI_IXP_CHN_SUSPEND;
 }
 if (sc->rch.flags & ATI_IXP_CHN_RUNNING) {
  atiixp_chan_trigger(((void*)0), &sc->rch, PCMTRIG_STOP);
  sc->rch.flags |= ATI_IXP_CHN_SUSPEND;
 }


 atiixp_lock(sc);
 value = atiixp_rd(sc, ATI_REG_CMD);
 value |= ATI_REG_CMD_POWERDOWN | ATI_REG_CMD_AC_RESET;
 atiixp_wr(sc, ATI_REG_CMD, ATI_REG_CMD_POWERDOWN);
 atiixp_unlock(sc);

 return (0);
}
