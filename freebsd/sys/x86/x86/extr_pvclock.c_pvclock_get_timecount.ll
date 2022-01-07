; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_get_timecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_get_timecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32 }

@PVCLOCK_FLAG_TSC_STABLE = common dso_local global i32 0, align 4
@pvclock_last_cycles = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pvclock_get_timecount(%struct.pvclock_vcpu_time_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %3, align 8
  %7 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %8 = call i32 @pvclock_read_time_info(%struct.pvclock_vcpu_time_info* %7, i64* %4, i32* %6)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PVCLOCK_FLAG_TSC_STABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %32

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %24, %15
  %17 = call i64 @atomic_load_acq_64(i32* @pvclock_last_cycles)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %32

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @atomic_cmpset_64(i32* @pvclock_last_cycles, i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %16, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %21, %13
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i32 @pvclock_read_time_info(%struct.pvclock_vcpu_time_info*, i64*, i32*) #1

declare dso_local i64 @atomic_load_acq_64(i32*) #1

declare dso_local i32 @atomic_cmpset_64(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
