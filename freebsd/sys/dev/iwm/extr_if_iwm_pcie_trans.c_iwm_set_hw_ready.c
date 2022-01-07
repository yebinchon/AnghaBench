
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;


 int IWM_CSR_HW_IF_CONFIG_REG ;
 int IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY ;
 int IWM_CSR_MBOX_SET_REG ;
 int IWM_CSR_MBOX_SET_REG_OS_ALIVE ;
 int IWM_HW_READY_TIMEOUT ;
 int IWM_SETBITS (struct iwm_softc*,int ,int ) ;
 int iwm_poll_bit (struct iwm_softc*,int ,int ,int ,int ) ;

int
iwm_set_hw_ready(struct iwm_softc *sc)
{
 int ready;

 IWM_SETBITS(sc, IWM_CSR_HW_IF_CONFIG_REG,
     IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY);

 ready = iwm_poll_bit(sc, IWM_CSR_HW_IF_CONFIG_REG,
     IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
     IWM_CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
     IWM_HW_READY_TIMEOUT);
 if (ready) {
  IWM_SETBITS(sc, IWM_CSR_MBOX_SET_REG,
      IWM_CSR_MBOX_SET_REG_OS_ALIVE);
 }
 return ready;
}
