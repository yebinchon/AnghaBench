
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int * mpu_intr; scalar_t__ mpu; } ;


 int CMPCI_REG_CH0_ENABLE ;
 int CMPCI_REG_CH0_INTR_ENABLE ;
 int CMPCI_REG_CH1_ENABLE ;
 int CMPCI_REG_CH1_INTR_ENABLE ;
 int CMPCI_REG_FUNC_0 ;
 int CMPCI_REG_FUNC_1 ;
 int CMPCI_REG_INTR_CTRL ;
 int CMPCI_REG_TDMA_INTR_ENABLE ;
 int CMPCI_REG_UART_ENABLE ;
 int cmi_clr4 (struct sc_info*,int ,int) ;

__attribute__((used)) static void
cmi_uninit(struct sc_info *sc)
{

 cmi_clr4(sc, CMPCI_REG_INTR_CTRL,
   CMPCI_REG_CH0_INTR_ENABLE |
   CMPCI_REG_CH1_INTR_ENABLE |
   CMPCI_REG_TDMA_INTR_ENABLE);
 cmi_clr4(sc, CMPCI_REG_FUNC_0,
   CMPCI_REG_CH0_ENABLE | CMPCI_REG_CH1_ENABLE);
 cmi_clr4(sc, CMPCI_REG_FUNC_1, CMPCI_REG_UART_ENABLE);

 if( sc->mpu )
  sc->mpu_intr = ((void*)0);
}
