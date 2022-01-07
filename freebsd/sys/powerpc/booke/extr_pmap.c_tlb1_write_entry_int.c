
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tlbwrite_args {int idx; TYPE_1__* e; } ;
struct TYPE_2__ {int mas1; int mas2; int mas3; int mas7; } ;






 int MAS0_ESEL (int) ;
 int MAS0_TLBSEL (int) ;
 int SPR_MAS0 ;
 int SPR_MAS1 ;
 int SPR_MAS2 ;
 int SPR_MAS3 ;
 int SPR_MAS7 ;
 int SPR_MAS8 ;
 int mfpvr () ;
 int mtspr (int ,int) ;
 int panic (char*) ;
 int tlb1_find_free () ;

__attribute__((used)) static void
tlb1_write_entry_int(void *arg)
{
 struct tlbwrite_args *args = arg;
 uint32_t idx, mas0;

 idx = args->idx;
 if (idx == -1) {
  idx = tlb1_find_free();
  if (idx == -1)
   panic("No free TLB1 entries!\n");
 }

 mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(idx);

 mtspr(SPR_MAS0, mas0);
 mtspr(SPR_MAS1, args->e->mas1);
 mtspr(SPR_MAS2, args->e->mas2);
 mtspr(SPR_MAS3, args->e->mas3);
 switch ((mfpvr() >> 16) & 0xFFFF) {
 case 131:
 case 129:
 case 128:
  mtspr(SPR_MAS8, 0);

 case 130:
  mtspr(SPR_MAS7, args->e->mas7);
  break;
 default:
  break;
 }

 __asm __volatile("isync; tlbwe; isync; msync");

}
