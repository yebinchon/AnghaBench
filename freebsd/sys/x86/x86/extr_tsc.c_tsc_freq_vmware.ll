; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_vmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_vmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hv_high = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@VMW_HVCMD_GETHZ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@tsc_is_invariant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tsc_freq_vmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc_freq_vmware() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = load i32, i32* @hv_high, align 4
  %3 = icmp sge i32 %2, 1073741840
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %6 = call i32 @do_cpuid(i32 1073741840, i32* %5)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %8 = load i32, i32* %7, align 16
  %9 = mul nsw i32 %8, 1000
  store i32 %9, i32* @tsc_freq, align 4
  br label %26

10:                                               ; preds = %0
  %11 = load i32, i32* @VMW_HVCMD_GETHZ, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %13 = call i32 @vmware_hvcall(i32 %11, i32* %12)
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UINT_MAX, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 32
  %24 = or i32 %20, %23
  store i32 %24, i32* @tsc_freq, align 4
  br label %25

25:                                               ; preds = %18, %10
  br label %26

26:                                               ; preds = %25, %4
  store i32 1, i32* @tsc_is_invariant, align 4
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @vmware_hvcall(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
