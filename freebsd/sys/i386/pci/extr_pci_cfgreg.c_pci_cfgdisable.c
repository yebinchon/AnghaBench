
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF2_ENABLE_PORT ;
 int cfgmech ;
 int outb (int ,int ) ;

__attribute__((used)) static void
pci_cfgdisable(void)
{
 switch (cfgmech) {
 case 128:
 case 130:






  break;
 case 129:
  outb(CONF2_ENABLE_PORT, 0);
  break;
 }
}
