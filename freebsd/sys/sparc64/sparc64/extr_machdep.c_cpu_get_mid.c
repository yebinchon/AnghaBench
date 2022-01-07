
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int AA_FIREPLANE_CONFIG ;
 int AA_INTR_ID ;
 int ASI_FIREPLANE_CONFIG_REG ;
 int ASI_INTR_ID ;
 int ASI_JBUS_CONFIG_REG ;
 int ASI_UPA_CONFIG_REG ;
 int FIREPLANE_CR_GET_AID (int ) ;
 int INTR_ID_GET_ID (int ) ;
 int JBUS_CR_GET_JID (int ) ;
 int UPA_CR_GET_MID (int ) ;
 int ldxa (int ,int ) ;

uint32_t
cpu_get_mid(u_int cpu_impl)
{

 switch (cpu_impl) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 130:
 case 131:
  return (UPA_CR_GET_MID(ldxa(0, ASI_UPA_CONFIG_REG)));
 case 135:
 case 132:
  return (FIREPLANE_CR_GET_AID(ldxa(AA_FIREPLANE_CONFIG,
      ASI_FIREPLANE_CONFIG_REG)));
 case 134:
 case 133:
  return (JBUS_CR_GET_JID(ldxa(0, ASI_JBUS_CONFIG_REG)));
 case 129:
 case 128:
  return (INTR_ID_GET_ID(ldxa(AA_INTR_ID, ASI_INTR_ID)));
 default:
  return (0);
 }
}
