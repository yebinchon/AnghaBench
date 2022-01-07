
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int CMPCI_REG_BUS_AND_DSP_RESET ;
 int CMPCI_REG_CH0_DIR ;
 int CMPCI_REG_CH0_ENABLE ;
 int CMPCI_REG_CH0_INTR_ENABLE ;
 int CMPCI_REG_CH1_DIR ;
 int CMPCI_REG_CH1_ENABLE ;
 int CMPCI_REG_CH1_INTR_ENABLE ;
 int CMPCI_REG_FUNC_0 ;
 int CMPCI_REG_FUNC_1 ;
 int CMPCI_REG_INTR_CTRL ;
 int CMPCI_REG_MISC ;
 int CMPCI_REG_N4SPK3D ;
 int CMPCI_REG_SPDIF1_ENABLE ;
 int CMPCI_REG_SPDIF_LOOP ;
 int DELAY (int) ;
 int cmi_clr4 (struct sc_info*,int ,int) ;
 int cmi_set4 (struct sc_info*,int ,int) ;

__attribute__((used)) static int
cmi_init(struct sc_info *sc)
{

 cmi_set4(sc, CMPCI_REG_MISC, CMPCI_REG_BUS_AND_DSP_RESET);
 DELAY(100);
 cmi_clr4(sc, CMPCI_REG_MISC, CMPCI_REG_BUS_AND_DSP_RESET);


 cmi_clr4(sc, CMPCI_REG_FUNC_0,
   CMPCI_REG_CH0_ENABLE | CMPCI_REG_CH1_ENABLE);
 cmi_clr4(sc, CMPCI_REG_INTR_CTRL,
   CMPCI_REG_CH0_INTR_ENABLE | CMPCI_REG_CH1_INTR_ENABLE);


 cmi_clr4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH0_DIR);
 cmi_set4(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH1_DIR);


 cmi_set4(sc, CMPCI_REG_MISC, CMPCI_REG_N4SPK3D);


 cmi_clr4(sc, CMPCI_REG_FUNC_1, CMPCI_REG_SPDIF1_ENABLE);
 cmi_clr4(sc, CMPCI_REG_FUNC_1, CMPCI_REG_SPDIF_LOOP);

 return 0;
}
