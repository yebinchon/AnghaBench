
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIM_EA_BEI_BAR_0 ;
 int PCIM_EA_BEI_BAR_5 ;




 int PCIM_EA_BEI_VF_BAR_0 ;
 int PCIM_EA_BEI_VF_BAR_5 ;

__attribute__((used)) static const char *
ea_bei_to_name(int bei)
{
 static const char *barstr[] = {
  "BAR0", "BAR1", "BAR2", "BAR3", "BAR4", "BAR5"
 };
 static const char *vfbarstr[] = {
  "VFBAR0", "VFBAR1", "VFBAR2", "VFBAR3", "VFBAR4", "VFBAR5"
 };

 if ((bei >= PCIM_EA_BEI_BAR_0) && (bei <= PCIM_EA_BEI_BAR_5))
  return (barstr[bei - PCIM_EA_BEI_BAR_0]);
 if ((bei >= PCIM_EA_BEI_VF_BAR_0) && (bei <= PCIM_EA_BEI_VF_BAR_5))
  return (vfbarstr[bei - PCIM_EA_BEI_VF_BAR_0]);

 switch (bei) {
 case 131:
  return "BRIDGE";
 case 130:
  return "ENI";
 case 128:
  return "ROM";
 case 129:
 default:
  return "RSVD";
 }
}
