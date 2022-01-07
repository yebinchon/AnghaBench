; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_hw_ibrs_recalculate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_hw_ibrs_recalculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_ia32_arch_caps = common dso_local global i32 0, align 4
@IA32_ARCH_CAP_IBRS_ALL = common dso_local global i32 0, align 4
@hw_ibrs_disable = common dso_local global i64 0, align 8
@MSR_IA32_SPEC_CTRL = common dso_local global i32 0, align 4
@IA32_SPEC_CTRL_IBRS = common dso_local global i64 0, align 8
@cpu_stdext_feature3 = common dso_local global i32 0, align 4
@CPUID_STDEXT3_IBPB = common dso_local global i32 0, align 4
@hw_ibrs_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_ibrs_recalculate() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @cpu_ia32_arch_caps, align 4
  %3 = load i32, i32* @IA32_ARCH_CAP_IBRS_ALL, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %0
  %7 = load i64, i64* @hw_ibrs_disable, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %11 = call i64 @rdmsr(i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* @IA32_SPEC_CTRL_IBRS, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %1, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %1, align 8
  %16 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @wrmsr(i32 %16, i64 %17)
  br label %28

19:                                               ; preds = %6
  %20 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %21 = call i64 @rdmsr(i32 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @IA32_SPEC_CTRL_IBRS, align 8
  %23 = load i64, i64* %1, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %1, align 8
  %25 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @wrmsr(i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %19, %9
  br label %41

29:                                               ; preds = %0
  %30 = load i32, i32* @cpu_stdext_feature3, align 4
  %31 = load i32, i32* @CPUID_STDEXT3_IBPB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @hw_ibrs_disable, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* @hw_ibrs_active, align 4
  br label %41

41:                                               ; preds = %38, %28
  ret void
}

declare dso_local i64 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
