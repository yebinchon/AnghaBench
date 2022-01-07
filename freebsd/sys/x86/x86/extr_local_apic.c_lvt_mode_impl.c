
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct lvt {scalar_t__ lvt_edgetrigger; scalar_t__ lvt_activehi; int lvt_mode; int lvt_vector; scalar_t__ lvt_masked; } ;
struct lapic {int la_id; } ;


 int APIC_LVT_DM ;





 int APIC_LVT_IIPP ;
 int APIC_LVT_IIPP_INTALO ;
 int APIC_LVT_M ;
 int APIC_LVT_TM ;
 int APIC_LVT_VECTOR ;
 int bootverbose ;
 int panic (char*,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static uint32_t
lvt_mode_impl(struct lapic *la, struct lvt *lvt, u_int pin, uint32_t value)
{

 value &= ~(APIC_LVT_M | APIC_LVT_TM | APIC_LVT_IIPP | APIC_LVT_DM |
     APIC_LVT_VECTOR);
 if (lvt->lvt_edgetrigger == 0)
  value |= APIC_LVT_TM;
 if (lvt->lvt_activehi == 0)
  value |= APIC_LVT_IIPP_INTALO;
 if (lvt->lvt_masked)
  value |= APIC_LVT_M;
 value |= lvt->lvt_mode;
 switch (lvt->lvt_mode) {
 case 129:
 case 128:
 case 130:
 case 132:
  if (!lvt->lvt_edgetrigger && bootverbose) {
   printf("lapic%u: Forcing LINT%u to edge trigger\n",
       la->la_id, pin);
   value &= ~APIC_LVT_TM;
  }

  break;
 case 131:
  value |= lvt->lvt_vector;
  break;
 default:
  panic("bad APIC LVT delivery mode: %#x\n", value);
 }
 return (value);
}
