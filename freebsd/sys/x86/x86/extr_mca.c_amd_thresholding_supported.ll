; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@amd_rascap = common dso_local global i32 0, align 4
@AMDRAS_SCALABLE_MCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amd_thresholding_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_thresholding_supported() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @cpu_vendor_id, align 8
  %3 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = load i32, i32* @cpu_id, align 4
  %8 = call i32 @CPUID_TO_FAMILY(i32 %7)
  %9 = icmp sge i32 %8, 16
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* @cpu_id, align 4
  %12 = call i32 @CPUID_TO_FAMILY(i32 %11)
  %13 = icmp sle i32 %12, 22
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %1, align 4
  br label %26

15:                                               ; preds = %10, %6
  %16 = load i32, i32* @cpu_id, align 4
  %17 = call i32 @CPUID_TO_FAMILY(i32 %16)
  %18 = icmp sge i32 %17, 23
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @amd_rascap, align 4
  %21 = load i32, i32* @AMDRAS_SCALABLE_MCA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %19, %14, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
