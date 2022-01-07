
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int CMPCI_REG_MISC ;
 int CMPCI_REG_POWER_DOWN ;
 int cmi_clr4 (struct sc_info*,int ,int ) ;
 int cmi_set4 (struct sc_info*,int ,int ) ;

__attribute__((used)) static void
cmi_power(struct sc_info *sc, int state)
{
 switch (state) {
 case 0:
  cmi_clr4(sc, CMPCI_REG_MISC, CMPCI_REG_POWER_DOWN);
  break;
 default:

  cmi_set4(sc, CMPCI_REG_MISC, CMPCI_REG_POWER_DOWN);
  break;
 }
}
