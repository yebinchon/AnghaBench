
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t EPCR_ICM ;





 int SET_TRAP (int ,int ) ;
 int SPR_EPCR ;
 int SPR_IVOR0 ;
 int SPR_IVOR1 ;
 int SPR_IVOR10 ;
 int SPR_IVOR11 ;
 int SPR_IVOR12 ;
 int SPR_IVOR13 ;
 int SPR_IVOR14 ;
 int SPR_IVOR15 ;
 int SPR_IVOR2 ;
 int SPR_IVOR3 ;
 int SPR_IVOR32 ;
 int SPR_IVOR33 ;
 int SPR_IVOR34 ;
 int SPR_IVOR35 ;
 int SPR_IVOR4 ;
 int SPR_IVOR5 ;
 int SPR_IVOR6 ;
 int SPR_IVOR7 ;
 int SPR_IVOR8 ;
 int SPR_IVPR ;
 int int_alignment ;
 int int_critical_input ;
 int int_data_storage ;
 int int_data_tlb_error ;
 int int_debug ;
 int int_debug_ed ;
 int int_decrementer ;
 int int_external_input ;
 int int_fixed_interval_timer ;
 int int_fpu ;
 int int_inst_tlb_error ;
 int int_instr_storage ;
 int int_machine_check ;
 int int_performance_counter ;
 int int_program ;
 int int_spe_fpdata ;
 int int_spe_fpround ;
 int int_syscall ;
 int int_vec ;
 int int_vecast ;
 int int_watchdog ;
 int interrupt_vector_base ;
 int mfpvr () ;
 uintptr_t mfspr (int ) ;
 int mtspr (int ,uintptr_t) ;

void
ivor_setup(void)
{

 mtspr(SPR_IVPR, ((uintptr_t)&interrupt_vector_base) & ~0xffffUL);

 SET_TRAP(SPR_IVOR0, int_critical_input);
 SET_TRAP(SPR_IVOR1, int_machine_check);
 SET_TRAP(SPR_IVOR2, int_data_storage);
 SET_TRAP(SPR_IVOR3, int_instr_storage);
 SET_TRAP(SPR_IVOR4, int_external_input);
 SET_TRAP(SPR_IVOR5, int_alignment);
 SET_TRAP(SPR_IVOR6, int_program);
 SET_TRAP(SPR_IVOR8, int_syscall);
 SET_TRAP(SPR_IVOR10, int_decrementer);
 SET_TRAP(SPR_IVOR11, int_fixed_interval_timer);
 SET_TRAP(SPR_IVOR12, int_watchdog);
 SET_TRAP(SPR_IVOR13, int_data_tlb_error);
 SET_TRAP(SPR_IVOR14, int_inst_tlb_error);
 SET_TRAP(SPR_IVOR15, int_debug);



 switch ((mfpvr() >> 16) & 0xffff) {
 case 128:
  SET_TRAP(SPR_IVOR32, int_vec);
  SET_TRAP(SPR_IVOR33, int_vecast);

 case 132:
 case 129:
  SET_TRAP(SPR_IVOR7, int_fpu);
  SET_TRAP(SPR_IVOR15, int_debug_ed);
  break;
 case 131:
 case 130:
  SET_TRAP(SPR_IVOR32, int_vec);




  break;
 }





}
