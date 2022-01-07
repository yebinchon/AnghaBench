; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2787 x i8] c"Usage: %s --vm=<vmname>\0A       [--cpu=<vcpu_number>]\0A       [--create]\0A       [--destroy]\0A       [--get-all]\0A       [--get-stats]\0A       [--set-desc-ds]\0A       [--get-desc-ds]\0A       [--set-desc-es]\0A       [--get-desc-es]\0A       [--set-desc-gs]\0A       [--get-desc-gs]\0A       [--set-desc-fs]\0A       [--get-desc-fs]\0A       [--set-desc-cs]\0A       [--get-desc-cs]\0A       [--set-desc-ss]\0A       [--get-desc-ss]\0A       [--set-desc-tr]\0A       [--get-desc-tr]\0A       [--set-desc-ldtr]\0A       [--get-desc-ldtr]\0A       [--set-desc-gdtr]\0A       [--get-desc-gdtr]\0A       [--set-desc-idtr]\0A       [--get-desc-idtr]\0A       [--run]\0A       [--capname=<capname>]\0A       [--getcap]\0A       [--setcap=<0|1>]\0A       [--desc-base=<BASE>]\0A       [--desc-limit=<LIMIT>]\0A       [--desc-access=<ACCESS>]\0A       [--set-cr0=<CR0>]\0A       [--get-cr0]\0A       [--set-cr2=<CR2>]\0A       [--get-cr2]\0A       [--set-cr3=<CR3>]\0A       [--get-cr3]\0A       [--set-cr4=<CR4>]\0A       [--get-cr4]\0A       [--set-dr0=<DR0>]\0A       [--get-dr0]\0A       [--set-dr1=<DR1>]\0A       [--get-dr1]\0A       [--set-dr2=<DR2>]\0A       [--get-dr2]\0A       [--set-dr3=<DR3>]\0A       [--get-dr3]\0A       [--set-dr6=<DR6>]\0A       [--get-dr6]\0A       [--set-dr7=<DR7>]\0A       [--get-dr7]\0A       [--set-rsp=<RSP>]\0A       [--get-rsp]\0A       [--set-rip=<RIP>]\0A       [--get-rip]\0A       [--get-rax]\0A       [--set-rax=<RAX>]\0A       [--get-rbx]\0A       [--get-rcx]\0A       [--get-rdx]\0A       [--get-rsi]\0A       [--get-rdi]\0A       [--get-rbp]\0A       [--get-r8]\0A       [--get-r9]\0A       [--get-r10]\0A       [--get-r11]\0A       [--get-r12]\0A       [--get-r13]\0A       [--get-r14]\0A       [--get-r15]\0A       [--set-rflags=<RFLAGS>]\0A       [--get-rflags]\0A       [--set-cs]\0A       [--get-cs]\0A       [--set-ds]\0A       [--get-ds]\0A       [--set-es]\0A       [--get-es]\0A       [--set-fs]\0A       [--get-fs]\0A       [--set-gs]\0A       [--get-gs]\0A       [--set-ss]\0A       [--get-ss]\0A       [--get-tr]\0A       [--get-ldtr]\0A       [--set-x2apic-state=<state>]\0A       [--get-x2apic-state]\0A       [--unassign-pptdev=<bus/slot/func>]\0A       [--set-mem=<memory in units of MB>]\0A       [--get-lowmem]\0A       [--get-highmem]\0A       [--get-gpa-pmap]\0A       [--assert-lapic-lvt=<pin>]\0A       [--inject-nmi]\0A       [--force-reset]\0A       [--force-poweroff]\0A       [--get-rtc-time]\0A       [--set-rtc-time=<secs>]\0A       [--get-rtc-nvram]\0A       [--set-rtc-nvram=<val>]\0A       [--rtc-nvram-offset=<offset>]\0A       [--get-active-cpus]\0A       [--get-suspended-cpus]\0A       [--get-intinfo]\0A       [--get-eptp]\0A       [--set-exception-bitmap]\0A       [--get-exception-bitmap]\0A       [--get-tsc-offset]\0A       [--get-guest-pat]\0A       [--get-io-bitmap-address]\0A       [--get-msr-bitmap]\0A       [--get-msr-bitmap-address]\0A       [--get-guest-sysenter]\0A       [--get-exit-reason]\0A       [--get-cpu-topology]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1036 x i8] c"       [--get-vmcs-pinbased-ctls]\0A       [--get-vmcs-procbased-ctls]\0A       [--get-vmcs-procbased-ctls2]\0A       [--get-vmcs-entry-interruption-info]\0A       [--set-vmcs-entry-interruption-info=<info>]\0A       [--get-vmcs-guest-physical-address\0A       [--get-vmcs-guest-linear-address\0A       [--get-vmcs-host-pat]\0A       [--get-vmcs-host-cr0]\0A       [--get-vmcs-host-cr3]\0A       [--get-vmcs-host-cr4]\0A       [--get-vmcs-host-rip]\0A       [--get-vmcs-host-rsp]\0A       [--get-vmcs-cr0-mask]\0A       [--get-vmcs-cr0-shadow]\0A       [--get-vmcs-cr4-mask]\0A       [--get-vmcs-cr4-shadow]\0A       [--get-vmcs-cr3-targets]\0A       [--get-vmcs-apic-access-address]\0A       [--get-vmcs-virtual-apic-address]\0A       [--get-vmcs-tpr-threshold]\0A       [--get-vmcs-vpid]\0A       [--get-vmcs-instruction-error]\0A       [--get-vmcs-exit-ctls]\0A       [--get-vmcs-entry-ctls]\0A       [--get-vmcs-link]\0A       [--get-vmcs-exit-qualification]\0A       [--get-vmcs-exit-interruption-info]\0A       [--get-vmcs-exit-interruption-error]\0A       [--get-vmcs-interruptibility]\0A\00", align 1
@.str.2 = private unnamed_addr constant [232 x i8] c"       [--get-vmcb-intercepts]\0A       [--get-vmcb-asid]\0A       [--get-vmcb-exit-details]\0A       [--get-vmcb-tlb-ctrl]\0A       [--get-vmcb-virq]\0A       [--get-avic-apic-bar]\0A       [--get-avic-backing-page]\0A       [--get-avic-table]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([2787 x i8], [2787 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([1036 x i8], [1036 x i8]* @.str.1, i64 0, i64 0))
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
