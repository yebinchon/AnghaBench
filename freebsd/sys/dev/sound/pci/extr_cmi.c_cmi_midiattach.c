
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int mpu_intr; int mpu; } ;


 int CMPCI_REG_FUNC_1 ;
 int CMPCI_REG_LEGACY_CTRL ;
 int CMPCI_REG_UART_ENABLE ;
 int CMPCI_REG_VMPUSEL_MASK ;
 int CMPCI_REG_VMPUSEL_SHIFT ;
 int cmi_clr4 (struct sc_info*,int ,int) ;
 int cmi_intr ;
 int cmi_mpu_class ;
 int cmi_set4 (struct sc_info*,int ,int) ;
 int mpu401_init (int *,struct sc_info*,int ,int *) ;

__attribute__((used)) static void
cmi_midiattach(struct sc_info *sc) {
 cmi_clr4(sc, CMPCI_REG_FUNC_1, CMPCI_REG_UART_ENABLE);
 cmi_clr4(sc, CMPCI_REG_LEGACY_CTRL,
   CMPCI_REG_VMPUSEL_MASK << CMPCI_REG_VMPUSEL_SHIFT);
 cmi_set4(sc, CMPCI_REG_LEGACY_CTRL,
   0 << CMPCI_REG_VMPUSEL_SHIFT );
 cmi_set4(sc, CMPCI_REG_FUNC_1, CMPCI_REG_UART_ENABLE);
 sc->mpu = mpu401_init(&cmi_mpu_class, sc, cmi_intr, &sc->mpu_intr);
}
