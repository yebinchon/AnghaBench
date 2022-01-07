
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_active; } ;


 int CMPCI_REG_CH0_ENABLE ;
 int CMPCI_REG_CH0_INTR_ENABLE ;
 int CMPCI_REG_DMA0_BASE ;
 int CMPCI_REG_FUNC_0 ;
 int CMPCI_REG_INTR_CTRL ;
 int cmi_dma_prog (struct sc_info*,struct sc_chinfo*,int ) ;
 int cmi_set4 (struct sc_info*,int ,int ) ;

__attribute__((used)) static void
cmi_ch0_start(struct sc_info *sc, struct sc_chinfo *ch)
{
 cmi_dma_prog(sc, ch, CMPCI_REG_DMA0_BASE);

 cmi_set4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH0_ENABLE);
 cmi_set4(sc, CMPCI_REG_INTR_CTRL,
   CMPCI_REG_CH0_INTR_ENABLE);

 ch->dma_active = 1;
}
