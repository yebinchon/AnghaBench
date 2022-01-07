; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_setup_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_setup_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@REQ_ARG = common dso_local global i32 0, align 4
@VMNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@VCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"set-mem\00", align 1
@SET_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"set-efer\00", align 1
@SET_EFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"set-cr0\00", align 1
@SET_CR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"set-cr2\00", align 1
@SET_CR2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"set-cr3\00", align 1
@SET_CR3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"set-cr4\00", align 1
@SET_CR4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"set-dr0\00", align 1
@SET_DR0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"set-dr1\00", align 1
@SET_DR1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"set-dr2\00", align 1
@SET_DR2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"set-dr3\00", align 1
@SET_DR3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"set-dr6\00", align 1
@SET_DR6 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"set-dr7\00", align 1
@SET_DR7 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"set-rsp\00", align 1
@SET_RSP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"set-rip\00", align 1
@SET_RIP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"set-rax\00", align 1
@SET_RAX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"set-rflags\00", align 1
@SET_RFLAGS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"desc-base\00", align 1
@DESC_BASE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"desc-limit\00", align 1
@DESC_LIMIT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"desc-access\00", align 1
@DESC_ACCESS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"set-cs\00", align 1
@SET_CS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"set-ds\00", align 1
@SET_DS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"set-es\00", align 1
@SET_ES = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"set-fs\00", align 1
@SET_FS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"set-gs\00", align 1
@SET_GS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"set-ss\00", align 1
@SET_SS = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"set-tr\00", align 1
@SET_TR = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"set-ldtr\00", align 1
@SET_LDTR = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [17 x i8] c"set-x2apic-state\00", align 1
@SET_X2APIC_STATE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [21 x i8] c"set-exception-bitmap\00", align 1
@SET_EXCEPTION_BITMAP = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"capname\00", align 1
@CAPNAME = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"unassign-pptdev\00", align 1
@UNASSIGN_PPTDEV = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"setcap\00", align 1
@SET_CAP = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"get-gpa-pmap\00", align 1
@GET_GPA_PMAP = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"assert-lapic-lvt\00", align 1
@ASSERT_LAPIC_LVT = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"get-rtc-time\00", align 1
@NO_ARG = common dso_local global i32 0, align 4
@get_rtc_time = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"set-rtc-time\00", align 1
@SET_RTC_TIME = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"rtc-nvram-offset\00", align 1
@RTC_NVRAM_OFFSET = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"get-rtc-nvram\00", align 1
@get_rtc_nvram = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [14 x i8] c"set-rtc-nvram\00", align 1
@SET_RTC_NVRAM = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"getcap\00", align 1
@getcap = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"get-stats\00", align 1
@get_stats = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"get-desc-ds\00", align 1
@get_desc_ds = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"set-desc-ds\00", align 1
@set_desc_ds = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [12 x i8] c"get-desc-es\00", align 1
@get_desc_es = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"set-desc-es\00", align 1
@set_desc_es = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"get-desc-ss\00", align 1
@get_desc_ss = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [12 x i8] c"set-desc-ss\00", align 1
@set_desc_ss = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [12 x i8] c"get-desc-cs\00", align 1
@get_desc_cs = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [12 x i8] c"set-desc-cs\00", align 1
@set_desc_cs = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"get-desc-fs\00", align 1
@get_desc_fs = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [12 x i8] c"set-desc-fs\00", align 1
@set_desc_fs = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [12 x i8] c"get-desc-gs\00", align 1
@get_desc_gs = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [12 x i8] c"set-desc-gs\00", align 1
@set_desc_gs = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [12 x i8] c"get-desc-tr\00", align 1
@get_desc_tr = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [12 x i8] c"set-desc-tr\00", align 1
@set_desc_tr = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"set-desc-ldtr\00", align 1
@set_desc_ldtr = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [14 x i8] c"get-desc-ldtr\00", align 1
@get_desc_ldtr = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"set-desc-gdtr\00", align 1
@set_desc_gdtr = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [14 x i8] c"get-desc-gdtr\00", align 1
@get_desc_gdtr = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [14 x i8] c"set-desc-idtr\00", align 1
@set_desc_idtr = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [14 x i8] c"get-desc-idtr\00", align 1
@get_desc_idtr = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [11 x i8] c"get-memmap\00", align 1
@get_memmap = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [11 x i8] c"get-memseg\00", align 1
@get_memseg = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"get-efer\00", align 1
@get_efer = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [8 x i8] c"get-cr0\00", align 1
@get_cr0 = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [8 x i8] c"get-cr2\00", align 1
@get_cr2 = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [8 x i8] c"get-cr3\00", align 1
@get_cr3 = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [8 x i8] c"get-cr4\00", align 1
@get_cr4 = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [8 x i8] c"get-dr0\00", align 1
@get_dr0 = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [8 x i8] c"get-dr1\00", align 1
@get_dr1 = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"get-dr2\00", align 1
@get_dr2 = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [8 x i8] c"get-dr3\00", align 1
@get_dr3 = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [8 x i8] c"get-dr6\00", align 1
@get_dr6 = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [8 x i8] c"get-dr7\00", align 1
@get_dr7 = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"get-rsp\00", align 1
@get_rsp = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [8 x i8] c"get-rip\00", align 1
@get_rip = common dso_local global i32 0, align 4
@.str.78 = private unnamed_addr constant [8 x i8] c"get-rax\00", align 1
@get_rax = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"get-rbx\00", align 1
@get_rbx = common dso_local global i32 0, align 4
@.str.80 = private unnamed_addr constant [8 x i8] c"get-rcx\00", align 1
@get_rcx = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [8 x i8] c"get-rdx\00", align 1
@get_rdx = common dso_local global i32 0, align 4
@.str.82 = private unnamed_addr constant [8 x i8] c"get-rsi\00", align 1
@get_rsi = common dso_local global i32 0, align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"get-rdi\00", align 1
@get_rdi = common dso_local global i32 0, align 4
@.str.84 = private unnamed_addr constant [8 x i8] c"get-rbp\00", align 1
@get_rbp = common dso_local global i32 0, align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"get-r8\00", align 1
@get_r8 = common dso_local global i32 0, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"get-r9\00", align 1
@get_r9 = common dso_local global i32 0, align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"get-r10\00", align 1
@get_r10 = common dso_local global i32 0, align 4
@.str.88 = private unnamed_addr constant [8 x i8] c"get-r11\00", align 1
@get_r11 = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [8 x i8] c"get-r12\00", align 1
@get_r12 = common dso_local global i32 0, align 4
@.str.90 = private unnamed_addr constant [8 x i8] c"get-r13\00", align 1
@get_r13 = common dso_local global i32 0, align 4
@.str.91 = private unnamed_addr constant [8 x i8] c"get-r14\00", align 1
@get_r14 = common dso_local global i32 0, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"get-r15\00", align 1
@get_r15 = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [11 x i8] c"get-rflags\00", align 1
@get_rflags = common dso_local global i32 0, align 4
@.str.94 = private unnamed_addr constant [7 x i8] c"get-cs\00", align 1
@get_cs = common dso_local global i32 0, align 4
@.str.95 = private unnamed_addr constant [7 x i8] c"get-ds\00", align 1
@get_ds = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [7 x i8] c"get-es\00", align 1
@get_es = common dso_local global i32 0, align 4
@.str.97 = private unnamed_addr constant [7 x i8] c"get-fs\00", align 1
@get_fs = common dso_local global i32 0, align 4
@.str.98 = private unnamed_addr constant [7 x i8] c"get-gs\00", align 1
@get_gs = common dso_local global i32 0, align 4
@.str.99 = private unnamed_addr constant [7 x i8] c"get-ss\00", align 1
@get_ss = common dso_local global i32 0, align 4
@.str.100 = private unnamed_addr constant [7 x i8] c"get-tr\00", align 1
@get_tr = common dso_local global i32 0, align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"get-ldtr\00", align 1
@get_ldtr = common dso_local global i32 0, align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"get-eptp\00", align 1
@get_eptp = common dso_local global i32 0, align 4
@.str.103 = private unnamed_addr constant [21 x i8] c"get-exception-bitmap\00", align 1
@get_exception_bitmap = common dso_local global i32 0, align 4
@.str.104 = private unnamed_addr constant [22 x i8] c"get-io-bitmap-address\00", align 1
@get_io_bitmap = common dso_local global i32 0, align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"get-tsc-offset\00", align 1
@get_tsc_offset = common dso_local global i32 0, align 4
@.str.106 = private unnamed_addr constant [15 x i8] c"get-msr-bitmap\00", align 1
@get_msr_bitmap = common dso_local global i32 0, align 4
@.str.107 = private unnamed_addr constant [23 x i8] c"get-msr-bitmap-address\00", align 1
@get_msr_bitmap_address = common dso_local global i32 0, align 4
@.str.108 = private unnamed_addr constant [14 x i8] c"get-guest-pat\00", align 1
@get_guest_pat = common dso_local global i32 0, align 4
@.str.109 = private unnamed_addr constant [19 x i8] c"get-guest-sysenter\00", align 1
@get_guest_sysenter = common dso_local global i32 0, align 4
@.str.110 = private unnamed_addr constant [16 x i8] c"get-exit-reason\00", align 1
@get_exit_reason = common dso_local global i32 0, align 4
@.str.111 = private unnamed_addr constant [17 x i8] c"get-x2apic-state\00", align 1
@get_x2apic_state = common dso_local global i32 0, align 4
@.str.112 = private unnamed_addr constant [8 x i8] c"get-all\00", align 1
@get_all = common dso_local global i32 0, align 4
@.str.113 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@run = common dso_local global i32 0, align 4
@.str.114 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@create = common dso_local global i32 0, align 4
@.str.115 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@destroy = common dso_local global i32 0, align 4
@.str.116 = private unnamed_addr constant [11 x i8] c"inject-nmi\00", align 1
@inject_nmi = common dso_local global i32 0, align 4
@.str.117 = private unnamed_addr constant [12 x i8] c"force-reset\00", align 1
@force_reset = common dso_local global i32 0, align 4
@.str.118 = private unnamed_addr constant [15 x i8] c"force-poweroff\00", align 1
@force_poweroff = common dso_local global i32 0, align 4
@.str.119 = private unnamed_addr constant [16 x i8] c"get-active-cpus\00", align 1
@get_active_cpus = common dso_local global i32 0, align 4
@.str.120 = private unnamed_addr constant [19 x i8] c"get-suspended-cpus\00", align 1
@get_suspended_cpus = common dso_local global i32 0, align 4
@.str.121 = private unnamed_addr constant [12 x i8] c"get-intinfo\00", align 1
@get_intinfo = common dso_local global i32 0, align 4
@.str.122 = private unnamed_addr constant [17 x i8] c"get-cpu-topology\00", align 1
@get_cpu_topology = common dso_local global i32 0, align 4
@.str.123 = private unnamed_addr constant [23 x i8] c"get-vmcs-pinbased-ctls\00", align 1
@get_pinbased_ctls = common dso_local global i32 0, align 4
@.str.124 = private unnamed_addr constant [24 x i8] c"get-vmcs-procbased-ctls\00", align 1
@get_procbased_ctls = common dso_local global i32 0, align 4
@.str.125 = private unnamed_addr constant [25 x i8] c"get-vmcs-procbased-ctls2\00", align 1
@get_procbased_ctls2 = common dso_local global i32 0, align 4
@.str.126 = private unnamed_addr constant [30 x i8] c"get-vmcs-guest-linear-address\00", align 1
@get_vmcs_gla = common dso_local global i32 0, align 4
@.str.127 = private unnamed_addr constant [32 x i8] c"get-vmcs-guest-physical-address\00", align 1
@get_vmcs_gpa = common dso_local global i32 0, align 4
@.str.128 = private unnamed_addr constant [33 x i8] c"get-vmcs-entry-interruption-info\00", align 1
@get_vmcs_entry_interruption_info = common dso_local global i32 0, align 4
@.str.129 = private unnamed_addr constant [18 x i8] c"get-vmcs-cr0-mask\00", align 1
@get_cr0_mask = common dso_local global i32 0, align 4
@.str.130 = private unnamed_addr constant [20 x i8] c"get-vmcs-cr0-shadow\00", align 1
@get_cr0_shadow = common dso_local global i32 0, align 4
@.str.131 = private unnamed_addr constant [18 x i8] c"get-vmcs-cr4-mask\00", align 1
@get_cr4_mask = common dso_local global i32 0, align 4
@.str.132 = private unnamed_addr constant [20 x i8] c"get-vmcs-cr4-shadow\00", align 1
@get_cr4_shadow = common dso_local global i32 0, align 4
@.str.133 = private unnamed_addr constant [21 x i8] c"get-vmcs-cr3-targets\00", align 1
@get_cr3_targets = common dso_local global i32 0, align 4
@.str.134 = private unnamed_addr constant [23 x i8] c"get-vmcs-tpr-threshold\00", align 1
@get_tpr_threshold = common dso_local global i32 0, align 4
@.str.135 = private unnamed_addr constant [14 x i8] c"get-vmcs-vpid\00", align 1
@get_vpid_asid = common dso_local global i32 0, align 4
@.str.136 = private unnamed_addr constant [19 x i8] c"get-vmcs-exit-ctls\00", align 1
@get_exit_ctls = common dso_local global i32 0, align 4
@.str.137 = private unnamed_addr constant [20 x i8] c"get-vmcs-entry-ctls\00", align 1
@get_entry_ctls = common dso_local global i32 0, align 4
@.str.138 = private unnamed_addr constant [27 x i8] c"get-vmcs-instruction-error\00", align 1
@get_inst_err = common dso_local global i32 0, align 4
@.str.139 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-pat\00", align 1
@get_host_pat = common dso_local global i32 0, align 4
@.str.140 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-cr0\00", align 1
@get_host_cr0 = common dso_local global i32 0, align 4
@.str.141 = private unnamed_addr constant [33 x i8] c"set-vmcs-entry-interruption-info\00", align 1
@SET_VMCS_ENTRY_INTERRUPTION_INFO = common dso_local global i32 0, align 4
@.str.142 = private unnamed_addr constant [28 x i8] c"get-vmcs-exit-qualification\00", align 1
@get_vmcs_exit_qualification = common dso_local global i32 0, align 4
@.str.143 = private unnamed_addr constant [26 x i8] c"get-vmcs-exit-inst-length\00", align 1
@get_vmcs_exit_inst_length = common dso_local global i32 0, align 4
@.str.144 = private unnamed_addr constant [26 x i8] c"get-vmcs-interruptibility\00", align 1
@get_vmcs_interruptibility = common dso_local global i32 0, align 4
@.str.145 = private unnamed_addr constant [33 x i8] c"get-vmcs-exit-interruption-error\00", align 1
@get_vmcs_exit_interruption_error = common dso_local global i32 0, align 4
@.str.146 = private unnamed_addr constant [32 x i8] c"get-vmcs-exit-interruption-info\00", align 1
@get_vmcs_exit_interruption_info = common dso_local global i32 0, align 4
@.str.147 = private unnamed_addr constant [14 x i8] c"get-vmcs-link\00", align 1
@get_vmcs_link = common dso_local global i32 0, align 4
@.str.148 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-cr3\00", align 1
@get_host_cr3 = common dso_local global i32 0, align 4
@.str.149 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-cr4\00", align 1
@get_host_cr4 = common dso_local global i32 0, align 4
@.str.150 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-rip\00", align 1
@get_host_rip = common dso_local global i32 0, align 4
@.str.151 = private unnamed_addr constant [18 x i8] c"get-vmcs-host-rsp\00", align 1
@get_host_rsp = common dso_local global i32 0, align 4
@.str.152 = private unnamed_addr constant [24 x i8] c"get-apic-access-address\00", align 1
@get_apic_access_addr = common dso_local global i32 0, align 4
@.str.153 = private unnamed_addr constant [25 x i8] c"get-virtual-apic-address\00", align 1
@get_virtual_apic_addr = common dso_local global i32 0, align 4
@.str.154 = private unnamed_addr constant [20 x i8] c"get-vmcb-intercepts\00", align 1
@get_vmcb_intercept = common dso_local global i32 0, align 4
@.str.155 = private unnamed_addr constant [14 x i8] c"get-vmcb-asid\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"get-vmcb-exit-details\00", align 1
@get_vmcb_exit_details = common dso_local global i32 0, align 4
@.str.157 = private unnamed_addr constant [18 x i8] c"get-vmcb-tlb-ctrl\00", align 1
@get_vmcb_tlb_ctrl = common dso_local global i32 0, align 4
@.str.158 = private unnamed_addr constant [14 x i8] c"get-vmcb-virq\00", align 1
@get_vmcb_virq = common dso_local global i32 0, align 4
@.str.159 = private unnamed_addr constant [18 x i8] c"get-avic-apic-bar\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"get-avic-backing-page\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"get-avic-table\00", align 1
@get_avic_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (i32)* @setup_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @setup_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [123 x %struct.option], align 16
  %4 = alloca [31 x %struct.option], align 16
  %5 = alloca [8 x %struct.option], align 16
  %6 = alloca %struct.option, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = getelementptr inbounds [123 x %struct.option], [123 x %struct.option]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 1
  %13 = load i32, i32* @REQ_ARG, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 2
  store i32* null, i32** %14, align 16
  %15 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 3
  %16 = load i32, i32* @VMNAME, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.option, %struct.option* %10, i64 1
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  %20 = load i32, i32* @REQ_ARG, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 2
  store i32* null, i32** %21, align 16
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 3
  %23 = load i32, i32* @VCPU, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %25 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 1
  %27 = load i32, i32* @REQ_ARG, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 2
  store i32* null, i32** %28, align 16
  %29 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 3
  %30 = load i32, i32* @SET_MEM, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 1
  %34 = load i32, i32* @REQ_ARG, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 2
  store i32* null, i32** %35, align 16
  %36 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 3
  %37 = load i32, i32* @SET_EFER, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %39 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 1
  %41 = load i32, i32* @REQ_ARG, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 2
  store i32* null, i32** %42, align 16
  %43 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 3
  %44 = load i32, i32* @SET_CR0, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 1
  %48 = load i32, i32* @REQ_ARG, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 2
  store i32* null, i32** %49, align 16
  %50 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 3
  %51 = load i32, i32* @SET_CR2, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %45, i64 1
  %53 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 1
  %55 = load i32, i32* @REQ_ARG, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 2
  store i32* null, i32** %56, align 16
  %57 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 3
  %58 = load i32, i32* @SET_CR3, align 4
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds %struct.option, %struct.option* %52, i64 1
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %60, align 16
  %61 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 1
  %62 = load i32, i32* @REQ_ARG, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 2
  store i32* null, i32** %63, align 16
  %64 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 3
  %65 = load i32, i32* @SET_CR4, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  %67 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %67, align 16
  %68 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 1
  %69 = load i32, i32* @REQ_ARG, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 2
  store i32* null, i32** %70, align 16
  %71 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 3
  %72 = load i32, i32* @SET_DR0, align 4
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %66, i64 1
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 1
  %76 = load i32, i32* @REQ_ARG, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 2
  store i32* null, i32** %77, align 16
  %78 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 3
  %79 = load i32, i32* @SET_DR1, align 4
  store i32 %79, i32* %78, align 8
  %80 = getelementptr inbounds %struct.option, %struct.option* %73, i64 1
  %81 = getelementptr inbounds %struct.option, %struct.option* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %81, align 16
  %82 = getelementptr inbounds %struct.option, %struct.option* %80, i32 0, i32 1
  %83 = load i32, i32* @REQ_ARG, align 4
  store i32 %83, i32* %82, align 8
  %84 = getelementptr inbounds %struct.option, %struct.option* %80, i32 0, i32 2
  store i32* null, i32** %84, align 16
  %85 = getelementptr inbounds %struct.option, %struct.option* %80, i32 0, i32 3
  %86 = load i32, i32* @SET_DR2, align 4
  store i32 %86, i32* %85, align 8
  %87 = getelementptr inbounds %struct.option, %struct.option* %80, i64 1
  %88 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %88, align 16
  %89 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 1
  %90 = load i32, i32* @REQ_ARG, align 4
  store i32 %90, i32* %89, align 8
  %91 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 2
  store i32* null, i32** %91, align 16
  %92 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 3
  %93 = load i32, i32* @SET_DR3, align 4
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.option, %struct.option* %87, i64 1
  %95 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %95, align 16
  %96 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 1
  %97 = load i32, i32* @REQ_ARG, align 4
  store i32 %97, i32* %96, align 8
  %98 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 2
  store i32* null, i32** %98, align 16
  %99 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 3
  %100 = load i32, i32* @SET_DR6, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.option, %struct.option* %94, i64 1
  %102 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %102, align 16
  %103 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 1
  %104 = load i32, i32* @REQ_ARG, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 2
  store i32* null, i32** %105, align 16
  %106 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 3
  %107 = load i32, i32* @SET_DR7, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.option, %struct.option* %101, i64 1
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %109, align 16
  %110 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 1
  %111 = load i32, i32* @REQ_ARG, align 4
  store i32 %111, i32* %110, align 8
  %112 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 2
  store i32* null, i32** %112, align 16
  %113 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 3
  %114 = load i32, i32* @SET_RSP, align 4
  store i32 %114, i32* %113, align 8
  %115 = getelementptr inbounds %struct.option, %struct.option* %108, i64 1
  %116 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %116, align 16
  %117 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 1
  %118 = load i32, i32* @REQ_ARG, align 4
  store i32 %118, i32* %117, align 8
  %119 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 2
  store i32* null, i32** %119, align 16
  %120 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 3
  %121 = load i32, i32* @SET_RIP, align 4
  store i32 %121, i32* %120, align 8
  %122 = getelementptr inbounds %struct.option, %struct.option* %115, i64 1
  %123 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %123, align 16
  %124 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 1
  %125 = load i32, i32* @REQ_ARG, align 4
  store i32 %125, i32* %124, align 8
  %126 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 2
  store i32* null, i32** %126, align 16
  %127 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 3
  %128 = load i32, i32* @SET_RAX, align 4
  store i32 %128, i32* %127, align 8
  %129 = getelementptr inbounds %struct.option, %struct.option* %122, i64 1
  %130 = getelementptr inbounds %struct.option, %struct.option* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %130, align 16
  %131 = getelementptr inbounds %struct.option, %struct.option* %129, i32 0, i32 1
  %132 = load i32, i32* @REQ_ARG, align 4
  store i32 %132, i32* %131, align 8
  %133 = getelementptr inbounds %struct.option, %struct.option* %129, i32 0, i32 2
  store i32* null, i32** %133, align 16
  %134 = getelementptr inbounds %struct.option, %struct.option* %129, i32 0, i32 3
  %135 = load i32, i32* @SET_RFLAGS, align 4
  store i32 %135, i32* %134, align 8
  %136 = getelementptr inbounds %struct.option, %struct.option* %129, i64 1
  %137 = getelementptr inbounds %struct.option, %struct.option* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %137, align 16
  %138 = getelementptr inbounds %struct.option, %struct.option* %136, i32 0, i32 1
  %139 = load i32, i32* @REQ_ARG, align 4
  store i32 %139, i32* %138, align 8
  %140 = getelementptr inbounds %struct.option, %struct.option* %136, i32 0, i32 2
  store i32* null, i32** %140, align 16
  %141 = getelementptr inbounds %struct.option, %struct.option* %136, i32 0, i32 3
  %142 = load i32, i32* @DESC_BASE, align 4
  store i32 %142, i32* %141, align 8
  %143 = getelementptr inbounds %struct.option, %struct.option* %136, i64 1
  %144 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %144, align 16
  %145 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 1
  %146 = load i32, i32* @REQ_ARG, align 4
  store i32 %146, i32* %145, align 8
  %147 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 2
  store i32* null, i32** %147, align 16
  %148 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 3
  %149 = load i32, i32* @DESC_LIMIT, align 4
  store i32 %149, i32* %148, align 8
  %150 = getelementptr inbounds %struct.option, %struct.option* %143, i64 1
  %151 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %151, align 16
  %152 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 1
  %153 = load i32, i32* @REQ_ARG, align 4
  store i32 %153, i32* %152, align 8
  %154 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 2
  store i32* null, i32** %154, align 16
  %155 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 3
  %156 = load i32, i32* @DESC_ACCESS, align 4
  store i32 %156, i32* %155, align 8
  %157 = getelementptr inbounds %struct.option, %struct.option* %150, i64 1
  %158 = getelementptr inbounds %struct.option, %struct.option* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %158, align 16
  %159 = getelementptr inbounds %struct.option, %struct.option* %157, i32 0, i32 1
  %160 = load i32, i32* @REQ_ARG, align 4
  store i32 %160, i32* %159, align 8
  %161 = getelementptr inbounds %struct.option, %struct.option* %157, i32 0, i32 2
  store i32* null, i32** %161, align 16
  %162 = getelementptr inbounds %struct.option, %struct.option* %157, i32 0, i32 3
  %163 = load i32, i32* @SET_CS, align 4
  store i32 %163, i32* %162, align 8
  %164 = getelementptr inbounds %struct.option, %struct.option* %157, i64 1
  %165 = getelementptr inbounds %struct.option, %struct.option* %164, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %165, align 16
  %166 = getelementptr inbounds %struct.option, %struct.option* %164, i32 0, i32 1
  %167 = load i32, i32* @REQ_ARG, align 4
  store i32 %167, i32* %166, align 8
  %168 = getelementptr inbounds %struct.option, %struct.option* %164, i32 0, i32 2
  store i32* null, i32** %168, align 16
  %169 = getelementptr inbounds %struct.option, %struct.option* %164, i32 0, i32 3
  %170 = load i32, i32* @SET_DS, align 4
  store i32 %170, i32* %169, align 8
  %171 = getelementptr inbounds %struct.option, %struct.option* %164, i64 1
  %172 = getelementptr inbounds %struct.option, %struct.option* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %172, align 16
  %173 = getelementptr inbounds %struct.option, %struct.option* %171, i32 0, i32 1
  %174 = load i32, i32* @REQ_ARG, align 4
  store i32 %174, i32* %173, align 8
  %175 = getelementptr inbounds %struct.option, %struct.option* %171, i32 0, i32 2
  store i32* null, i32** %175, align 16
  %176 = getelementptr inbounds %struct.option, %struct.option* %171, i32 0, i32 3
  %177 = load i32, i32* @SET_ES, align 4
  store i32 %177, i32* %176, align 8
  %178 = getelementptr inbounds %struct.option, %struct.option* %171, i64 1
  %179 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %179, align 16
  %180 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 1
  %181 = load i32, i32* @REQ_ARG, align 4
  store i32 %181, i32* %180, align 8
  %182 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 2
  store i32* null, i32** %182, align 16
  %183 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 3
  %184 = load i32, i32* @SET_FS, align 4
  store i32 %184, i32* %183, align 8
  %185 = getelementptr inbounds %struct.option, %struct.option* %178, i64 1
  %186 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %186, align 16
  %187 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 1
  %188 = load i32, i32* @REQ_ARG, align 4
  store i32 %188, i32* %187, align 8
  %189 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 2
  store i32* null, i32** %189, align 16
  %190 = getelementptr inbounds %struct.option, %struct.option* %185, i32 0, i32 3
  %191 = load i32, i32* @SET_GS, align 4
  store i32 %191, i32* %190, align 8
  %192 = getelementptr inbounds %struct.option, %struct.option* %185, i64 1
  %193 = getelementptr inbounds %struct.option, %struct.option* %192, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8** %193, align 16
  %194 = getelementptr inbounds %struct.option, %struct.option* %192, i32 0, i32 1
  %195 = load i32, i32* @REQ_ARG, align 4
  store i32 %195, i32* %194, align 8
  %196 = getelementptr inbounds %struct.option, %struct.option* %192, i32 0, i32 2
  store i32* null, i32** %196, align 16
  %197 = getelementptr inbounds %struct.option, %struct.option* %192, i32 0, i32 3
  %198 = load i32, i32* @SET_SS, align 4
  store i32 %198, i32* %197, align 8
  %199 = getelementptr inbounds %struct.option, %struct.option* %192, i64 1
  %200 = getelementptr inbounds %struct.option, %struct.option* %199, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8** %200, align 16
  %201 = getelementptr inbounds %struct.option, %struct.option* %199, i32 0, i32 1
  %202 = load i32, i32* @REQ_ARG, align 4
  store i32 %202, i32* %201, align 8
  %203 = getelementptr inbounds %struct.option, %struct.option* %199, i32 0, i32 2
  store i32* null, i32** %203, align 16
  %204 = getelementptr inbounds %struct.option, %struct.option* %199, i32 0, i32 3
  %205 = load i32, i32* @SET_TR, align 4
  store i32 %205, i32* %204, align 8
  %206 = getelementptr inbounds %struct.option, %struct.option* %199, i64 1
  %207 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %207, align 16
  %208 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 1
  %209 = load i32, i32* @REQ_ARG, align 4
  store i32 %209, i32* %208, align 8
  %210 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 2
  store i32* null, i32** %210, align 16
  %211 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 3
  %212 = load i32, i32* @SET_LDTR, align 4
  store i32 %212, i32* %211, align 8
  %213 = getelementptr inbounds %struct.option, %struct.option* %206, i64 1
  %214 = getelementptr inbounds %struct.option, %struct.option* %213, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8** %214, align 16
  %215 = getelementptr inbounds %struct.option, %struct.option* %213, i32 0, i32 1
  %216 = load i32, i32* @REQ_ARG, align 4
  store i32 %216, i32* %215, align 8
  %217 = getelementptr inbounds %struct.option, %struct.option* %213, i32 0, i32 2
  store i32* null, i32** %217, align 16
  %218 = getelementptr inbounds %struct.option, %struct.option* %213, i32 0, i32 3
  %219 = load i32, i32* @SET_X2APIC_STATE, align 4
  store i32 %219, i32* %218, align 8
  %220 = getelementptr inbounds %struct.option, %struct.option* %213, i64 1
  %221 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8** %221, align 16
  %222 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 1
  %223 = load i32, i32* @REQ_ARG, align 4
  store i32 %223, i32* %222, align 8
  %224 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 2
  store i32* null, i32** %224, align 16
  %225 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 3
  %226 = load i32, i32* @SET_EXCEPTION_BITMAP, align 4
  store i32 %226, i32* %225, align 8
  %227 = getelementptr inbounds %struct.option, %struct.option* %220, i64 1
  %228 = getelementptr inbounds %struct.option, %struct.option* %227, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8** %228, align 16
  %229 = getelementptr inbounds %struct.option, %struct.option* %227, i32 0, i32 1
  %230 = load i32, i32* @REQ_ARG, align 4
  store i32 %230, i32* %229, align 8
  %231 = getelementptr inbounds %struct.option, %struct.option* %227, i32 0, i32 2
  store i32* null, i32** %231, align 16
  %232 = getelementptr inbounds %struct.option, %struct.option* %227, i32 0, i32 3
  %233 = load i32, i32* @CAPNAME, align 4
  store i32 %233, i32* %232, align 8
  %234 = getelementptr inbounds %struct.option, %struct.option* %227, i64 1
  %235 = getelementptr inbounds %struct.option, %struct.option* %234, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8** %235, align 16
  %236 = getelementptr inbounds %struct.option, %struct.option* %234, i32 0, i32 1
  %237 = load i32, i32* @REQ_ARG, align 4
  store i32 %237, i32* %236, align 8
  %238 = getelementptr inbounds %struct.option, %struct.option* %234, i32 0, i32 2
  store i32* null, i32** %238, align 16
  %239 = getelementptr inbounds %struct.option, %struct.option* %234, i32 0, i32 3
  %240 = load i32, i32* @UNASSIGN_PPTDEV, align 4
  store i32 %240, i32* %239, align 8
  %241 = getelementptr inbounds %struct.option, %struct.option* %234, i64 1
  %242 = getelementptr inbounds %struct.option, %struct.option* %241, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %242, align 16
  %243 = getelementptr inbounds %struct.option, %struct.option* %241, i32 0, i32 1
  %244 = load i32, i32* @REQ_ARG, align 4
  store i32 %244, i32* %243, align 8
  %245 = getelementptr inbounds %struct.option, %struct.option* %241, i32 0, i32 2
  store i32* null, i32** %245, align 16
  %246 = getelementptr inbounds %struct.option, %struct.option* %241, i32 0, i32 3
  %247 = load i32, i32* @SET_CAP, align 4
  store i32 %247, i32* %246, align 8
  %248 = getelementptr inbounds %struct.option, %struct.option* %241, i64 1
  %249 = getelementptr inbounds %struct.option, %struct.option* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %249, align 16
  %250 = getelementptr inbounds %struct.option, %struct.option* %248, i32 0, i32 1
  %251 = load i32, i32* @REQ_ARG, align 4
  store i32 %251, i32* %250, align 8
  %252 = getelementptr inbounds %struct.option, %struct.option* %248, i32 0, i32 2
  store i32* null, i32** %252, align 16
  %253 = getelementptr inbounds %struct.option, %struct.option* %248, i32 0, i32 3
  %254 = load i32, i32* @GET_GPA_PMAP, align 4
  store i32 %254, i32* %253, align 8
  %255 = getelementptr inbounds %struct.option, %struct.option* %248, i64 1
  %256 = getelementptr inbounds %struct.option, %struct.option* %255, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8** %256, align 16
  %257 = getelementptr inbounds %struct.option, %struct.option* %255, i32 0, i32 1
  %258 = load i32, i32* @REQ_ARG, align 4
  store i32 %258, i32* %257, align 8
  %259 = getelementptr inbounds %struct.option, %struct.option* %255, i32 0, i32 2
  store i32* null, i32** %259, align 16
  %260 = getelementptr inbounds %struct.option, %struct.option* %255, i32 0, i32 3
  %261 = load i32, i32* @ASSERT_LAPIC_LVT, align 4
  store i32 %261, i32* %260, align 8
  %262 = getelementptr inbounds %struct.option, %struct.option* %255, i64 1
  %263 = getelementptr inbounds %struct.option, %struct.option* %262, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8** %263, align 16
  %264 = getelementptr inbounds %struct.option, %struct.option* %262, i32 0, i32 1
  %265 = load i32, i32* @NO_ARG, align 4
  store i32 %265, i32* %264, align 8
  %266 = getelementptr inbounds %struct.option, %struct.option* %262, i32 0, i32 2
  store i32* @get_rtc_time, i32** %266, align 16
  %267 = getelementptr inbounds %struct.option, %struct.option* %262, i32 0, i32 3
  store i32 1, i32* %267, align 8
  %268 = getelementptr inbounds %struct.option, %struct.option* %262, i64 1
  %269 = getelementptr inbounds %struct.option, %struct.option* %268, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8** %269, align 16
  %270 = getelementptr inbounds %struct.option, %struct.option* %268, i32 0, i32 1
  %271 = load i32, i32* @REQ_ARG, align 4
  store i32 %271, i32* %270, align 8
  %272 = getelementptr inbounds %struct.option, %struct.option* %268, i32 0, i32 2
  store i32* null, i32** %272, align 16
  %273 = getelementptr inbounds %struct.option, %struct.option* %268, i32 0, i32 3
  %274 = load i32, i32* @SET_RTC_TIME, align 4
  store i32 %274, i32* %273, align 8
  %275 = getelementptr inbounds %struct.option, %struct.option* %268, i64 1
  %276 = getelementptr inbounds %struct.option, %struct.option* %275, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** %276, align 16
  %277 = getelementptr inbounds %struct.option, %struct.option* %275, i32 0, i32 1
  %278 = load i32, i32* @REQ_ARG, align 4
  store i32 %278, i32* %277, align 8
  %279 = getelementptr inbounds %struct.option, %struct.option* %275, i32 0, i32 2
  store i32* null, i32** %279, align 16
  %280 = getelementptr inbounds %struct.option, %struct.option* %275, i32 0, i32 3
  %281 = load i32, i32* @RTC_NVRAM_OFFSET, align 4
  store i32 %281, i32* %280, align 8
  %282 = getelementptr inbounds %struct.option, %struct.option* %275, i64 1
  %283 = getelementptr inbounds %struct.option, %struct.option* %282, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8** %283, align 16
  %284 = getelementptr inbounds %struct.option, %struct.option* %282, i32 0, i32 1
  %285 = load i32, i32* @NO_ARG, align 4
  store i32 %285, i32* %284, align 8
  %286 = getelementptr inbounds %struct.option, %struct.option* %282, i32 0, i32 2
  store i32* @get_rtc_nvram, i32** %286, align 16
  %287 = getelementptr inbounds %struct.option, %struct.option* %282, i32 0, i32 3
  store i32 1, i32* %287, align 8
  %288 = getelementptr inbounds %struct.option, %struct.option* %282, i64 1
  %289 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8** %289, align 16
  %290 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 1
  %291 = load i32, i32* @REQ_ARG, align 4
  store i32 %291, i32* %290, align 8
  %292 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 2
  store i32* null, i32** %292, align 16
  %293 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 3
  %294 = load i32, i32* @SET_RTC_NVRAM, align 4
  store i32 %294, i32* %293, align 8
  %295 = getelementptr inbounds %struct.option, %struct.option* %288, i64 1
  %296 = getelementptr inbounds %struct.option, %struct.option* %295, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8** %296, align 16
  %297 = getelementptr inbounds %struct.option, %struct.option* %295, i32 0, i32 1
  %298 = load i32, i32* @NO_ARG, align 4
  store i32 %298, i32* %297, align 8
  %299 = getelementptr inbounds %struct.option, %struct.option* %295, i32 0, i32 2
  store i32* @getcap, i32** %299, align 16
  %300 = getelementptr inbounds %struct.option, %struct.option* %295, i32 0, i32 3
  store i32 1, i32* %300, align 8
  %301 = getelementptr inbounds %struct.option, %struct.option* %295, i64 1
  %302 = getelementptr inbounds %struct.option, %struct.option* %301, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8** %302, align 16
  %303 = getelementptr inbounds %struct.option, %struct.option* %301, i32 0, i32 1
  %304 = load i32, i32* @NO_ARG, align 4
  store i32 %304, i32* %303, align 8
  %305 = getelementptr inbounds %struct.option, %struct.option* %301, i32 0, i32 2
  store i32* @get_stats, i32** %305, align 16
  %306 = getelementptr inbounds %struct.option, %struct.option* %301, i32 0, i32 3
  store i32 1, i32* %306, align 8
  %307 = getelementptr inbounds %struct.option, %struct.option* %301, i64 1
  %308 = getelementptr inbounds %struct.option, %struct.option* %307, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8** %308, align 16
  %309 = getelementptr inbounds %struct.option, %struct.option* %307, i32 0, i32 1
  %310 = load i32, i32* @NO_ARG, align 4
  store i32 %310, i32* %309, align 8
  %311 = getelementptr inbounds %struct.option, %struct.option* %307, i32 0, i32 2
  store i32* @get_desc_ds, i32** %311, align 16
  %312 = getelementptr inbounds %struct.option, %struct.option* %307, i32 0, i32 3
  store i32 1, i32* %312, align 8
  %313 = getelementptr inbounds %struct.option, %struct.option* %307, i64 1
  %314 = getelementptr inbounds %struct.option, %struct.option* %313, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8** %314, align 16
  %315 = getelementptr inbounds %struct.option, %struct.option* %313, i32 0, i32 1
  %316 = load i32, i32* @NO_ARG, align 4
  store i32 %316, i32* %315, align 8
  %317 = getelementptr inbounds %struct.option, %struct.option* %313, i32 0, i32 2
  store i32* @set_desc_ds, i32** %317, align 16
  %318 = getelementptr inbounds %struct.option, %struct.option* %313, i32 0, i32 3
  store i32 1, i32* %318, align 8
  %319 = getelementptr inbounds %struct.option, %struct.option* %313, i64 1
  %320 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8** %320, align 16
  %321 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 1
  %322 = load i32, i32* @NO_ARG, align 4
  store i32 %322, i32* %321, align 8
  %323 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 2
  store i32* @get_desc_es, i32** %323, align 16
  %324 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 3
  store i32 1, i32* %324, align 8
  %325 = getelementptr inbounds %struct.option, %struct.option* %319, i64 1
  %326 = getelementptr inbounds %struct.option, %struct.option* %325, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8** %326, align 16
  %327 = getelementptr inbounds %struct.option, %struct.option* %325, i32 0, i32 1
  %328 = load i32, i32* @NO_ARG, align 4
  store i32 %328, i32* %327, align 8
  %329 = getelementptr inbounds %struct.option, %struct.option* %325, i32 0, i32 2
  store i32* @set_desc_es, i32** %329, align 16
  %330 = getelementptr inbounds %struct.option, %struct.option* %325, i32 0, i32 3
  store i32 1, i32* %330, align 8
  %331 = getelementptr inbounds %struct.option, %struct.option* %325, i64 1
  %332 = getelementptr inbounds %struct.option, %struct.option* %331, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8** %332, align 16
  %333 = getelementptr inbounds %struct.option, %struct.option* %331, i32 0, i32 1
  %334 = load i32, i32* @NO_ARG, align 4
  store i32 %334, i32* %333, align 8
  %335 = getelementptr inbounds %struct.option, %struct.option* %331, i32 0, i32 2
  store i32* @get_desc_ss, i32** %335, align 16
  %336 = getelementptr inbounds %struct.option, %struct.option* %331, i32 0, i32 3
  store i32 1, i32* %336, align 8
  %337 = getelementptr inbounds %struct.option, %struct.option* %331, i64 1
  %338 = getelementptr inbounds %struct.option, %struct.option* %337, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8** %338, align 16
  %339 = getelementptr inbounds %struct.option, %struct.option* %337, i32 0, i32 1
  %340 = load i32, i32* @NO_ARG, align 4
  store i32 %340, i32* %339, align 8
  %341 = getelementptr inbounds %struct.option, %struct.option* %337, i32 0, i32 2
  store i32* @set_desc_ss, i32** %341, align 16
  %342 = getelementptr inbounds %struct.option, %struct.option* %337, i32 0, i32 3
  store i32 1, i32* %342, align 8
  %343 = getelementptr inbounds %struct.option, %struct.option* %337, i64 1
  %344 = getelementptr inbounds %struct.option, %struct.option* %343, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8** %344, align 16
  %345 = getelementptr inbounds %struct.option, %struct.option* %343, i32 0, i32 1
  %346 = load i32, i32* @NO_ARG, align 4
  store i32 %346, i32* %345, align 8
  %347 = getelementptr inbounds %struct.option, %struct.option* %343, i32 0, i32 2
  store i32* @get_desc_cs, i32** %347, align 16
  %348 = getelementptr inbounds %struct.option, %struct.option* %343, i32 0, i32 3
  store i32 1, i32* %348, align 8
  %349 = getelementptr inbounds %struct.option, %struct.option* %343, i64 1
  %350 = getelementptr inbounds %struct.option, %struct.option* %349, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8** %350, align 16
  %351 = getelementptr inbounds %struct.option, %struct.option* %349, i32 0, i32 1
  %352 = load i32, i32* @NO_ARG, align 4
  store i32 %352, i32* %351, align 8
  %353 = getelementptr inbounds %struct.option, %struct.option* %349, i32 0, i32 2
  store i32* @set_desc_cs, i32** %353, align 16
  %354 = getelementptr inbounds %struct.option, %struct.option* %349, i32 0, i32 3
  store i32 1, i32* %354, align 8
  %355 = getelementptr inbounds %struct.option, %struct.option* %349, i64 1
  %356 = getelementptr inbounds %struct.option, %struct.option* %355, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8** %356, align 16
  %357 = getelementptr inbounds %struct.option, %struct.option* %355, i32 0, i32 1
  %358 = load i32, i32* @NO_ARG, align 4
  store i32 %358, i32* %357, align 8
  %359 = getelementptr inbounds %struct.option, %struct.option* %355, i32 0, i32 2
  store i32* @get_desc_fs, i32** %359, align 16
  %360 = getelementptr inbounds %struct.option, %struct.option* %355, i32 0, i32 3
  store i32 1, i32* %360, align 8
  %361 = getelementptr inbounds %struct.option, %struct.option* %355, i64 1
  %362 = getelementptr inbounds %struct.option, %struct.option* %361, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8** %362, align 16
  %363 = getelementptr inbounds %struct.option, %struct.option* %361, i32 0, i32 1
  %364 = load i32, i32* @NO_ARG, align 4
  store i32 %364, i32* %363, align 8
  %365 = getelementptr inbounds %struct.option, %struct.option* %361, i32 0, i32 2
  store i32* @set_desc_fs, i32** %365, align 16
  %366 = getelementptr inbounds %struct.option, %struct.option* %361, i32 0, i32 3
  store i32 1, i32* %366, align 8
  %367 = getelementptr inbounds %struct.option, %struct.option* %361, i64 1
  %368 = getelementptr inbounds %struct.option, %struct.option* %367, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8** %368, align 16
  %369 = getelementptr inbounds %struct.option, %struct.option* %367, i32 0, i32 1
  %370 = load i32, i32* @NO_ARG, align 4
  store i32 %370, i32* %369, align 8
  %371 = getelementptr inbounds %struct.option, %struct.option* %367, i32 0, i32 2
  store i32* @get_desc_gs, i32** %371, align 16
  %372 = getelementptr inbounds %struct.option, %struct.option* %367, i32 0, i32 3
  store i32 1, i32* %372, align 8
  %373 = getelementptr inbounds %struct.option, %struct.option* %367, i64 1
  %374 = getelementptr inbounds %struct.option, %struct.option* %373, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8** %374, align 16
  %375 = getelementptr inbounds %struct.option, %struct.option* %373, i32 0, i32 1
  %376 = load i32, i32* @NO_ARG, align 4
  store i32 %376, i32* %375, align 8
  %377 = getelementptr inbounds %struct.option, %struct.option* %373, i32 0, i32 2
  store i32* @set_desc_gs, i32** %377, align 16
  %378 = getelementptr inbounds %struct.option, %struct.option* %373, i32 0, i32 3
  store i32 1, i32* %378, align 8
  %379 = getelementptr inbounds %struct.option, %struct.option* %373, i64 1
  %380 = getelementptr inbounds %struct.option, %struct.option* %379, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8** %380, align 16
  %381 = getelementptr inbounds %struct.option, %struct.option* %379, i32 0, i32 1
  %382 = load i32, i32* @NO_ARG, align 4
  store i32 %382, i32* %381, align 8
  %383 = getelementptr inbounds %struct.option, %struct.option* %379, i32 0, i32 2
  store i32* @get_desc_tr, i32** %383, align 16
  %384 = getelementptr inbounds %struct.option, %struct.option* %379, i32 0, i32 3
  store i32 1, i32* %384, align 8
  %385 = getelementptr inbounds %struct.option, %struct.option* %379, i64 1
  %386 = getelementptr inbounds %struct.option, %struct.option* %385, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8** %386, align 16
  %387 = getelementptr inbounds %struct.option, %struct.option* %385, i32 0, i32 1
  %388 = load i32, i32* @NO_ARG, align 4
  store i32 %388, i32* %387, align 8
  %389 = getelementptr inbounds %struct.option, %struct.option* %385, i32 0, i32 2
  store i32* @set_desc_tr, i32** %389, align 16
  %390 = getelementptr inbounds %struct.option, %struct.option* %385, i32 0, i32 3
  store i32 1, i32* %390, align 8
  %391 = getelementptr inbounds %struct.option, %struct.option* %385, i64 1
  %392 = getelementptr inbounds %struct.option, %struct.option* %391, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8** %392, align 16
  %393 = getelementptr inbounds %struct.option, %struct.option* %391, i32 0, i32 1
  %394 = load i32, i32* @NO_ARG, align 4
  store i32 %394, i32* %393, align 8
  %395 = getelementptr inbounds %struct.option, %struct.option* %391, i32 0, i32 2
  store i32* @set_desc_ldtr, i32** %395, align 16
  %396 = getelementptr inbounds %struct.option, %struct.option* %391, i32 0, i32 3
  store i32 1, i32* %396, align 8
  %397 = getelementptr inbounds %struct.option, %struct.option* %391, i64 1
  %398 = getelementptr inbounds %struct.option, %struct.option* %397, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8** %398, align 16
  %399 = getelementptr inbounds %struct.option, %struct.option* %397, i32 0, i32 1
  %400 = load i32, i32* @NO_ARG, align 4
  store i32 %400, i32* %399, align 8
  %401 = getelementptr inbounds %struct.option, %struct.option* %397, i32 0, i32 2
  store i32* @get_desc_ldtr, i32** %401, align 16
  %402 = getelementptr inbounds %struct.option, %struct.option* %397, i32 0, i32 3
  store i32 1, i32* %402, align 8
  %403 = getelementptr inbounds %struct.option, %struct.option* %397, i64 1
  %404 = getelementptr inbounds %struct.option, %struct.option* %403, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8** %404, align 16
  %405 = getelementptr inbounds %struct.option, %struct.option* %403, i32 0, i32 1
  %406 = load i32, i32* @NO_ARG, align 4
  store i32 %406, i32* %405, align 8
  %407 = getelementptr inbounds %struct.option, %struct.option* %403, i32 0, i32 2
  store i32* @set_desc_gdtr, i32** %407, align 16
  %408 = getelementptr inbounds %struct.option, %struct.option* %403, i32 0, i32 3
  store i32 1, i32* %408, align 8
  %409 = getelementptr inbounds %struct.option, %struct.option* %403, i64 1
  %410 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8** %410, align 16
  %411 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 1
  %412 = load i32, i32* @NO_ARG, align 4
  store i32 %412, i32* %411, align 8
  %413 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 2
  store i32* @get_desc_gdtr, i32** %413, align 16
  %414 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 3
  store i32 1, i32* %414, align 8
  %415 = getelementptr inbounds %struct.option, %struct.option* %409, i64 1
  %416 = getelementptr inbounds %struct.option, %struct.option* %415, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8** %416, align 16
  %417 = getelementptr inbounds %struct.option, %struct.option* %415, i32 0, i32 1
  %418 = load i32, i32* @NO_ARG, align 4
  store i32 %418, i32* %417, align 8
  %419 = getelementptr inbounds %struct.option, %struct.option* %415, i32 0, i32 2
  store i32* @set_desc_idtr, i32** %419, align 16
  %420 = getelementptr inbounds %struct.option, %struct.option* %415, i32 0, i32 3
  store i32 1, i32* %420, align 8
  %421 = getelementptr inbounds %struct.option, %struct.option* %415, i64 1
  %422 = getelementptr inbounds %struct.option, %struct.option* %421, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8** %422, align 16
  %423 = getelementptr inbounds %struct.option, %struct.option* %421, i32 0, i32 1
  %424 = load i32, i32* @NO_ARG, align 4
  store i32 %424, i32* %423, align 8
  %425 = getelementptr inbounds %struct.option, %struct.option* %421, i32 0, i32 2
  store i32* @get_desc_idtr, i32** %425, align 16
  %426 = getelementptr inbounds %struct.option, %struct.option* %421, i32 0, i32 3
  store i32 1, i32* %426, align 8
  %427 = getelementptr inbounds %struct.option, %struct.option* %421, i64 1
  %428 = getelementptr inbounds %struct.option, %struct.option* %427, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i8** %428, align 16
  %429 = getelementptr inbounds %struct.option, %struct.option* %427, i32 0, i32 1
  %430 = load i32, i32* @NO_ARG, align 4
  store i32 %430, i32* %429, align 8
  %431 = getelementptr inbounds %struct.option, %struct.option* %427, i32 0, i32 2
  store i32* @get_memmap, i32** %431, align 16
  %432 = getelementptr inbounds %struct.option, %struct.option* %427, i32 0, i32 3
  store i32 1, i32* %432, align 8
  %433 = getelementptr inbounds %struct.option, %struct.option* %427, i64 1
  %434 = getelementptr inbounds %struct.option, %struct.option* %433, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i8** %434, align 16
  %435 = getelementptr inbounds %struct.option, %struct.option* %433, i32 0, i32 1
  %436 = load i32, i32* @NO_ARG, align 4
  store i32 %436, i32* %435, align 8
  %437 = getelementptr inbounds %struct.option, %struct.option* %433, i32 0, i32 2
  store i32* @get_memseg, i32** %437, align 16
  %438 = getelementptr inbounds %struct.option, %struct.option* %433, i32 0, i32 3
  store i32 1, i32* %438, align 8
  %439 = getelementptr inbounds %struct.option, %struct.option* %433, i64 1
  %440 = getelementptr inbounds %struct.option, %struct.option* %439, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i8** %440, align 16
  %441 = getelementptr inbounds %struct.option, %struct.option* %439, i32 0, i32 1
  %442 = load i32, i32* @NO_ARG, align 4
  store i32 %442, i32* %441, align 8
  %443 = getelementptr inbounds %struct.option, %struct.option* %439, i32 0, i32 2
  store i32* @get_efer, i32** %443, align 16
  %444 = getelementptr inbounds %struct.option, %struct.option* %439, i32 0, i32 3
  store i32 1, i32* %444, align 8
  %445 = getelementptr inbounds %struct.option, %struct.option* %439, i64 1
  %446 = getelementptr inbounds %struct.option, %struct.option* %445, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i8** %446, align 16
  %447 = getelementptr inbounds %struct.option, %struct.option* %445, i32 0, i32 1
  %448 = load i32, i32* @NO_ARG, align 4
  store i32 %448, i32* %447, align 8
  %449 = getelementptr inbounds %struct.option, %struct.option* %445, i32 0, i32 2
  store i32* @get_cr0, i32** %449, align 16
  %450 = getelementptr inbounds %struct.option, %struct.option* %445, i32 0, i32 3
  store i32 1, i32* %450, align 8
  %451 = getelementptr inbounds %struct.option, %struct.option* %445, i64 1
  %452 = getelementptr inbounds %struct.option, %struct.option* %451, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8** %452, align 16
  %453 = getelementptr inbounds %struct.option, %struct.option* %451, i32 0, i32 1
  %454 = load i32, i32* @NO_ARG, align 4
  store i32 %454, i32* %453, align 8
  %455 = getelementptr inbounds %struct.option, %struct.option* %451, i32 0, i32 2
  store i32* @get_cr2, i32** %455, align 16
  %456 = getelementptr inbounds %struct.option, %struct.option* %451, i32 0, i32 3
  store i32 1, i32* %456, align 8
  %457 = getelementptr inbounds %struct.option, %struct.option* %451, i64 1
  %458 = getelementptr inbounds %struct.option, %struct.option* %457, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i8** %458, align 16
  %459 = getelementptr inbounds %struct.option, %struct.option* %457, i32 0, i32 1
  %460 = load i32, i32* @NO_ARG, align 4
  store i32 %460, i32* %459, align 8
  %461 = getelementptr inbounds %struct.option, %struct.option* %457, i32 0, i32 2
  store i32* @get_cr3, i32** %461, align 16
  %462 = getelementptr inbounds %struct.option, %struct.option* %457, i32 0, i32 3
  store i32 1, i32* %462, align 8
  %463 = getelementptr inbounds %struct.option, %struct.option* %457, i64 1
  %464 = getelementptr inbounds %struct.option, %struct.option* %463, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i8** %464, align 16
  %465 = getelementptr inbounds %struct.option, %struct.option* %463, i32 0, i32 1
  %466 = load i32, i32* @NO_ARG, align 4
  store i32 %466, i32* %465, align 8
  %467 = getelementptr inbounds %struct.option, %struct.option* %463, i32 0, i32 2
  store i32* @get_cr4, i32** %467, align 16
  %468 = getelementptr inbounds %struct.option, %struct.option* %463, i32 0, i32 3
  store i32 1, i32* %468, align 8
  %469 = getelementptr inbounds %struct.option, %struct.option* %463, i64 1
  %470 = getelementptr inbounds %struct.option, %struct.option* %469, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i8** %470, align 16
  %471 = getelementptr inbounds %struct.option, %struct.option* %469, i32 0, i32 1
  %472 = load i32, i32* @NO_ARG, align 4
  store i32 %472, i32* %471, align 8
  %473 = getelementptr inbounds %struct.option, %struct.option* %469, i32 0, i32 2
  store i32* @get_dr0, i32** %473, align 16
  %474 = getelementptr inbounds %struct.option, %struct.option* %469, i32 0, i32 3
  store i32 1, i32* %474, align 8
  %475 = getelementptr inbounds %struct.option, %struct.option* %469, i64 1
  %476 = getelementptr inbounds %struct.option, %struct.option* %475, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i8** %476, align 16
  %477 = getelementptr inbounds %struct.option, %struct.option* %475, i32 0, i32 1
  %478 = load i32, i32* @NO_ARG, align 4
  store i32 %478, i32* %477, align 8
  %479 = getelementptr inbounds %struct.option, %struct.option* %475, i32 0, i32 2
  store i32* @get_dr1, i32** %479, align 16
  %480 = getelementptr inbounds %struct.option, %struct.option* %475, i32 0, i32 3
  store i32 1, i32* %480, align 8
  %481 = getelementptr inbounds %struct.option, %struct.option* %475, i64 1
  %482 = getelementptr inbounds %struct.option, %struct.option* %481, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), i8** %482, align 16
  %483 = getelementptr inbounds %struct.option, %struct.option* %481, i32 0, i32 1
  %484 = load i32, i32* @NO_ARG, align 4
  store i32 %484, i32* %483, align 8
  %485 = getelementptr inbounds %struct.option, %struct.option* %481, i32 0, i32 2
  store i32* @get_dr2, i32** %485, align 16
  %486 = getelementptr inbounds %struct.option, %struct.option* %481, i32 0, i32 3
  store i32 1, i32* %486, align 8
  %487 = getelementptr inbounds %struct.option, %struct.option* %481, i64 1
  %488 = getelementptr inbounds %struct.option, %struct.option* %487, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8** %488, align 16
  %489 = getelementptr inbounds %struct.option, %struct.option* %487, i32 0, i32 1
  %490 = load i32, i32* @NO_ARG, align 4
  store i32 %490, i32* %489, align 8
  %491 = getelementptr inbounds %struct.option, %struct.option* %487, i32 0, i32 2
  store i32* @get_dr3, i32** %491, align 16
  %492 = getelementptr inbounds %struct.option, %struct.option* %487, i32 0, i32 3
  store i32 1, i32* %492, align 8
  %493 = getelementptr inbounds %struct.option, %struct.option* %487, i64 1
  %494 = getelementptr inbounds %struct.option, %struct.option* %493, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i8** %494, align 16
  %495 = getelementptr inbounds %struct.option, %struct.option* %493, i32 0, i32 1
  %496 = load i32, i32* @NO_ARG, align 4
  store i32 %496, i32* %495, align 8
  %497 = getelementptr inbounds %struct.option, %struct.option* %493, i32 0, i32 2
  store i32* @get_dr6, i32** %497, align 16
  %498 = getelementptr inbounds %struct.option, %struct.option* %493, i32 0, i32 3
  store i32 1, i32* %498, align 8
  %499 = getelementptr inbounds %struct.option, %struct.option* %493, i64 1
  %500 = getelementptr inbounds %struct.option, %struct.option* %499, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0), i8** %500, align 16
  %501 = getelementptr inbounds %struct.option, %struct.option* %499, i32 0, i32 1
  %502 = load i32, i32* @NO_ARG, align 4
  store i32 %502, i32* %501, align 8
  %503 = getelementptr inbounds %struct.option, %struct.option* %499, i32 0, i32 2
  store i32* @get_dr7, i32** %503, align 16
  %504 = getelementptr inbounds %struct.option, %struct.option* %499, i32 0, i32 3
  store i32 1, i32* %504, align 8
  %505 = getelementptr inbounds %struct.option, %struct.option* %499, i64 1
  %506 = getelementptr inbounds %struct.option, %struct.option* %505, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i8** %506, align 16
  %507 = getelementptr inbounds %struct.option, %struct.option* %505, i32 0, i32 1
  %508 = load i32, i32* @NO_ARG, align 4
  store i32 %508, i32* %507, align 8
  %509 = getelementptr inbounds %struct.option, %struct.option* %505, i32 0, i32 2
  store i32* @get_rsp, i32** %509, align 16
  %510 = getelementptr inbounds %struct.option, %struct.option* %505, i32 0, i32 3
  store i32 1, i32* %510, align 8
  %511 = getelementptr inbounds %struct.option, %struct.option* %505, i64 1
  %512 = getelementptr inbounds %struct.option, %struct.option* %511, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8** %512, align 16
  %513 = getelementptr inbounds %struct.option, %struct.option* %511, i32 0, i32 1
  %514 = load i32, i32* @NO_ARG, align 4
  store i32 %514, i32* %513, align 8
  %515 = getelementptr inbounds %struct.option, %struct.option* %511, i32 0, i32 2
  store i32* @get_rip, i32** %515, align 16
  %516 = getelementptr inbounds %struct.option, %struct.option* %511, i32 0, i32 3
  store i32 1, i32* %516, align 8
  %517 = getelementptr inbounds %struct.option, %struct.option* %511, i64 1
  %518 = getelementptr inbounds %struct.option, %struct.option* %517, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i8** %518, align 16
  %519 = getelementptr inbounds %struct.option, %struct.option* %517, i32 0, i32 1
  %520 = load i32, i32* @NO_ARG, align 4
  store i32 %520, i32* %519, align 8
  %521 = getelementptr inbounds %struct.option, %struct.option* %517, i32 0, i32 2
  store i32* @get_rax, i32** %521, align 16
  %522 = getelementptr inbounds %struct.option, %struct.option* %517, i32 0, i32 3
  store i32 1, i32* %522, align 8
  %523 = getelementptr inbounds %struct.option, %struct.option* %517, i64 1
  %524 = getelementptr inbounds %struct.option, %struct.option* %523, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i8** %524, align 16
  %525 = getelementptr inbounds %struct.option, %struct.option* %523, i32 0, i32 1
  %526 = load i32, i32* @NO_ARG, align 4
  store i32 %526, i32* %525, align 8
  %527 = getelementptr inbounds %struct.option, %struct.option* %523, i32 0, i32 2
  store i32* @get_rbx, i32** %527, align 16
  %528 = getelementptr inbounds %struct.option, %struct.option* %523, i32 0, i32 3
  store i32 1, i32* %528, align 8
  %529 = getelementptr inbounds %struct.option, %struct.option* %523, i64 1
  %530 = getelementptr inbounds %struct.option, %struct.option* %529, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i8** %530, align 16
  %531 = getelementptr inbounds %struct.option, %struct.option* %529, i32 0, i32 1
  %532 = load i32, i32* @NO_ARG, align 4
  store i32 %532, i32* %531, align 8
  %533 = getelementptr inbounds %struct.option, %struct.option* %529, i32 0, i32 2
  store i32* @get_rcx, i32** %533, align 16
  %534 = getelementptr inbounds %struct.option, %struct.option* %529, i32 0, i32 3
  store i32 1, i32* %534, align 8
  %535 = getelementptr inbounds %struct.option, %struct.option* %529, i64 1
  %536 = getelementptr inbounds %struct.option, %struct.option* %535, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i8** %536, align 16
  %537 = getelementptr inbounds %struct.option, %struct.option* %535, i32 0, i32 1
  %538 = load i32, i32* @NO_ARG, align 4
  store i32 %538, i32* %537, align 8
  %539 = getelementptr inbounds %struct.option, %struct.option* %535, i32 0, i32 2
  store i32* @get_rdx, i32** %539, align 16
  %540 = getelementptr inbounds %struct.option, %struct.option* %535, i32 0, i32 3
  store i32 1, i32* %540, align 8
  %541 = getelementptr inbounds %struct.option, %struct.option* %535, i64 1
  %542 = getelementptr inbounds %struct.option, %struct.option* %541, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0), i8** %542, align 16
  %543 = getelementptr inbounds %struct.option, %struct.option* %541, i32 0, i32 1
  %544 = load i32, i32* @NO_ARG, align 4
  store i32 %544, i32* %543, align 8
  %545 = getelementptr inbounds %struct.option, %struct.option* %541, i32 0, i32 2
  store i32* @get_rsi, i32** %545, align 16
  %546 = getelementptr inbounds %struct.option, %struct.option* %541, i32 0, i32 3
  store i32 1, i32* %546, align 8
  %547 = getelementptr inbounds %struct.option, %struct.option* %541, i64 1
  %548 = getelementptr inbounds %struct.option, %struct.option* %547, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i8** %548, align 16
  %549 = getelementptr inbounds %struct.option, %struct.option* %547, i32 0, i32 1
  %550 = load i32, i32* @NO_ARG, align 4
  store i32 %550, i32* %549, align 8
  %551 = getelementptr inbounds %struct.option, %struct.option* %547, i32 0, i32 2
  store i32* @get_rdi, i32** %551, align 16
  %552 = getelementptr inbounds %struct.option, %struct.option* %547, i32 0, i32 3
  store i32 1, i32* %552, align 8
  %553 = getelementptr inbounds %struct.option, %struct.option* %547, i64 1
  %554 = getelementptr inbounds %struct.option, %struct.option* %553, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i8** %554, align 16
  %555 = getelementptr inbounds %struct.option, %struct.option* %553, i32 0, i32 1
  %556 = load i32, i32* @NO_ARG, align 4
  store i32 %556, i32* %555, align 8
  %557 = getelementptr inbounds %struct.option, %struct.option* %553, i32 0, i32 2
  store i32* @get_rbp, i32** %557, align 16
  %558 = getelementptr inbounds %struct.option, %struct.option* %553, i32 0, i32 3
  store i32 1, i32* %558, align 8
  %559 = getelementptr inbounds %struct.option, %struct.option* %553, i64 1
  %560 = getelementptr inbounds %struct.option, %struct.option* %559, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i8** %560, align 16
  %561 = getelementptr inbounds %struct.option, %struct.option* %559, i32 0, i32 1
  %562 = load i32, i32* @NO_ARG, align 4
  store i32 %562, i32* %561, align 8
  %563 = getelementptr inbounds %struct.option, %struct.option* %559, i32 0, i32 2
  store i32* @get_r8, i32** %563, align 16
  %564 = getelementptr inbounds %struct.option, %struct.option* %559, i32 0, i32 3
  store i32 1, i32* %564, align 8
  %565 = getelementptr inbounds %struct.option, %struct.option* %559, i64 1
  %566 = getelementptr inbounds %struct.option, %struct.option* %565, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8** %566, align 16
  %567 = getelementptr inbounds %struct.option, %struct.option* %565, i32 0, i32 1
  %568 = load i32, i32* @NO_ARG, align 4
  store i32 %568, i32* %567, align 8
  %569 = getelementptr inbounds %struct.option, %struct.option* %565, i32 0, i32 2
  store i32* @get_r9, i32** %569, align 16
  %570 = getelementptr inbounds %struct.option, %struct.option* %565, i32 0, i32 3
  store i32 1, i32* %570, align 8
  %571 = getelementptr inbounds %struct.option, %struct.option* %565, i64 1
  %572 = getelementptr inbounds %struct.option, %struct.option* %571, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8** %572, align 16
  %573 = getelementptr inbounds %struct.option, %struct.option* %571, i32 0, i32 1
  %574 = load i32, i32* @NO_ARG, align 4
  store i32 %574, i32* %573, align 8
  %575 = getelementptr inbounds %struct.option, %struct.option* %571, i32 0, i32 2
  store i32* @get_r10, i32** %575, align 16
  %576 = getelementptr inbounds %struct.option, %struct.option* %571, i32 0, i32 3
  store i32 1, i32* %576, align 8
  %577 = getelementptr inbounds %struct.option, %struct.option* %571, i64 1
  %578 = getelementptr inbounds %struct.option, %struct.option* %577, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i8** %578, align 16
  %579 = getelementptr inbounds %struct.option, %struct.option* %577, i32 0, i32 1
  %580 = load i32, i32* @NO_ARG, align 4
  store i32 %580, i32* %579, align 8
  %581 = getelementptr inbounds %struct.option, %struct.option* %577, i32 0, i32 2
  store i32* @get_r11, i32** %581, align 16
  %582 = getelementptr inbounds %struct.option, %struct.option* %577, i32 0, i32 3
  store i32 1, i32* %582, align 8
  %583 = getelementptr inbounds %struct.option, %struct.option* %577, i64 1
  %584 = getelementptr inbounds %struct.option, %struct.option* %583, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i64 0, i64 0), i8** %584, align 16
  %585 = getelementptr inbounds %struct.option, %struct.option* %583, i32 0, i32 1
  %586 = load i32, i32* @NO_ARG, align 4
  store i32 %586, i32* %585, align 8
  %587 = getelementptr inbounds %struct.option, %struct.option* %583, i32 0, i32 2
  store i32* @get_r12, i32** %587, align 16
  %588 = getelementptr inbounds %struct.option, %struct.option* %583, i32 0, i32 3
  store i32 1, i32* %588, align 8
  %589 = getelementptr inbounds %struct.option, %struct.option* %583, i64 1
  %590 = getelementptr inbounds %struct.option, %struct.option* %589, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), i8** %590, align 16
  %591 = getelementptr inbounds %struct.option, %struct.option* %589, i32 0, i32 1
  %592 = load i32, i32* @NO_ARG, align 4
  store i32 %592, i32* %591, align 8
  %593 = getelementptr inbounds %struct.option, %struct.option* %589, i32 0, i32 2
  store i32* @get_r13, i32** %593, align 16
  %594 = getelementptr inbounds %struct.option, %struct.option* %589, i32 0, i32 3
  store i32 1, i32* %594, align 8
  %595 = getelementptr inbounds %struct.option, %struct.option* %589, i64 1
  %596 = getelementptr inbounds %struct.option, %struct.option* %595, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0), i8** %596, align 16
  %597 = getelementptr inbounds %struct.option, %struct.option* %595, i32 0, i32 1
  %598 = load i32, i32* @NO_ARG, align 4
  store i32 %598, i32* %597, align 8
  %599 = getelementptr inbounds %struct.option, %struct.option* %595, i32 0, i32 2
  store i32* @get_r14, i32** %599, align 16
  %600 = getelementptr inbounds %struct.option, %struct.option* %595, i32 0, i32 3
  store i32 1, i32* %600, align 8
  %601 = getelementptr inbounds %struct.option, %struct.option* %595, i64 1
  %602 = getelementptr inbounds %struct.option, %struct.option* %601, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i8** %602, align 16
  %603 = getelementptr inbounds %struct.option, %struct.option* %601, i32 0, i32 1
  %604 = load i32, i32* @NO_ARG, align 4
  store i32 %604, i32* %603, align 8
  %605 = getelementptr inbounds %struct.option, %struct.option* %601, i32 0, i32 2
  store i32* @get_r15, i32** %605, align 16
  %606 = getelementptr inbounds %struct.option, %struct.option* %601, i32 0, i32 3
  store i32 1, i32* %606, align 8
  %607 = getelementptr inbounds %struct.option, %struct.option* %601, i64 1
  %608 = getelementptr inbounds %struct.option, %struct.option* %607, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0), i8** %608, align 16
  %609 = getelementptr inbounds %struct.option, %struct.option* %607, i32 0, i32 1
  %610 = load i32, i32* @NO_ARG, align 4
  store i32 %610, i32* %609, align 8
  %611 = getelementptr inbounds %struct.option, %struct.option* %607, i32 0, i32 2
  store i32* @get_rflags, i32** %611, align 16
  %612 = getelementptr inbounds %struct.option, %struct.option* %607, i32 0, i32 3
  store i32 1, i32* %612, align 8
  %613 = getelementptr inbounds %struct.option, %struct.option* %607, i64 1
  %614 = getelementptr inbounds %struct.option, %struct.option* %613, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i8** %614, align 16
  %615 = getelementptr inbounds %struct.option, %struct.option* %613, i32 0, i32 1
  %616 = load i32, i32* @NO_ARG, align 4
  store i32 %616, i32* %615, align 8
  %617 = getelementptr inbounds %struct.option, %struct.option* %613, i32 0, i32 2
  store i32* @get_cs, i32** %617, align 16
  %618 = getelementptr inbounds %struct.option, %struct.option* %613, i32 0, i32 3
  store i32 1, i32* %618, align 8
  %619 = getelementptr inbounds %struct.option, %struct.option* %613, i64 1
  %620 = getelementptr inbounds %struct.option, %struct.option* %619, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8** %620, align 16
  %621 = getelementptr inbounds %struct.option, %struct.option* %619, i32 0, i32 1
  %622 = load i32, i32* @NO_ARG, align 4
  store i32 %622, i32* %621, align 8
  %623 = getelementptr inbounds %struct.option, %struct.option* %619, i32 0, i32 2
  store i32* @get_ds, i32** %623, align 16
  %624 = getelementptr inbounds %struct.option, %struct.option* %619, i32 0, i32 3
  store i32 1, i32* %624, align 8
  %625 = getelementptr inbounds %struct.option, %struct.option* %619, i64 1
  %626 = getelementptr inbounds %struct.option, %struct.option* %625, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8** %626, align 16
  %627 = getelementptr inbounds %struct.option, %struct.option* %625, i32 0, i32 1
  %628 = load i32, i32* @NO_ARG, align 4
  store i32 %628, i32* %627, align 8
  %629 = getelementptr inbounds %struct.option, %struct.option* %625, i32 0, i32 2
  store i32* @get_es, i32** %629, align 16
  %630 = getelementptr inbounds %struct.option, %struct.option* %625, i32 0, i32 3
  store i32 1, i32* %630, align 8
  %631 = getelementptr inbounds %struct.option, %struct.option* %625, i64 1
  %632 = getelementptr inbounds %struct.option, %struct.option* %631, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i64 0, i64 0), i8** %632, align 16
  %633 = getelementptr inbounds %struct.option, %struct.option* %631, i32 0, i32 1
  %634 = load i32, i32* @NO_ARG, align 4
  store i32 %634, i32* %633, align 8
  %635 = getelementptr inbounds %struct.option, %struct.option* %631, i32 0, i32 2
  store i32* @get_fs, i32** %635, align 16
  %636 = getelementptr inbounds %struct.option, %struct.option* %631, i32 0, i32 3
  store i32 1, i32* %636, align 8
  %637 = getelementptr inbounds %struct.option, %struct.option* %631, i64 1
  %638 = getelementptr inbounds %struct.option, %struct.option* %637, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8** %638, align 16
  %639 = getelementptr inbounds %struct.option, %struct.option* %637, i32 0, i32 1
  %640 = load i32, i32* @NO_ARG, align 4
  store i32 %640, i32* %639, align 8
  %641 = getelementptr inbounds %struct.option, %struct.option* %637, i32 0, i32 2
  store i32* @get_gs, i32** %641, align 16
  %642 = getelementptr inbounds %struct.option, %struct.option* %637, i32 0, i32 3
  store i32 1, i32* %642, align 8
  %643 = getelementptr inbounds %struct.option, %struct.option* %637, i64 1
  %644 = getelementptr inbounds %struct.option, %struct.option* %643, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), i8** %644, align 16
  %645 = getelementptr inbounds %struct.option, %struct.option* %643, i32 0, i32 1
  %646 = load i32, i32* @NO_ARG, align 4
  store i32 %646, i32* %645, align 8
  %647 = getelementptr inbounds %struct.option, %struct.option* %643, i32 0, i32 2
  store i32* @get_ss, i32** %647, align 16
  %648 = getelementptr inbounds %struct.option, %struct.option* %643, i32 0, i32 3
  store i32 1, i32* %648, align 8
  %649 = getelementptr inbounds %struct.option, %struct.option* %643, i64 1
  %650 = getelementptr inbounds %struct.option, %struct.option* %649, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8** %650, align 16
  %651 = getelementptr inbounds %struct.option, %struct.option* %649, i32 0, i32 1
  %652 = load i32, i32* @NO_ARG, align 4
  store i32 %652, i32* %651, align 8
  %653 = getelementptr inbounds %struct.option, %struct.option* %649, i32 0, i32 2
  store i32* @get_tr, i32** %653, align 16
  %654 = getelementptr inbounds %struct.option, %struct.option* %649, i32 0, i32 3
  store i32 1, i32* %654, align 8
  %655 = getelementptr inbounds %struct.option, %struct.option* %649, i64 1
  %656 = getelementptr inbounds %struct.option, %struct.option* %655, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i64 0, i64 0), i8** %656, align 16
  %657 = getelementptr inbounds %struct.option, %struct.option* %655, i32 0, i32 1
  %658 = load i32, i32* @NO_ARG, align 4
  store i32 %658, i32* %657, align 8
  %659 = getelementptr inbounds %struct.option, %struct.option* %655, i32 0, i32 2
  store i32* @get_ldtr, i32** %659, align 16
  %660 = getelementptr inbounds %struct.option, %struct.option* %655, i32 0, i32 3
  store i32 1, i32* %660, align 8
  %661 = getelementptr inbounds %struct.option, %struct.option* %655, i64 1
  %662 = getelementptr inbounds %struct.option, %struct.option* %661, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i64 0, i64 0), i8** %662, align 16
  %663 = getelementptr inbounds %struct.option, %struct.option* %661, i32 0, i32 1
  %664 = load i32, i32* @NO_ARG, align 4
  store i32 %664, i32* %663, align 8
  %665 = getelementptr inbounds %struct.option, %struct.option* %661, i32 0, i32 2
  store i32* @get_eptp, i32** %665, align 16
  %666 = getelementptr inbounds %struct.option, %struct.option* %661, i32 0, i32 3
  store i32 1, i32* %666, align 8
  %667 = getelementptr inbounds %struct.option, %struct.option* %661, i64 1
  %668 = getelementptr inbounds %struct.option, %struct.option* %667, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i64 0, i64 0), i8** %668, align 16
  %669 = getelementptr inbounds %struct.option, %struct.option* %667, i32 0, i32 1
  %670 = load i32, i32* @NO_ARG, align 4
  store i32 %670, i32* %669, align 8
  %671 = getelementptr inbounds %struct.option, %struct.option* %667, i32 0, i32 2
  store i32* @get_exception_bitmap, i32** %671, align 16
  %672 = getelementptr inbounds %struct.option, %struct.option* %667, i32 0, i32 3
  store i32 1, i32* %672, align 8
  %673 = getelementptr inbounds %struct.option, %struct.option* %667, i64 1
  %674 = getelementptr inbounds %struct.option, %struct.option* %673, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0), i8** %674, align 16
  %675 = getelementptr inbounds %struct.option, %struct.option* %673, i32 0, i32 1
  %676 = load i32, i32* @NO_ARG, align 4
  store i32 %676, i32* %675, align 8
  %677 = getelementptr inbounds %struct.option, %struct.option* %673, i32 0, i32 2
  store i32* @get_io_bitmap, i32** %677, align 16
  %678 = getelementptr inbounds %struct.option, %struct.option* %673, i32 0, i32 3
  store i32 1, i32* %678, align 8
  %679 = getelementptr inbounds %struct.option, %struct.option* %673, i64 1
  %680 = getelementptr inbounds %struct.option, %struct.option* %679, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i64 0, i64 0), i8** %680, align 16
  %681 = getelementptr inbounds %struct.option, %struct.option* %679, i32 0, i32 1
  %682 = load i32, i32* @NO_ARG, align 4
  store i32 %682, i32* %681, align 8
  %683 = getelementptr inbounds %struct.option, %struct.option* %679, i32 0, i32 2
  store i32* @get_tsc_offset, i32** %683, align 16
  %684 = getelementptr inbounds %struct.option, %struct.option* %679, i32 0, i32 3
  store i32 1, i32* %684, align 8
  %685 = getelementptr inbounds %struct.option, %struct.option* %679, i64 1
  %686 = getelementptr inbounds %struct.option, %struct.option* %685, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i64 0, i64 0), i8** %686, align 16
  %687 = getelementptr inbounds %struct.option, %struct.option* %685, i32 0, i32 1
  %688 = load i32, i32* @NO_ARG, align 4
  store i32 %688, i32* %687, align 8
  %689 = getelementptr inbounds %struct.option, %struct.option* %685, i32 0, i32 2
  store i32* @get_msr_bitmap, i32** %689, align 16
  %690 = getelementptr inbounds %struct.option, %struct.option* %685, i32 0, i32 3
  store i32 1, i32* %690, align 8
  %691 = getelementptr inbounds %struct.option, %struct.option* %685, i64 1
  %692 = getelementptr inbounds %struct.option, %struct.option* %691, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.107, i64 0, i64 0), i8** %692, align 16
  %693 = getelementptr inbounds %struct.option, %struct.option* %691, i32 0, i32 1
  %694 = load i32, i32* @NO_ARG, align 4
  store i32 %694, i32* %693, align 8
  %695 = getelementptr inbounds %struct.option, %struct.option* %691, i32 0, i32 2
  store i32* @get_msr_bitmap_address, i32** %695, align 16
  %696 = getelementptr inbounds %struct.option, %struct.option* %691, i32 0, i32 3
  store i32 1, i32* %696, align 8
  %697 = getelementptr inbounds %struct.option, %struct.option* %691, i64 1
  %698 = getelementptr inbounds %struct.option, %struct.option* %697, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i64 0, i64 0), i8** %698, align 16
  %699 = getelementptr inbounds %struct.option, %struct.option* %697, i32 0, i32 1
  %700 = load i32, i32* @NO_ARG, align 4
  store i32 %700, i32* %699, align 8
  %701 = getelementptr inbounds %struct.option, %struct.option* %697, i32 0, i32 2
  store i32* @get_guest_pat, i32** %701, align 16
  %702 = getelementptr inbounds %struct.option, %struct.option* %697, i32 0, i32 3
  store i32 1, i32* %702, align 8
  %703 = getelementptr inbounds %struct.option, %struct.option* %697, i64 1
  %704 = getelementptr inbounds %struct.option, %struct.option* %703, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i64 0, i64 0), i8** %704, align 16
  %705 = getelementptr inbounds %struct.option, %struct.option* %703, i32 0, i32 1
  %706 = load i32, i32* @NO_ARG, align 4
  store i32 %706, i32* %705, align 8
  %707 = getelementptr inbounds %struct.option, %struct.option* %703, i32 0, i32 2
  store i32* @get_guest_sysenter, i32** %707, align 16
  %708 = getelementptr inbounds %struct.option, %struct.option* %703, i32 0, i32 3
  store i32 1, i32* %708, align 8
  %709 = getelementptr inbounds %struct.option, %struct.option* %703, i64 1
  %710 = getelementptr inbounds %struct.option, %struct.option* %709, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0), i8** %710, align 16
  %711 = getelementptr inbounds %struct.option, %struct.option* %709, i32 0, i32 1
  %712 = load i32, i32* @NO_ARG, align 4
  store i32 %712, i32* %711, align 8
  %713 = getelementptr inbounds %struct.option, %struct.option* %709, i32 0, i32 2
  store i32* @get_exit_reason, i32** %713, align 16
  %714 = getelementptr inbounds %struct.option, %struct.option* %709, i32 0, i32 3
  store i32 1, i32* %714, align 8
  %715 = getelementptr inbounds %struct.option, %struct.option* %709, i64 1
  %716 = getelementptr inbounds %struct.option, %struct.option* %715, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i64 0, i64 0), i8** %716, align 16
  %717 = getelementptr inbounds %struct.option, %struct.option* %715, i32 0, i32 1
  %718 = load i32, i32* @NO_ARG, align 4
  store i32 %718, i32* %717, align 8
  %719 = getelementptr inbounds %struct.option, %struct.option* %715, i32 0, i32 2
  store i32* @get_x2apic_state, i32** %719, align 16
  %720 = getelementptr inbounds %struct.option, %struct.option* %715, i32 0, i32 3
  store i32 1, i32* %720, align 8
  %721 = getelementptr inbounds %struct.option, %struct.option* %715, i64 1
  %722 = getelementptr inbounds %struct.option, %struct.option* %721, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0), i8** %722, align 16
  %723 = getelementptr inbounds %struct.option, %struct.option* %721, i32 0, i32 1
  %724 = load i32, i32* @NO_ARG, align 4
  store i32 %724, i32* %723, align 8
  %725 = getelementptr inbounds %struct.option, %struct.option* %721, i32 0, i32 2
  store i32* @get_all, i32** %725, align 16
  %726 = getelementptr inbounds %struct.option, %struct.option* %721, i32 0, i32 3
  store i32 1, i32* %726, align 8
  %727 = getelementptr inbounds %struct.option, %struct.option* %721, i64 1
  %728 = getelementptr inbounds %struct.option, %struct.option* %727, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i8** %728, align 16
  %729 = getelementptr inbounds %struct.option, %struct.option* %727, i32 0, i32 1
  %730 = load i32, i32* @NO_ARG, align 4
  store i32 %730, i32* %729, align 8
  %731 = getelementptr inbounds %struct.option, %struct.option* %727, i32 0, i32 2
  store i32* @run, i32** %731, align 16
  %732 = getelementptr inbounds %struct.option, %struct.option* %727, i32 0, i32 3
  store i32 1, i32* %732, align 8
  %733 = getelementptr inbounds %struct.option, %struct.option* %727, i64 1
  %734 = getelementptr inbounds %struct.option, %struct.option* %733, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i64 0, i64 0), i8** %734, align 16
  %735 = getelementptr inbounds %struct.option, %struct.option* %733, i32 0, i32 1
  %736 = load i32, i32* @NO_ARG, align 4
  store i32 %736, i32* %735, align 8
  %737 = getelementptr inbounds %struct.option, %struct.option* %733, i32 0, i32 2
  store i32* @create, i32** %737, align 16
  %738 = getelementptr inbounds %struct.option, %struct.option* %733, i32 0, i32 3
  store i32 1, i32* %738, align 8
  %739 = getelementptr inbounds %struct.option, %struct.option* %733, i64 1
  %740 = getelementptr inbounds %struct.option, %struct.option* %739, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i8** %740, align 16
  %741 = getelementptr inbounds %struct.option, %struct.option* %739, i32 0, i32 1
  %742 = load i32, i32* @NO_ARG, align 4
  store i32 %742, i32* %741, align 8
  %743 = getelementptr inbounds %struct.option, %struct.option* %739, i32 0, i32 2
  store i32* @destroy, i32** %743, align 16
  %744 = getelementptr inbounds %struct.option, %struct.option* %739, i32 0, i32 3
  store i32 1, i32* %744, align 8
  %745 = getelementptr inbounds %struct.option, %struct.option* %739, i64 1
  %746 = getelementptr inbounds %struct.option, %struct.option* %745, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i64 0, i64 0), i8** %746, align 16
  %747 = getelementptr inbounds %struct.option, %struct.option* %745, i32 0, i32 1
  %748 = load i32, i32* @NO_ARG, align 4
  store i32 %748, i32* %747, align 8
  %749 = getelementptr inbounds %struct.option, %struct.option* %745, i32 0, i32 2
  store i32* @inject_nmi, i32** %749, align 16
  %750 = getelementptr inbounds %struct.option, %struct.option* %745, i32 0, i32 3
  store i32 1, i32* %750, align 8
  %751 = getelementptr inbounds %struct.option, %struct.option* %745, i64 1
  %752 = getelementptr inbounds %struct.option, %struct.option* %751, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i64 0, i64 0), i8** %752, align 16
  %753 = getelementptr inbounds %struct.option, %struct.option* %751, i32 0, i32 1
  %754 = load i32, i32* @NO_ARG, align 4
  store i32 %754, i32* %753, align 8
  %755 = getelementptr inbounds %struct.option, %struct.option* %751, i32 0, i32 2
  store i32* @force_reset, i32** %755, align 16
  %756 = getelementptr inbounds %struct.option, %struct.option* %751, i32 0, i32 3
  store i32 1, i32* %756, align 8
  %757 = getelementptr inbounds %struct.option, %struct.option* %751, i64 1
  %758 = getelementptr inbounds %struct.option, %struct.option* %757, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i64 0, i64 0), i8** %758, align 16
  %759 = getelementptr inbounds %struct.option, %struct.option* %757, i32 0, i32 1
  %760 = load i32, i32* @NO_ARG, align 4
  store i32 %760, i32* %759, align 8
  %761 = getelementptr inbounds %struct.option, %struct.option* %757, i32 0, i32 2
  store i32* @force_poweroff, i32** %761, align 16
  %762 = getelementptr inbounds %struct.option, %struct.option* %757, i32 0, i32 3
  store i32 1, i32* %762, align 8
  %763 = getelementptr inbounds %struct.option, %struct.option* %757, i64 1
  %764 = getelementptr inbounds %struct.option, %struct.option* %763, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i64 0, i64 0), i8** %764, align 16
  %765 = getelementptr inbounds %struct.option, %struct.option* %763, i32 0, i32 1
  %766 = load i32, i32* @NO_ARG, align 4
  store i32 %766, i32* %765, align 8
  %767 = getelementptr inbounds %struct.option, %struct.option* %763, i32 0, i32 2
  store i32* @get_active_cpus, i32** %767, align 16
  %768 = getelementptr inbounds %struct.option, %struct.option* %763, i32 0, i32 3
  store i32 1, i32* %768, align 8
  %769 = getelementptr inbounds %struct.option, %struct.option* %763, i64 1
  %770 = getelementptr inbounds %struct.option, %struct.option* %769, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i64 0, i64 0), i8** %770, align 16
  %771 = getelementptr inbounds %struct.option, %struct.option* %769, i32 0, i32 1
  %772 = load i32, i32* @NO_ARG, align 4
  store i32 %772, i32* %771, align 8
  %773 = getelementptr inbounds %struct.option, %struct.option* %769, i32 0, i32 2
  store i32* @get_suspended_cpus, i32** %773, align 16
  %774 = getelementptr inbounds %struct.option, %struct.option* %769, i32 0, i32 3
  store i32 1, i32* %774, align 8
  %775 = getelementptr inbounds %struct.option, %struct.option* %769, i64 1
  %776 = getelementptr inbounds %struct.option, %struct.option* %775, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8** %776, align 16
  %777 = getelementptr inbounds %struct.option, %struct.option* %775, i32 0, i32 1
  %778 = load i32, i32* @NO_ARG, align 4
  store i32 %778, i32* %777, align 8
  %779 = getelementptr inbounds %struct.option, %struct.option* %775, i32 0, i32 2
  store i32* @get_intinfo, i32** %779, align 16
  %780 = getelementptr inbounds %struct.option, %struct.option* %775, i32 0, i32 3
  store i32 1, i32* %780, align 8
  %781 = getelementptr inbounds %struct.option, %struct.option* %775, i64 1
  %782 = getelementptr inbounds %struct.option, %struct.option* %781, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i8** %782, align 16
  %783 = getelementptr inbounds %struct.option, %struct.option* %781, i32 0, i32 1
  %784 = load i32, i32* @NO_ARG, align 4
  store i32 %784, i32* %783, align 8
  %785 = getelementptr inbounds %struct.option, %struct.option* %781, i32 0, i32 2
  store i32* @get_cpu_topology, i32** %785, align 16
  %786 = getelementptr inbounds %struct.option, %struct.option* %781, i32 0, i32 3
  store i32 1, i32* %786, align 8
  %787 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %4, i64 0, i64 0
  %788 = getelementptr inbounds %struct.option, %struct.option* %787, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i64 0, i64 0), i8** %788, align 16
  %789 = getelementptr inbounds %struct.option, %struct.option* %787, i32 0, i32 1
  %790 = load i32, i32* @NO_ARG, align 4
  store i32 %790, i32* %789, align 8
  %791 = getelementptr inbounds %struct.option, %struct.option* %787, i32 0, i32 2
  store i32* @get_pinbased_ctls, i32** %791, align 16
  %792 = getelementptr inbounds %struct.option, %struct.option* %787, i32 0, i32 3
  store i32 1, i32* %792, align 8
  %793 = getelementptr inbounds %struct.option, %struct.option* %787, i64 1
  %794 = getelementptr inbounds %struct.option, %struct.option* %793, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0), i8** %794, align 16
  %795 = getelementptr inbounds %struct.option, %struct.option* %793, i32 0, i32 1
  %796 = load i32, i32* @NO_ARG, align 4
  store i32 %796, i32* %795, align 8
  %797 = getelementptr inbounds %struct.option, %struct.option* %793, i32 0, i32 2
  store i32* @get_procbased_ctls, i32** %797, align 16
  %798 = getelementptr inbounds %struct.option, %struct.option* %793, i32 0, i32 3
  store i32 1, i32* %798, align 8
  %799 = getelementptr inbounds %struct.option, %struct.option* %793, i64 1
  %800 = getelementptr inbounds %struct.option, %struct.option* %799, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.125, i64 0, i64 0), i8** %800, align 16
  %801 = getelementptr inbounds %struct.option, %struct.option* %799, i32 0, i32 1
  %802 = load i32, i32* @NO_ARG, align 4
  store i32 %802, i32* %801, align 8
  %803 = getelementptr inbounds %struct.option, %struct.option* %799, i32 0, i32 2
  store i32* @get_procbased_ctls2, i32** %803, align 16
  %804 = getelementptr inbounds %struct.option, %struct.option* %799, i32 0, i32 3
  store i32 1, i32* %804, align 8
  %805 = getelementptr inbounds %struct.option, %struct.option* %799, i64 1
  %806 = getelementptr inbounds %struct.option, %struct.option* %805, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.126, i64 0, i64 0), i8** %806, align 16
  %807 = getelementptr inbounds %struct.option, %struct.option* %805, i32 0, i32 1
  %808 = load i32, i32* @NO_ARG, align 4
  store i32 %808, i32* %807, align 8
  %809 = getelementptr inbounds %struct.option, %struct.option* %805, i32 0, i32 2
  store i32* @get_vmcs_gla, i32** %809, align 16
  %810 = getelementptr inbounds %struct.option, %struct.option* %805, i32 0, i32 3
  store i32 1, i32* %810, align 8
  %811 = getelementptr inbounds %struct.option, %struct.option* %805, i64 1
  %812 = getelementptr inbounds %struct.option, %struct.option* %811, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.127, i64 0, i64 0), i8** %812, align 16
  %813 = getelementptr inbounds %struct.option, %struct.option* %811, i32 0, i32 1
  %814 = load i32, i32* @NO_ARG, align 4
  store i32 %814, i32* %813, align 8
  %815 = getelementptr inbounds %struct.option, %struct.option* %811, i32 0, i32 2
  store i32* @get_vmcs_gpa, i32** %815, align 16
  %816 = getelementptr inbounds %struct.option, %struct.option* %811, i32 0, i32 3
  store i32 1, i32* %816, align 8
  %817 = getelementptr inbounds %struct.option, %struct.option* %811, i64 1
  %818 = getelementptr inbounds %struct.option, %struct.option* %817, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i64 0, i64 0), i8** %818, align 16
  %819 = getelementptr inbounds %struct.option, %struct.option* %817, i32 0, i32 1
  %820 = load i32, i32* @NO_ARG, align 4
  store i32 %820, i32* %819, align 8
  %821 = getelementptr inbounds %struct.option, %struct.option* %817, i32 0, i32 2
  store i32* @get_vmcs_entry_interruption_info, i32** %821, align 16
  %822 = getelementptr inbounds %struct.option, %struct.option* %817, i32 0, i32 3
  store i32 1, i32* %822, align 8
  %823 = getelementptr inbounds %struct.option, %struct.option* %817, i64 1
  %824 = getelementptr inbounds %struct.option, %struct.option* %823, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.129, i64 0, i64 0), i8** %824, align 16
  %825 = getelementptr inbounds %struct.option, %struct.option* %823, i32 0, i32 1
  %826 = load i32, i32* @NO_ARG, align 4
  store i32 %826, i32* %825, align 8
  %827 = getelementptr inbounds %struct.option, %struct.option* %823, i32 0, i32 2
  store i32* @get_cr0_mask, i32** %827, align 16
  %828 = getelementptr inbounds %struct.option, %struct.option* %823, i32 0, i32 3
  store i32 1, i32* %828, align 8
  %829 = getelementptr inbounds %struct.option, %struct.option* %823, i64 1
  %830 = getelementptr inbounds %struct.option, %struct.option* %829, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.130, i64 0, i64 0), i8** %830, align 16
  %831 = getelementptr inbounds %struct.option, %struct.option* %829, i32 0, i32 1
  %832 = load i32, i32* @NO_ARG, align 4
  store i32 %832, i32* %831, align 8
  %833 = getelementptr inbounds %struct.option, %struct.option* %829, i32 0, i32 2
  store i32* @get_cr0_shadow, i32** %833, align 16
  %834 = getelementptr inbounds %struct.option, %struct.option* %829, i32 0, i32 3
  store i32 1, i32* %834, align 8
  %835 = getelementptr inbounds %struct.option, %struct.option* %829, i64 1
  %836 = getelementptr inbounds %struct.option, %struct.option* %835, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.131, i64 0, i64 0), i8** %836, align 16
  %837 = getelementptr inbounds %struct.option, %struct.option* %835, i32 0, i32 1
  %838 = load i32, i32* @NO_ARG, align 4
  store i32 %838, i32* %837, align 8
  %839 = getelementptr inbounds %struct.option, %struct.option* %835, i32 0, i32 2
  store i32* @get_cr4_mask, i32** %839, align 16
  %840 = getelementptr inbounds %struct.option, %struct.option* %835, i32 0, i32 3
  store i32 1, i32* %840, align 8
  %841 = getelementptr inbounds %struct.option, %struct.option* %835, i64 1
  %842 = getelementptr inbounds %struct.option, %struct.option* %841, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i64 0, i64 0), i8** %842, align 16
  %843 = getelementptr inbounds %struct.option, %struct.option* %841, i32 0, i32 1
  %844 = load i32, i32* @NO_ARG, align 4
  store i32 %844, i32* %843, align 8
  %845 = getelementptr inbounds %struct.option, %struct.option* %841, i32 0, i32 2
  store i32* @get_cr4_shadow, i32** %845, align 16
  %846 = getelementptr inbounds %struct.option, %struct.option* %841, i32 0, i32 3
  store i32 1, i32* %846, align 8
  %847 = getelementptr inbounds %struct.option, %struct.option* %841, i64 1
  %848 = getelementptr inbounds %struct.option, %struct.option* %847, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.133, i64 0, i64 0), i8** %848, align 16
  %849 = getelementptr inbounds %struct.option, %struct.option* %847, i32 0, i32 1
  %850 = load i32, i32* @NO_ARG, align 4
  store i32 %850, i32* %849, align 8
  %851 = getelementptr inbounds %struct.option, %struct.option* %847, i32 0, i32 2
  store i32* @get_cr3_targets, i32** %851, align 16
  %852 = getelementptr inbounds %struct.option, %struct.option* %847, i32 0, i32 3
  store i32 1, i32* %852, align 8
  %853 = getelementptr inbounds %struct.option, %struct.option* %847, i64 1
  %854 = getelementptr inbounds %struct.option, %struct.option* %853, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.134, i64 0, i64 0), i8** %854, align 16
  %855 = getelementptr inbounds %struct.option, %struct.option* %853, i32 0, i32 1
  %856 = load i32, i32* @NO_ARG, align 4
  store i32 %856, i32* %855, align 8
  %857 = getelementptr inbounds %struct.option, %struct.option* %853, i32 0, i32 2
  store i32* @get_tpr_threshold, i32** %857, align 16
  %858 = getelementptr inbounds %struct.option, %struct.option* %853, i32 0, i32 3
  store i32 1, i32* %858, align 8
  %859 = getelementptr inbounds %struct.option, %struct.option* %853, i64 1
  %860 = getelementptr inbounds %struct.option, %struct.option* %859, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.135, i64 0, i64 0), i8** %860, align 16
  %861 = getelementptr inbounds %struct.option, %struct.option* %859, i32 0, i32 1
  %862 = load i32, i32* @NO_ARG, align 4
  store i32 %862, i32* %861, align 8
  %863 = getelementptr inbounds %struct.option, %struct.option* %859, i32 0, i32 2
  store i32* @get_vpid_asid, i32** %863, align 16
  %864 = getelementptr inbounds %struct.option, %struct.option* %859, i32 0, i32 3
  store i32 1, i32* %864, align 8
  %865 = getelementptr inbounds %struct.option, %struct.option* %859, i64 1
  %866 = getelementptr inbounds %struct.option, %struct.option* %865, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.136, i64 0, i64 0), i8** %866, align 16
  %867 = getelementptr inbounds %struct.option, %struct.option* %865, i32 0, i32 1
  %868 = load i32, i32* @NO_ARG, align 4
  store i32 %868, i32* %867, align 8
  %869 = getelementptr inbounds %struct.option, %struct.option* %865, i32 0, i32 2
  store i32* @get_exit_ctls, i32** %869, align 16
  %870 = getelementptr inbounds %struct.option, %struct.option* %865, i32 0, i32 3
  store i32 1, i32* %870, align 8
  %871 = getelementptr inbounds %struct.option, %struct.option* %865, i64 1
  %872 = getelementptr inbounds %struct.option, %struct.option* %871, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.137, i64 0, i64 0), i8** %872, align 16
  %873 = getelementptr inbounds %struct.option, %struct.option* %871, i32 0, i32 1
  %874 = load i32, i32* @NO_ARG, align 4
  store i32 %874, i32* %873, align 8
  %875 = getelementptr inbounds %struct.option, %struct.option* %871, i32 0, i32 2
  store i32* @get_entry_ctls, i32** %875, align 16
  %876 = getelementptr inbounds %struct.option, %struct.option* %871, i32 0, i32 3
  store i32 1, i32* %876, align 8
  %877 = getelementptr inbounds %struct.option, %struct.option* %871, i64 1
  %878 = getelementptr inbounds %struct.option, %struct.option* %877, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.138, i64 0, i64 0), i8** %878, align 16
  %879 = getelementptr inbounds %struct.option, %struct.option* %877, i32 0, i32 1
  %880 = load i32, i32* @NO_ARG, align 4
  store i32 %880, i32* %879, align 8
  %881 = getelementptr inbounds %struct.option, %struct.option* %877, i32 0, i32 2
  store i32* @get_inst_err, i32** %881, align 16
  %882 = getelementptr inbounds %struct.option, %struct.option* %877, i32 0, i32 3
  store i32 1, i32* %882, align 8
  %883 = getelementptr inbounds %struct.option, %struct.option* %877, i64 1
  %884 = getelementptr inbounds %struct.option, %struct.option* %883, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i64 0, i64 0), i8** %884, align 16
  %885 = getelementptr inbounds %struct.option, %struct.option* %883, i32 0, i32 1
  %886 = load i32, i32* @NO_ARG, align 4
  store i32 %886, i32* %885, align 8
  %887 = getelementptr inbounds %struct.option, %struct.option* %883, i32 0, i32 2
  store i32* @get_host_pat, i32** %887, align 16
  %888 = getelementptr inbounds %struct.option, %struct.option* %883, i32 0, i32 3
  store i32 1, i32* %888, align 8
  %889 = getelementptr inbounds %struct.option, %struct.option* %883, i64 1
  %890 = getelementptr inbounds %struct.option, %struct.option* %889, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.140, i64 0, i64 0), i8** %890, align 16
  %891 = getelementptr inbounds %struct.option, %struct.option* %889, i32 0, i32 1
  %892 = load i32, i32* @NO_ARG, align 4
  store i32 %892, i32* %891, align 8
  %893 = getelementptr inbounds %struct.option, %struct.option* %889, i32 0, i32 2
  store i32* @get_host_cr0, i32** %893, align 16
  %894 = getelementptr inbounds %struct.option, %struct.option* %889, i32 0, i32 3
  store i32 1, i32* %894, align 8
  %895 = getelementptr inbounds %struct.option, %struct.option* %889, i64 1
  %896 = getelementptr inbounds %struct.option, %struct.option* %895, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.141, i64 0, i64 0), i8** %896, align 16
  %897 = getelementptr inbounds %struct.option, %struct.option* %895, i32 0, i32 1
  %898 = load i32, i32* @REQ_ARG, align 4
  store i32 %898, i32* %897, align 8
  %899 = getelementptr inbounds %struct.option, %struct.option* %895, i32 0, i32 2
  store i32* null, i32** %899, align 16
  %900 = getelementptr inbounds %struct.option, %struct.option* %895, i32 0, i32 3
  %901 = load i32, i32* @SET_VMCS_ENTRY_INTERRUPTION_INFO, align 4
  store i32 %901, i32* %900, align 8
  %902 = getelementptr inbounds %struct.option, %struct.option* %895, i64 1
  %903 = getelementptr inbounds %struct.option, %struct.option* %902, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.142, i64 0, i64 0), i8** %903, align 16
  %904 = getelementptr inbounds %struct.option, %struct.option* %902, i32 0, i32 1
  %905 = load i32, i32* @NO_ARG, align 4
  store i32 %905, i32* %904, align 8
  %906 = getelementptr inbounds %struct.option, %struct.option* %902, i32 0, i32 2
  store i32* @get_vmcs_exit_qualification, i32** %906, align 16
  %907 = getelementptr inbounds %struct.option, %struct.option* %902, i32 0, i32 3
  store i32 1, i32* %907, align 8
  %908 = getelementptr inbounds %struct.option, %struct.option* %902, i64 1
  %909 = getelementptr inbounds %struct.option, %struct.option* %908, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.143, i64 0, i64 0), i8** %909, align 16
  %910 = getelementptr inbounds %struct.option, %struct.option* %908, i32 0, i32 1
  %911 = load i32, i32* @NO_ARG, align 4
  store i32 %911, i32* %910, align 8
  %912 = getelementptr inbounds %struct.option, %struct.option* %908, i32 0, i32 2
  store i32* @get_vmcs_exit_inst_length, i32** %912, align 16
  %913 = getelementptr inbounds %struct.option, %struct.option* %908, i32 0, i32 3
  store i32 1, i32* %913, align 8
  %914 = getelementptr inbounds %struct.option, %struct.option* %908, i64 1
  %915 = getelementptr inbounds %struct.option, %struct.option* %914, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.144, i64 0, i64 0), i8** %915, align 16
  %916 = getelementptr inbounds %struct.option, %struct.option* %914, i32 0, i32 1
  %917 = load i32, i32* @NO_ARG, align 4
  store i32 %917, i32* %916, align 8
  %918 = getelementptr inbounds %struct.option, %struct.option* %914, i32 0, i32 2
  store i32* @get_vmcs_interruptibility, i32** %918, align 16
  %919 = getelementptr inbounds %struct.option, %struct.option* %914, i32 0, i32 3
  store i32 1, i32* %919, align 8
  %920 = getelementptr inbounds %struct.option, %struct.option* %914, i64 1
  %921 = getelementptr inbounds %struct.option, %struct.option* %920, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.145, i64 0, i64 0), i8** %921, align 16
  %922 = getelementptr inbounds %struct.option, %struct.option* %920, i32 0, i32 1
  %923 = load i32, i32* @NO_ARG, align 4
  store i32 %923, i32* %922, align 8
  %924 = getelementptr inbounds %struct.option, %struct.option* %920, i32 0, i32 2
  store i32* @get_vmcs_exit_interruption_error, i32** %924, align 16
  %925 = getelementptr inbounds %struct.option, %struct.option* %920, i32 0, i32 3
  store i32 1, i32* %925, align 8
  %926 = getelementptr inbounds %struct.option, %struct.option* %920, i64 1
  %927 = getelementptr inbounds %struct.option, %struct.option* %926, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0), i8** %927, align 16
  %928 = getelementptr inbounds %struct.option, %struct.option* %926, i32 0, i32 1
  %929 = load i32, i32* @NO_ARG, align 4
  store i32 %929, i32* %928, align 8
  %930 = getelementptr inbounds %struct.option, %struct.option* %926, i32 0, i32 2
  store i32* @get_vmcs_exit_interruption_info, i32** %930, align 16
  %931 = getelementptr inbounds %struct.option, %struct.option* %926, i32 0, i32 3
  store i32 1, i32* %931, align 8
  %932 = getelementptr inbounds %struct.option, %struct.option* %926, i64 1
  %933 = getelementptr inbounds %struct.option, %struct.option* %932, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), i8** %933, align 16
  %934 = getelementptr inbounds %struct.option, %struct.option* %932, i32 0, i32 1
  %935 = load i32, i32* @NO_ARG, align 4
  store i32 %935, i32* %934, align 8
  %936 = getelementptr inbounds %struct.option, %struct.option* %932, i32 0, i32 2
  store i32* @get_vmcs_link, i32** %936, align 16
  %937 = getelementptr inbounds %struct.option, %struct.option* %932, i32 0, i32 3
  store i32 1, i32* %937, align 8
  %938 = getelementptr inbounds %struct.option, %struct.option* %932, i64 1
  %939 = getelementptr inbounds %struct.option, %struct.option* %938, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i64 0, i64 0), i8** %939, align 16
  %940 = getelementptr inbounds %struct.option, %struct.option* %938, i32 0, i32 1
  %941 = load i32, i32* @NO_ARG, align 4
  store i32 %941, i32* %940, align 8
  %942 = getelementptr inbounds %struct.option, %struct.option* %938, i32 0, i32 2
  store i32* @get_host_cr3, i32** %942, align 16
  %943 = getelementptr inbounds %struct.option, %struct.option* %938, i32 0, i32 3
  store i32 1, i32* %943, align 8
  %944 = getelementptr inbounds %struct.option, %struct.option* %938, i64 1
  %945 = getelementptr inbounds %struct.option, %struct.option* %944, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i64 0, i64 0), i8** %945, align 16
  %946 = getelementptr inbounds %struct.option, %struct.option* %944, i32 0, i32 1
  %947 = load i32, i32* @NO_ARG, align 4
  store i32 %947, i32* %946, align 8
  %948 = getelementptr inbounds %struct.option, %struct.option* %944, i32 0, i32 2
  store i32* @get_host_cr4, i32** %948, align 16
  %949 = getelementptr inbounds %struct.option, %struct.option* %944, i32 0, i32 3
  store i32 1, i32* %949, align 8
  %950 = getelementptr inbounds %struct.option, %struct.option* %944, i64 1
  %951 = getelementptr inbounds %struct.option, %struct.option* %950, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i64 0, i64 0), i8** %951, align 16
  %952 = getelementptr inbounds %struct.option, %struct.option* %950, i32 0, i32 1
  %953 = load i32, i32* @NO_ARG, align 4
  store i32 %953, i32* %952, align 8
  %954 = getelementptr inbounds %struct.option, %struct.option* %950, i32 0, i32 2
  store i32* @get_host_rip, i32** %954, align 16
  %955 = getelementptr inbounds %struct.option, %struct.option* %950, i32 0, i32 3
  store i32 1, i32* %955, align 8
  %956 = getelementptr inbounds %struct.option, %struct.option* %950, i64 1
  %957 = getelementptr inbounds %struct.option, %struct.option* %956, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.151, i64 0, i64 0), i8** %957, align 16
  %958 = getelementptr inbounds %struct.option, %struct.option* %956, i32 0, i32 1
  %959 = load i32, i32* @NO_ARG, align 4
  store i32 %959, i32* %958, align 8
  %960 = getelementptr inbounds %struct.option, %struct.option* %956, i32 0, i32 2
  store i32* @get_host_rsp, i32** %960, align 16
  %961 = getelementptr inbounds %struct.option, %struct.option* %956, i32 0, i32 3
  store i32 1, i32* %961, align 8
  %962 = getelementptr inbounds %struct.option, %struct.option* %956, i64 1
  %963 = getelementptr inbounds %struct.option, %struct.option* %962, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.152, i64 0, i64 0), i8** %963, align 16
  %964 = getelementptr inbounds %struct.option, %struct.option* %962, i32 0, i32 1
  %965 = load i32, i32* @NO_ARG, align 4
  store i32 %965, i32* %964, align 8
  %966 = getelementptr inbounds %struct.option, %struct.option* %962, i32 0, i32 2
  store i32* @get_apic_access_addr, i32** %966, align 16
  %967 = getelementptr inbounds %struct.option, %struct.option* %962, i32 0, i32 3
  store i32 1, i32* %967, align 8
  %968 = getelementptr inbounds %struct.option, %struct.option* %962, i64 1
  %969 = getelementptr inbounds %struct.option, %struct.option* %968, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i64 0, i64 0), i8** %969, align 16
  %970 = getelementptr inbounds %struct.option, %struct.option* %968, i32 0, i32 1
  %971 = load i32, i32* @NO_ARG, align 4
  store i32 %971, i32* %970, align 8
  %972 = getelementptr inbounds %struct.option, %struct.option* %968, i32 0, i32 2
  store i32* @get_virtual_apic_addr, i32** %972, align 16
  %973 = getelementptr inbounds %struct.option, %struct.option* %968, i32 0, i32 3
  store i32 1, i32* %973, align 8
  %974 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %5, i64 0, i64 0
  %975 = getelementptr inbounds %struct.option, %struct.option* %974, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.154, i64 0, i64 0), i8** %975, align 16
  %976 = getelementptr inbounds %struct.option, %struct.option* %974, i32 0, i32 1
  %977 = load i32, i32* @NO_ARG, align 4
  store i32 %977, i32* %976, align 8
  %978 = getelementptr inbounds %struct.option, %struct.option* %974, i32 0, i32 2
  store i32* @get_vmcb_intercept, i32** %978, align 16
  %979 = getelementptr inbounds %struct.option, %struct.option* %974, i32 0, i32 3
  store i32 1, i32* %979, align 8
  %980 = getelementptr inbounds %struct.option, %struct.option* %974, i64 1
  %981 = getelementptr inbounds %struct.option, %struct.option* %980, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i64 0, i64 0), i8** %981, align 16
  %982 = getelementptr inbounds %struct.option, %struct.option* %980, i32 0, i32 1
  %983 = load i32, i32* @NO_ARG, align 4
  store i32 %983, i32* %982, align 8
  %984 = getelementptr inbounds %struct.option, %struct.option* %980, i32 0, i32 2
  store i32* @get_vpid_asid, i32** %984, align 16
  %985 = getelementptr inbounds %struct.option, %struct.option* %980, i32 0, i32 3
  store i32 1, i32* %985, align 8
  %986 = getelementptr inbounds %struct.option, %struct.option* %980, i64 1
  %987 = getelementptr inbounds %struct.option, %struct.option* %986, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i64 0, i64 0), i8** %987, align 16
  %988 = getelementptr inbounds %struct.option, %struct.option* %986, i32 0, i32 1
  %989 = load i32, i32* @NO_ARG, align 4
  store i32 %989, i32* %988, align 8
  %990 = getelementptr inbounds %struct.option, %struct.option* %986, i32 0, i32 2
  store i32* @get_vmcb_exit_details, i32** %990, align 16
  %991 = getelementptr inbounds %struct.option, %struct.option* %986, i32 0, i32 3
  store i32 1, i32* %991, align 8
  %992 = getelementptr inbounds %struct.option, %struct.option* %986, i64 1
  %993 = getelementptr inbounds %struct.option, %struct.option* %992, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.157, i64 0, i64 0), i8** %993, align 16
  %994 = getelementptr inbounds %struct.option, %struct.option* %992, i32 0, i32 1
  %995 = load i32, i32* @NO_ARG, align 4
  store i32 %995, i32* %994, align 8
  %996 = getelementptr inbounds %struct.option, %struct.option* %992, i32 0, i32 2
  store i32* @get_vmcb_tlb_ctrl, i32** %996, align 16
  %997 = getelementptr inbounds %struct.option, %struct.option* %992, i32 0, i32 3
  store i32 1, i32* %997, align 8
  %998 = getelementptr inbounds %struct.option, %struct.option* %992, i64 1
  %999 = getelementptr inbounds %struct.option, %struct.option* %998, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i64 0, i64 0), i8** %999, align 16
  %1000 = getelementptr inbounds %struct.option, %struct.option* %998, i32 0, i32 1
  %1001 = load i32, i32* @NO_ARG, align 4
  store i32 %1001, i32* %1000, align 8
  %1002 = getelementptr inbounds %struct.option, %struct.option* %998, i32 0, i32 2
  store i32* @get_vmcb_virq, i32** %1002, align 16
  %1003 = getelementptr inbounds %struct.option, %struct.option* %998, i32 0, i32 3
  store i32 1, i32* %1003, align 8
  %1004 = getelementptr inbounds %struct.option, %struct.option* %998, i64 1
  %1005 = getelementptr inbounds %struct.option, %struct.option* %1004, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i64 0, i64 0), i8** %1005, align 16
  %1006 = getelementptr inbounds %struct.option, %struct.option* %1004, i32 0, i32 1
  %1007 = load i32, i32* @NO_ARG, align 4
  store i32 %1007, i32* %1006, align 8
  %1008 = getelementptr inbounds %struct.option, %struct.option* %1004, i32 0, i32 2
  store i32* @get_apic_access_addr, i32** %1008, align 16
  %1009 = getelementptr inbounds %struct.option, %struct.option* %1004, i32 0, i32 3
  store i32 1, i32* %1009, align 8
  %1010 = getelementptr inbounds %struct.option, %struct.option* %1004, i64 1
  %1011 = getelementptr inbounds %struct.option, %struct.option* %1010, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i64 0, i64 0), i8** %1011, align 16
  %1012 = getelementptr inbounds %struct.option, %struct.option* %1010, i32 0, i32 1
  %1013 = load i32, i32* @NO_ARG, align 4
  store i32 %1013, i32* %1012, align 8
  %1014 = getelementptr inbounds %struct.option, %struct.option* %1010, i32 0, i32 2
  store i32* @get_virtual_apic_addr, i32** %1014, align 16
  %1015 = getelementptr inbounds %struct.option, %struct.option* %1010, i32 0, i32 3
  store i32 1, i32* %1015, align 8
  %1016 = getelementptr inbounds %struct.option, %struct.option* %1010, i64 1
  %1017 = getelementptr inbounds %struct.option, %struct.option* %1016, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.161, i64 0, i64 0), i8** %1017, align 16
  %1018 = getelementptr inbounds %struct.option, %struct.option* %1016, i32 0, i32 1
  %1019 = load i32, i32* @NO_ARG, align 4
  store i32 %1019, i32* %1018, align 8
  %1020 = getelementptr inbounds %struct.option, %struct.option* %1016, i32 0, i32 2
  store i32* @get_avic_table, i32** %1020, align 16
  %1021 = getelementptr inbounds %struct.option, %struct.option* %1016, i32 0, i32 3
  store i32 1, i32* %1021, align 8
  %1022 = bitcast %struct.option* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1022, i8 0, i64 32, i1 false)
  store i32 3936, i32* %9, align 4
  %1023 = load i32, i32* %2, align 4
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1030

1025:                                             ; preds = %1
  %1026 = load i32, i32* %9, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = add i64 %1027, 992
  %1029 = trunc i64 %1028 to i32
  store i32 %1029, i32* %9, align 4
  br label %1035

1030:                                             ; preds = %1
  %1031 = load i32, i32* %9, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = add i64 %1032, 256
  %1034 = trunc i64 %1033 to i32
  store i32 %1034, i32* %9, align 4
  br label %1035

1035:                                             ; preds = %1030, %1025
  %1036 = load i32, i32* %9, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = add i64 %1037, 32
  %1039 = trunc i64 %1038 to i32
  store i32 %1039, i32* %9, align 4
  %1040 = load i32, i32* %9, align 4
  %1041 = call %struct.option* @malloc(i32 %1040)
  store %struct.option* %1041, %struct.option** %7, align 8
  %1042 = load %struct.option*, %struct.option** %7, align 8
  %1043 = bitcast %struct.option* %1042 to i8*
  store i8* %1043, i8** %8, align 8
  %1044 = load i8*, i8** %8, align 8
  %1045 = getelementptr inbounds [123 x %struct.option], [123 x %struct.option]* %3, i64 0, i64 0
  %1046 = call i32 @memcpy(i8* %1044, %struct.option* %1045, i32 3936)
  %1047 = load i8*, i8** %8, align 8
  %1048 = getelementptr inbounds i8, i8* %1047, i64 3936
  store i8* %1048, i8** %8, align 8
  %1049 = load i32, i32* %2, align 4
  %1050 = icmp ne i32 %1049, 0
  br i1 %1050, label %1051, label %1057

1051:                                             ; preds = %1035
  %1052 = load i8*, i8** %8, align 8
  %1053 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* %4, i64 0, i64 0
  %1054 = call i32 @memcpy(i8* %1052, %struct.option* %1053, i32 992)
  %1055 = load i8*, i8** %8, align 8
  %1056 = getelementptr inbounds i8, i8* %1055, i64 992
  store i8* %1056, i8** %8, align 8
  br label %1063

1057:                                             ; preds = %1035
  %1058 = load i8*, i8** %8, align 8
  %1059 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %5, i64 0, i64 0
  %1060 = call i32 @memcpy(i8* %1058, %struct.option* %1059, i32 256)
  %1061 = load i8*, i8** %8, align 8
  %1062 = getelementptr inbounds i8, i8* %1061, i64 256
  store i8* %1062, i8** %8, align 8
  br label %1063

1063:                                             ; preds = %1057, %1051
  %1064 = load i8*, i8** %8, align 8
  %1065 = call i32 @memcpy(i8* %1064, %struct.option* %6, i32 32)
  %1066 = load i8*, i8** %8, align 8
  %1067 = getelementptr inbounds i8, i8* %1066, i64 32
  store i8* %1067, i8** %8, align 8
  %1068 = load %struct.option*, %struct.option** %7, align 8
  ret %struct.option* %1068
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.option* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, %struct.option*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
