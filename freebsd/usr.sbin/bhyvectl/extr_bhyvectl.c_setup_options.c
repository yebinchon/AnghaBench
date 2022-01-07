
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; int member_3; int * member_2; int member_1; } ;
typedef int null_opt ;
typedef int intel_opts ;
typedef int common_opts ;
typedef int amd_opts ;


 int ASSERT_LAPIC_LVT ;
 int CAPNAME ;
 int DESC_ACCESS ;
 int DESC_BASE ;
 int DESC_LIMIT ;
 int GET_GPA_PMAP ;
 int NO_ARG ;
 int REQ_ARG ;
 int RTC_NVRAM_OFFSET ;
 int SET_CAP ;
 int SET_CR0 ;
 int SET_CR2 ;
 int SET_CR3 ;
 int SET_CR4 ;
 int SET_CS ;
 int SET_DR0 ;
 int SET_DR1 ;
 int SET_DR2 ;
 int SET_DR3 ;
 int SET_DR6 ;
 int SET_DR7 ;
 int SET_DS ;
 int SET_EFER ;
 int SET_ES ;
 int SET_EXCEPTION_BITMAP ;
 int SET_FS ;
 int SET_GS ;
 int SET_LDTR ;
 int SET_MEM ;
 int SET_RAX ;
 int SET_RFLAGS ;
 int SET_RIP ;
 int SET_RSP ;
 int SET_RTC_NVRAM ;
 int SET_RTC_TIME ;
 int SET_SS ;
 int SET_TR ;
 int SET_VMCS_ENTRY_INTERRUPTION_INFO ;
 int SET_X2APIC_STATE ;
 int UNASSIGN_PPTDEV ;
 int VCPU ;
 int VMNAME ;
 int create ;
 int destroy ;
 int force_poweroff ;
 int force_reset ;
 int get_active_cpus ;
 int get_all ;
 int get_apic_access_addr ;
 int get_avic_table ;
 int get_cpu_topology ;
 int get_cr0 ;
 int get_cr0_mask ;
 int get_cr0_shadow ;
 int get_cr2 ;
 int get_cr3 ;
 int get_cr3_targets ;
 int get_cr4 ;
 int get_cr4_mask ;
 int get_cr4_shadow ;
 int get_cs ;
 int get_desc_cs ;
 int get_desc_ds ;
 int get_desc_es ;
 int get_desc_fs ;
 int get_desc_gdtr ;
 int get_desc_gs ;
 int get_desc_idtr ;
 int get_desc_ldtr ;
 int get_desc_ss ;
 int get_desc_tr ;
 int get_dr0 ;
 int get_dr1 ;
 int get_dr2 ;
 int get_dr3 ;
 int get_dr6 ;
 int get_dr7 ;
 int get_ds ;
 int get_efer ;
 int get_entry_ctls ;
 int get_eptp ;
 int get_es ;
 int get_exception_bitmap ;
 int get_exit_ctls ;
 int get_exit_reason ;
 int get_fs ;
 int get_gs ;
 int get_guest_pat ;
 int get_guest_sysenter ;
 int get_host_cr0 ;
 int get_host_cr3 ;
 int get_host_cr4 ;
 int get_host_pat ;
 int get_host_rip ;
 int get_host_rsp ;
 int get_inst_err ;
 int get_intinfo ;
 int get_io_bitmap ;
 int get_ldtr ;
 int get_memmap ;
 int get_memseg ;
 int get_msr_bitmap ;
 int get_msr_bitmap_address ;
 int get_pinbased_ctls ;
 int get_procbased_ctls ;
 int get_procbased_ctls2 ;
 int get_r10 ;
 int get_r11 ;
 int get_r12 ;
 int get_r13 ;
 int get_r14 ;
 int get_r15 ;
 int get_r8 ;
 int get_r9 ;
 int get_rax ;
 int get_rbp ;
 int get_rbx ;
 int get_rcx ;
 int get_rdi ;
 int get_rdx ;
 int get_rflags ;
 int get_rip ;
 int get_rsi ;
 int get_rsp ;
 int get_rtc_nvram ;
 int get_rtc_time ;
 int get_ss ;
 int get_stats ;
 int get_suspended_cpus ;
 int get_tpr_threshold ;
 int get_tr ;
 int get_tsc_offset ;
 int get_virtual_apic_addr ;
 int get_vmcb_exit_details ;
 int get_vmcb_intercept ;
 int get_vmcb_tlb_ctrl ;
 int get_vmcb_virq ;
 int get_vmcs_entry_interruption_info ;
 int get_vmcs_exit_inst_length ;
 int get_vmcs_exit_interruption_error ;
 int get_vmcs_exit_interruption_info ;
 int get_vmcs_exit_qualification ;
 int get_vmcs_gla ;
 int get_vmcs_gpa ;
 int get_vmcs_interruptibility ;
 int get_vmcs_link ;
 int get_vpid_asid ;
 int get_x2apic_state ;
 int getcap ;
 int inject_nmi ;
 struct option* malloc (int) ;
 int memcpy (char*,struct option const*,int) ;
 int run ;
 int set_desc_cs ;
 int set_desc_ds ;
 int set_desc_es ;
 int set_desc_fs ;
 int set_desc_gdtr ;
 int set_desc_gs ;
 int set_desc_idtr ;
 int set_desc_ldtr ;
 int set_desc_ss ;
 int set_desc_tr ;

__attribute__((used)) static struct option *
setup_options(bool cpu_intel)
{
 const struct option common_opts[] = {
  { "vm", REQ_ARG, 0, VMNAME },
  { "cpu", REQ_ARG, 0, VCPU },
  { "set-mem", REQ_ARG, 0, SET_MEM },
  { "set-efer", REQ_ARG, 0, SET_EFER },
  { "set-cr0", REQ_ARG, 0, SET_CR0 },
  { "set-cr2", REQ_ARG, 0, SET_CR2 },
  { "set-cr3", REQ_ARG, 0, SET_CR3 },
  { "set-cr4", REQ_ARG, 0, SET_CR4 },
  { "set-dr0", REQ_ARG, 0, SET_DR0 },
  { "set-dr1", REQ_ARG, 0, SET_DR1 },
  { "set-dr2", REQ_ARG, 0, SET_DR2 },
  { "set-dr3", REQ_ARG, 0, SET_DR3 },
  { "set-dr6", REQ_ARG, 0, SET_DR6 },
  { "set-dr7", REQ_ARG, 0, SET_DR7 },
  { "set-rsp", REQ_ARG, 0, SET_RSP },
  { "set-rip", REQ_ARG, 0, SET_RIP },
  { "set-rax", REQ_ARG, 0, SET_RAX },
  { "set-rflags", REQ_ARG, 0, SET_RFLAGS },
  { "desc-base", REQ_ARG, 0, DESC_BASE },
  { "desc-limit", REQ_ARG, 0, DESC_LIMIT },
  { "desc-access",REQ_ARG, 0, DESC_ACCESS },
  { "set-cs", REQ_ARG, 0, SET_CS },
  { "set-ds", REQ_ARG, 0, SET_DS },
  { "set-es", REQ_ARG, 0, SET_ES },
  { "set-fs", REQ_ARG, 0, SET_FS },
  { "set-gs", REQ_ARG, 0, SET_GS },
  { "set-ss", REQ_ARG, 0, SET_SS },
  { "set-tr", REQ_ARG, 0, SET_TR },
  { "set-ldtr", REQ_ARG, 0, SET_LDTR },
  { "set-x2apic-state",REQ_ARG, 0, SET_X2APIC_STATE },
  { "set-exception-bitmap",
    REQ_ARG, 0, SET_EXCEPTION_BITMAP },
  { "capname", REQ_ARG, 0, CAPNAME },
  { "unassign-pptdev", REQ_ARG, 0, UNASSIGN_PPTDEV },
  { "setcap", REQ_ARG, 0, SET_CAP },
  { "get-gpa-pmap", REQ_ARG, 0, GET_GPA_PMAP },
  { "assert-lapic-lvt", REQ_ARG, 0, ASSERT_LAPIC_LVT },
  { "get-rtc-time", NO_ARG, &get_rtc_time, 1 },
  { "set-rtc-time", REQ_ARG, 0, SET_RTC_TIME },
  { "rtc-nvram-offset", REQ_ARG, 0, RTC_NVRAM_OFFSET },
  { "get-rtc-nvram", NO_ARG, &get_rtc_nvram, 1 },
  { "set-rtc-nvram", REQ_ARG, 0, SET_RTC_NVRAM },
  { "getcap", NO_ARG, &getcap, 1 },
  { "get-stats", NO_ARG, &get_stats, 1 },
  { "get-desc-ds",NO_ARG, &get_desc_ds, 1 },
  { "set-desc-ds",NO_ARG, &set_desc_ds, 1 },
  { "get-desc-es",NO_ARG, &get_desc_es, 1 },
  { "set-desc-es",NO_ARG, &set_desc_es, 1 },
  { "get-desc-ss",NO_ARG, &get_desc_ss, 1 },
  { "set-desc-ss",NO_ARG, &set_desc_ss, 1 },
  { "get-desc-cs",NO_ARG, &get_desc_cs, 1 },
  { "set-desc-cs",NO_ARG, &set_desc_cs, 1 },
  { "get-desc-fs",NO_ARG, &get_desc_fs, 1 },
  { "set-desc-fs",NO_ARG, &set_desc_fs, 1 },
  { "get-desc-gs",NO_ARG, &get_desc_gs, 1 },
  { "set-desc-gs",NO_ARG, &set_desc_gs, 1 },
  { "get-desc-tr",NO_ARG, &get_desc_tr, 1 },
  { "set-desc-tr",NO_ARG, &set_desc_tr, 1 },
  { "set-desc-ldtr", NO_ARG, &set_desc_ldtr, 1 },
  { "get-desc-ldtr", NO_ARG, &get_desc_ldtr, 1 },
  { "set-desc-gdtr", NO_ARG, &set_desc_gdtr, 1 },
  { "get-desc-gdtr", NO_ARG, &get_desc_gdtr, 1 },
  { "set-desc-idtr", NO_ARG, &set_desc_idtr, 1 },
  { "get-desc-idtr", NO_ARG, &get_desc_idtr, 1 },
  { "get-memmap", NO_ARG, &get_memmap, 1 },
  { "get-memseg", NO_ARG, &get_memseg, 1 },
  { "get-efer", NO_ARG, &get_efer, 1 },
  { "get-cr0", NO_ARG, &get_cr0, 1 },
  { "get-cr2", NO_ARG, &get_cr2, 1 },
  { "get-cr3", NO_ARG, &get_cr3, 1 },
  { "get-cr4", NO_ARG, &get_cr4, 1 },
  { "get-dr0", NO_ARG, &get_dr0, 1 },
  { "get-dr1", NO_ARG, &get_dr1, 1 },
  { "get-dr2", NO_ARG, &get_dr2, 1 },
  { "get-dr3", NO_ARG, &get_dr3, 1 },
  { "get-dr6", NO_ARG, &get_dr6, 1 },
  { "get-dr7", NO_ARG, &get_dr7, 1 },
  { "get-rsp", NO_ARG, &get_rsp, 1 },
  { "get-rip", NO_ARG, &get_rip, 1 },
  { "get-rax", NO_ARG, &get_rax, 1 },
  { "get-rbx", NO_ARG, &get_rbx, 1 },
  { "get-rcx", NO_ARG, &get_rcx, 1 },
  { "get-rdx", NO_ARG, &get_rdx, 1 },
  { "get-rsi", NO_ARG, &get_rsi, 1 },
  { "get-rdi", NO_ARG, &get_rdi, 1 },
  { "get-rbp", NO_ARG, &get_rbp, 1 },
  { "get-r8", NO_ARG, &get_r8, 1 },
  { "get-r9", NO_ARG, &get_r9, 1 },
  { "get-r10", NO_ARG, &get_r10, 1 },
  { "get-r11", NO_ARG, &get_r11, 1 },
  { "get-r12", NO_ARG, &get_r12, 1 },
  { "get-r13", NO_ARG, &get_r13, 1 },
  { "get-r14", NO_ARG, &get_r14, 1 },
  { "get-r15", NO_ARG, &get_r15, 1 },
  { "get-rflags", NO_ARG, &get_rflags, 1 },
  { "get-cs", NO_ARG, &get_cs, 1 },
  { "get-ds", NO_ARG, &get_ds, 1 },
  { "get-es", NO_ARG, &get_es, 1 },
  { "get-fs", NO_ARG, &get_fs, 1 },
  { "get-gs", NO_ARG, &get_gs, 1 },
  { "get-ss", NO_ARG, &get_ss, 1 },
  { "get-tr", NO_ARG, &get_tr, 1 },
  { "get-ldtr", NO_ARG, &get_ldtr, 1 },
  { "get-eptp", NO_ARG, &get_eptp, 1 },
  { "get-exception-bitmap",
     NO_ARG, &get_exception_bitmap, 1 },
  { "get-io-bitmap-address",
     NO_ARG, &get_io_bitmap, 1 },
  { "get-tsc-offset", NO_ARG, &get_tsc_offset, 1 },
  { "get-msr-bitmap",
     NO_ARG, &get_msr_bitmap, 1 },
  { "get-msr-bitmap-address",
     NO_ARG, &get_msr_bitmap_address, 1 },
  { "get-guest-pat", NO_ARG, &get_guest_pat, 1 },
  { "get-guest-sysenter",
     NO_ARG, &get_guest_sysenter, 1 },
  { "get-exit-reason",
     NO_ARG, &get_exit_reason, 1 },
  { "get-x2apic-state", NO_ARG, &get_x2apic_state, 1 },
  { "get-all", NO_ARG, &get_all, 1 },
  { "run", NO_ARG, &run, 1 },
  { "create", NO_ARG, &create, 1 },
  { "destroy", NO_ARG, &destroy, 1 },
  { "inject-nmi", NO_ARG, &inject_nmi, 1 },
  { "force-reset", NO_ARG, &force_reset, 1 },
  { "force-poweroff", NO_ARG, &force_poweroff, 1 },
  { "get-active-cpus", NO_ARG, &get_active_cpus, 1 },
  { "get-suspended-cpus", NO_ARG, &get_suspended_cpus, 1 },
  { "get-intinfo", NO_ARG, &get_intinfo, 1 },
  { "get-cpu-topology", NO_ARG, &get_cpu_topology, 1 },
 };

 const struct option intel_opts[] = {
  { "get-vmcs-pinbased-ctls",
    NO_ARG, &get_pinbased_ctls, 1 },
  { "get-vmcs-procbased-ctls",
    NO_ARG, &get_procbased_ctls, 1 },
  { "get-vmcs-procbased-ctls2",
    NO_ARG, &get_procbased_ctls2, 1 },
  { "get-vmcs-guest-linear-address",
    NO_ARG, &get_vmcs_gla, 1 },
  { "get-vmcs-guest-physical-address",
    NO_ARG, &get_vmcs_gpa, 1 },
  { "get-vmcs-entry-interruption-info",
    NO_ARG, &get_vmcs_entry_interruption_info, 1},
  { "get-vmcs-cr0-mask", NO_ARG, &get_cr0_mask, 1 },
  { "get-vmcs-cr0-shadow", NO_ARG,&get_cr0_shadow, 1 },
  { "get-vmcs-cr4-mask", NO_ARG, &get_cr4_mask, 1 },
  { "get-vmcs-cr4-shadow", NO_ARG, &get_cr4_shadow, 1 },
  { "get-vmcs-cr3-targets", NO_ARG, &get_cr3_targets, 1 },
  { "get-vmcs-tpr-threshold",
     NO_ARG, &get_tpr_threshold, 1 },
  { "get-vmcs-vpid", NO_ARG, &get_vpid_asid, 1 },
  { "get-vmcs-exit-ctls", NO_ARG, &get_exit_ctls, 1 },
  { "get-vmcs-entry-ctls",
     NO_ARG, &get_entry_ctls, 1 },
  { "get-vmcs-instruction-error",
     NO_ARG, &get_inst_err, 1 },
  { "get-vmcs-host-pat", NO_ARG, &get_host_pat, 1 },
  { "get-vmcs-host-cr0",
     NO_ARG, &get_host_cr0, 1 },
  { "set-vmcs-entry-interruption-info",
    REQ_ARG, 0, SET_VMCS_ENTRY_INTERRUPTION_INFO },
  { "get-vmcs-exit-qualification",
    NO_ARG, &get_vmcs_exit_qualification, 1 },
  { "get-vmcs-exit-inst-length",
    NO_ARG, &get_vmcs_exit_inst_length, 1 },
  { "get-vmcs-interruptibility",
    NO_ARG, &get_vmcs_interruptibility, 1 },
  { "get-vmcs-exit-interruption-error",
    NO_ARG, &get_vmcs_exit_interruption_error, 1 },
  { "get-vmcs-exit-interruption-info",
    NO_ARG, &get_vmcs_exit_interruption_info, 1 },
  { "get-vmcs-link", NO_ARG, &get_vmcs_link, 1 },
  { "get-vmcs-host-cr3",
     NO_ARG, &get_host_cr3, 1 },
  { "get-vmcs-host-cr4",
    NO_ARG, &get_host_cr4, 1 },
  { "get-vmcs-host-rip",
    NO_ARG, &get_host_rip, 1 },
  { "get-vmcs-host-rsp",
    NO_ARG, &get_host_rsp, 1 },
  { "get-apic-access-address",
    NO_ARG, &get_apic_access_addr, 1},
  { "get-virtual-apic-address",
    NO_ARG, &get_virtual_apic_addr, 1}
 };

 const struct option amd_opts[] = {
  { "get-vmcb-intercepts",
    NO_ARG, &get_vmcb_intercept, 1 },
  { "get-vmcb-asid",
    NO_ARG, &get_vpid_asid, 1 },
  { "get-vmcb-exit-details",
    NO_ARG, &get_vmcb_exit_details, 1 },
  { "get-vmcb-tlb-ctrl",
    NO_ARG, &get_vmcb_tlb_ctrl, 1 },
  { "get-vmcb-virq",
    NO_ARG, &get_vmcb_virq, 1 },
  { "get-avic-apic-bar",
    NO_ARG, &get_apic_access_addr, 1 },
  { "get-avic-backing-page",
    NO_ARG, &get_virtual_apic_addr, 1 },
  { "get-avic-table",
    NO_ARG, &get_avic_table, 1 }
 };

 const struct option null_opt = {
  ((void*)0), 0, ((void*)0), 0
 };

 struct option *all_opts;
 char *cp;
 int optlen;

 optlen = sizeof(common_opts);

 if (cpu_intel)
  optlen += sizeof(intel_opts);
 else
  optlen += sizeof(amd_opts);

 optlen += sizeof(null_opt);

 all_opts = malloc(optlen);

 cp = (char *)all_opts;
 memcpy(cp, common_opts, sizeof(common_opts));
 cp += sizeof(common_opts);

 if (cpu_intel) {
  memcpy(cp, intel_opts, sizeof(intel_opts));
  cp += sizeof(intel_opts);
 } else {
  memcpy(cp, amd_opts, sizeof(amd_opts));
  cp += sizeof(amd_opts);
 }

 memcpy(cp, &null_opt, sizeof(null_opt));
 cp += sizeof(null_opt);

 return (all_opts);
}
