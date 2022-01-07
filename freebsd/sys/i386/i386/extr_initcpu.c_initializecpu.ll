; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_initcpu.c_initializecpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_initcpu.c_initializecpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_XMM = common dso_local global i32 0, align 4
@CPUID_FXSR = common dso_local global i32 0, align 4
@CR4_FXSR = common dso_local global i32 0, align 4
@CR4_XMM = common dso_local global i32 0, align 4
@hw_instruction_sse = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i32 0, align 4
@elf32_nxstack = common dso_local global i64 0, align 8
@MSR_EFER = common dso_local global i32 0, align 4
@EFER_NXE = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_RDTSCP = common dso_local global i32 0, align 4
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_RDPID = common dso_local global i32 0, align 4
@MSR_TSC_AUX = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@MSR_HWCR = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initializecpu() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cpu, align 4
  switch i32 %2, label %3 [
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @cpu_feature, align 4
  %6 = load i32, i32* @CPUID_XMM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load i32, i32* @cpu_feature, align 4
  %11 = load i32, i32* @CPUID_FXSR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = call i32 (...) @rcr4()
  %16 = load i32, i32* @CR4_FXSR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CR4_XMM, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @load_cr4(i32 %19)
  store i32 1, i32* @hw_instruction_sse, align 4
  store i32 1, i32* @cpu_fxsr, align 4
  br label %21

21:                                               ; preds = %14, %9, %4
  %22 = load i64, i64* @elf32_nxstack, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @MSR_EFER, align 4
  %26 = call i32 @rdmsr(i32 %25)
  %27 = load i32, i32* @EFER_NXE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @MSR_EFER, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @wrmsr(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* @amd_feature, align 4
  %34 = load i32, i32* @AMDID_RDTSCP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @cpu_stdext_feature2, align 4
  %39 = load i32, i32* @CPUID_STDEXT2_RDPID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @MSR_TSC_AUX, align 4
  %44 = load i32, i32* @cpuid, align 4
  %45 = call i32 @PCPU_GET(i32 %44)
  %46 = call i32 @wrmsr(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
