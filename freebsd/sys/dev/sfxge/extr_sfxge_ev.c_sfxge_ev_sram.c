
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int EFSYS_PROBE (int ) ;



 int KASSERT (int ,char*) ;
 int sram_clear ;
 int sram_illegal_clear ;
 int sram_update ;

__attribute__((used)) static boolean_t
sfxge_ev_sram(void *arg, uint32_t code)
{
 (void)arg;
 (void)code;

 switch (code) {
 case 128:
  EFSYS_PROBE(sram_update);
  break;

 case 130:
  EFSYS_PROBE(sram_clear);
  break;

 case 129:
  EFSYS_PROBE(sram_illegal_clear);
  break;

 default:
  KASSERT(B_FALSE, ("Impossible SRAM event"));
  break;
 }

 return (B_FALSE);
}
