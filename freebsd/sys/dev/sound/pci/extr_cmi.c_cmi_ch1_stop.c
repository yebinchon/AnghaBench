
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {scalar_t__ dma_active; } ;


 int CMPCI_REG_CH1_ENABLE ;
 int CMPCI_REG_CH1_INTR_ENABLE ;
 int CMPCI_REG_CH1_RESET ;
 int CMPCI_REG_FUNC_0 ;
 int CMPCI_REG_INTR_CTRL ;
 int cmi_clr4 (struct sc_info*,int ,int ) ;
 int cmi_set4 (struct sc_info*,int ,int ) ;

__attribute__((used)) static u_int32_t
cmi_ch1_stop(struct sc_info *sc, struct sc_chinfo *ch)
{
 u_int32_t r = ch->dma_active;

 cmi_clr4(sc, CMPCI_REG_INTR_CTRL, CMPCI_REG_CH1_INTR_ENABLE);
 cmi_clr4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH1_ENABLE);
        cmi_set4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH1_RESET);
        cmi_clr4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH1_RESET);
 ch->dma_active = 0;
 return r;
}
