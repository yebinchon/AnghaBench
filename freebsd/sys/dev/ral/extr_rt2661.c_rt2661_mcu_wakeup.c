
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;


 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_IO_CNTL_CSR ;
 int RT2661_MAC_CSR11 ;
 int RT2661_MCU_CMD_WAKEUP ;
 int RT2661_PCI_USEC_CSR ;
 int RT2661_SOFT_RESET_CSR ;
 int rt2661_tx_cmd (struct rt2661_softc*,int ,int ) ;

__attribute__((used)) static void
rt2661_mcu_wakeup(struct rt2661_softc *sc)
{
 RAL_WRITE(sc, RT2661_MAC_CSR11, 5 << 16);

 RAL_WRITE(sc, RT2661_SOFT_RESET_CSR, 0x7);
 RAL_WRITE(sc, RT2661_IO_CNTL_CSR, 0x18);
 RAL_WRITE(sc, RT2661_PCI_USEC_CSR, 0x20);


 rt2661_tx_cmd(sc, RT2661_MCU_CMD_WAKEUP, 0);
}
