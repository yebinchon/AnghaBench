
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TYPE_MISC ;
 int MAP_IRQ (int ,int) ;
 int aeon_pbutton_intr ;
 scalar_t__ bootverbose ;
 int is_aeon ;
 int powerpc_config_intr (int,int ,int ) ;
 int powerpc_setup_intr (char*,int,int *,int ,int *,int ,int *,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
aeon_setup_intr(void *unused)
{
 int irq;

 if (!is_aeon)
  return;

 if (bootverbose)
  printf("Configuring AmigaOne power button.\n");

 irq = 4;


 irq = MAP_IRQ(0, irq);
 powerpc_config_intr(irq, INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);
 powerpc_setup_intr("power_button", irq, ((void*)0), aeon_pbutton_intr, ((void*)0),
     INTR_TYPE_MISC, ((void*)0), 0);
}
