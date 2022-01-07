; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_fix_cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_fix_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@IA32_MISC_EN_LIMCPUID = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@MSR_EXTFEATURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fix_cpuid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cpu_vendor_id, align 8
  %4 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %0
  %7 = load i32, i32* @cpu_id, align 4
  %8 = call i32 @CPUID_TO_FAMILY(i32 %7)
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @cpu_id, align 4
  %12 = call i32 @CPUID_TO_MODEL(i32 %11)
  %13 = icmp sge i32 %12, 3
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6
  %15 = load i32, i32* @cpu_id, align 4
  %16 = call i32 @CPUID_TO_FAMILY(i32 %15)
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i32, i32* @cpu_id, align 4
  %20 = call i32 @CPUID_TO_MODEL(i32 %19)
  %21 = icmp sge i32 %20, 14
  br i1 %21, label %22, label %38

22:                                               ; preds = %18, %10
  %23 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %24 = call i32 @rdmsr(i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @IA32_MISC_EN_LIMCPUID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @IA32_MISC_EN_LIMCPUID, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @wrmsr(i32 %34, i32 %35)
  store i32 1, i32* %1, align 4
  br label %64

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %18, %14, %0
  %39 = load i64, i64* @vm_guest, align 8
  %40 = load i64, i64* @VM_GUEST_NO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i64, i64* @cpu_vendor_id, align 8
  %44 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i32, i32* @cpu_id, align 4
  %48 = call i32 @CPUID_TO_FAMILY(i32 %47)
  %49 = icmp eq i32 %48, 21
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* @MSR_EXTFEATURES, align 4
  %52 = call i32 @rdmsr(i32 %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, undef
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = or i32 %57, undef
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* @MSR_EXTFEATURES, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @wrmsr(i32 %59, i32 %60)
  store i32 1, i32* %1, align 4
  br label %64

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %46, %42, %38
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %63, %56, %29
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
