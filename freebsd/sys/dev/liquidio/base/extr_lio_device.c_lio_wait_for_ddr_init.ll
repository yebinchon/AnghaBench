; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_wait_for_ddr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_wait_for_ddr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_wait_for_ddr_init(%struct.octeon_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ule i64 %21, %23
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ true, %16 ], [ %24, %20 ]
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i1 [ false, %13 ], [ %26, %25 ]
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %31 = call i32 @lio_mem_access_ok(%struct.octeon_device* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @lio_sleep_timeout(i32 100)
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 100
  store i64 %39, i64* %7, align 8
  br label %13

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @lio_mem_access_ok(%struct.octeon_device*) #1

declare dso_local i32 @lio_sleep_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
