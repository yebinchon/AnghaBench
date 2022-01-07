
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int IA32_FEATURE_CONTROL_VMX_EN ;
 int MSR_IA32_FEATURE_CONTROL ;
 int MSR_VMX_BASIC ;
 int MSR_VMX_ENTRY_CTLS ;
 int MSR_VMX_EPT_VPID_CAP ;
 int MSR_VMX_EXIT_CTLS ;
 int MSR_VMX_PINBASED_CTLS ;
 int MSR_VMX_PROCBASED_CTLS ;
 int MSR_VMX_PROCBASED_CTLS2 ;
 int MSR_VMX_TRUE_ENTRY_CTLS ;
 int MSR_VMX_TRUE_EXIT_CTLS ;
 int MSR_VMX_TRUE_PINBASED_CTLS ;
 int MSR_VMX_TRUE_PROCBASED_CTLS ;
 int PINBASED_POSTED_INTERRUPT ;
 int PROCBASED2_APIC_REGISTER_VIRTUALIZATION ;
 int PROCBASED2_ENABLE_EPT ;
 int PROCBASED2_ENABLE_VPID ;
 int PROCBASED2_UNRESTRICTED_GUEST ;
 int PROCBASED2_VIRTUALIZE_APIC_ACCESSES ;
 int PROCBASED2_VIRTUALIZE_X2APIC_MODE ;
 int PROCBASED2_VIRTUAL_INTERRUPT_DELIVERY ;
 int PROCBASED_HLT_EXITING ;
 int PROCBASED_MTF ;
 int PROCBASED_PAUSE_EXITING ;
 int PROCBASED_SECONDARY_CONTROLS ;
 int PROCBASED_USE_TPR_SHADOW ;
 int VM_ENTRY_LOAD_PAT ;
 int VM_EXIT_LOAD_PAT ;
 int VM_EXIT_SAVE_PAT ;
 int bootverbose ;
 int printf (char*,...) ;
 int rdmsr (int ) ;
 int vmx_settable (int,int ,int ) ;

__attribute__((used)) static void
print_vmx_info(void)
{
 uint64_t basic, msr;
 uint32_t entry, exit, mask, pin, proc, proc2;
 int comma;

 printf("\n  VT-x: ");
 msr = rdmsr(MSR_IA32_FEATURE_CONTROL);
 if (!(msr & IA32_FEATURE_CONTROL_VMX_EN))
  printf("(disabled in BIOS) ");
 basic = rdmsr(MSR_VMX_BASIC);
 pin = vmx_settable(basic, MSR_VMX_PINBASED_CTLS,
     MSR_VMX_TRUE_PINBASED_CTLS);
 proc = vmx_settable(basic, MSR_VMX_PROCBASED_CTLS,
     MSR_VMX_TRUE_PROCBASED_CTLS);
 if (proc & PROCBASED_SECONDARY_CONTROLS)
  proc2 = vmx_settable(basic, MSR_VMX_PROCBASED_CTLS2,
      MSR_VMX_PROCBASED_CTLS2);
 else
  proc2 = 0;
 exit = vmx_settable(basic, MSR_VMX_EXIT_CTLS, MSR_VMX_TRUE_EXIT_CTLS);
 entry = vmx_settable(basic, MSR_VMX_ENTRY_CTLS, MSR_VMX_TRUE_ENTRY_CTLS);

 if (!bootverbose) {
  comma = 0;
  if (exit & VM_EXIT_SAVE_PAT && exit & VM_EXIT_LOAD_PAT &&
      entry & VM_ENTRY_LOAD_PAT) {
   printf("%sPAT", comma ? "," : "");
   comma = 1;
  }
  if (proc & PROCBASED_HLT_EXITING) {
   printf("%sHLT", comma ? "," : "");
   comma = 1;
  }
  if (proc & PROCBASED_MTF) {
   printf("%sMTF", comma ? "," : "");
   comma = 1;
  }
  if (proc & PROCBASED_PAUSE_EXITING) {
   printf("%sPAUSE", comma ? "," : "");
   comma = 1;
  }
  if (proc2 & PROCBASED2_ENABLE_EPT) {
   printf("%sEPT", comma ? "," : "");
   comma = 1;
  }
  if (proc2 & PROCBASED2_UNRESTRICTED_GUEST) {
   printf("%sUG", comma ? "," : "");
   comma = 1;
  }
  if (proc2 & PROCBASED2_ENABLE_VPID) {
   printf("%sVPID", comma ? "," : "");
   comma = 1;
  }
  if (proc & PROCBASED_USE_TPR_SHADOW &&
      proc2 & PROCBASED2_VIRTUALIZE_APIC_ACCESSES &&
      proc2 & PROCBASED2_VIRTUALIZE_X2APIC_MODE &&
      proc2 & PROCBASED2_APIC_REGISTER_VIRTUALIZATION &&
      proc2 & PROCBASED2_VIRTUAL_INTERRUPT_DELIVERY) {
   printf("%sVID", comma ? "," : "");
   comma = 1;
   if (pin & PINBASED_POSTED_INTERRUPT)
    printf(",PostIntr");
  }
  return;
 }

 mask = basic >> 32;
 printf("Basic Features=0x%b", mask,
 "\020"
 "\02132PA"
 "\022SMM"
 "\027INS/OUTS"
 "\030TRUE"
 );
 printf("\n        Pin-Based Controls=0x%b", pin,
 "\020"
 "\001ExtINT"
 "\004NMI"
 "\006VNMI"
 "\007PreTmr"
 "\010PostIntr"
 );
 printf("\n        Primary Processor Controls=0x%b", proc,
 "\020"
 "\003INTWIN"
 "\004TSCOff"
 "\010HLT"
 "\012INVLPG"
 "\013MWAIT"
 "\014RDPMC"
 "\015RDTSC"
 "\020CR3-LD"
 "\021CR3-ST"
 "\024CR8-LD"
 "\025CR8-ST"
 "\026TPR"
 "\027NMIWIN"
 "\030MOV-DR"
 "\031IO"
 "\032IOmap"
 "\034MTF"
 "\035MSRmap"
 "\036MONITOR"
 "\037PAUSE"
 );
 if (proc & PROCBASED_SECONDARY_CONTROLS)
  printf("\n        Secondary Processor Controls=0x%b", proc2,
  "\020"
  "\001APIC"
  "\002EPT"
  "\003DT"
  "\004RDTSCP"
  "\005x2APIC"
  "\006VPID"
  "\007WBINVD"
  "\010UG"
  "\011APIC-reg"
  "\012VID"
  "\013PAUSE-loop"
  "\014RDRAND"
  "\015INVPCID"
  "\016VMFUNC"
  "\017VMCS"
  "\020EPT#VE"
  "\021XSAVES"
  );
 printf("\n        Exit Controls=0x%b", mask,
 "\020"
 "\003DR"

 "\015PERF"
 "\020AckInt"
 "\023PAT-SV"
 "\024PAT-LD"
 "\025EFER-SV"
 "\026EFER-LD"
 "\027PTMR-SV"
 );
 printf("\n        Entry Controls=0x%b", mask,
 "\020"
 "\003DR"



 "\016PERF"
 "\017PAT"
 "\020EFER"
 );
 if (proc & PROCBASED_SECONDARY_CONTROLS &&
     (proc2 & (PROCBASED2_ENABLE_EPT | PROCBASED2_ENABLE_VPID)) != 0) {
  msr = rdmsr(MSR_VMX_EPT_VPID_CAP);
  mask = msr;
  printf("\n        EPT Features=0x%b", mask,
  "\020"
  "\001XO"
  "\007PW4"
  "\011UC"
  "\017WB"
  "\0212M"
  "\0221G"
  "\025INVEPT"
  "\026AD"
  "\032single"
  "\033all"
  );
  mask = msr >> 32;
  printf("\n        VPID Features=0x%b", mask,
  "\020"
  "\001INVVPID"
  "\011individual"
  "\012single"
  "\013all"

  "\014single-globals"
  );
 }
}
