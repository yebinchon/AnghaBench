; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_cpu_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_legacy.c_cpu_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_device = type { i32 }

@tsc_is_invariant = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @cpu_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.cpu_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %29 [
    i32 128, label %12
    i32 129, label %20
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.cpu_device* @device_get_ivars(i32 %13)
  store %struct.cpu_device* %14, %struct.cpu_device** %10, align 8
  %15 = load %struct.cpu_device*, %struct.cpu_device** %10, align 8
  %16 = getelementptr inbounds %struct.cpu_device, %struct.cpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %9, align 8
  store i64 %18, i64* %19, align 8
  br label %31

20:                                               ; preds = %4
  %21 = load i32, i32* @tsc_is_invariant, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 @atomic_load_acq_64(i32* @tsc_freq)
  %25 = sdiv i32 %24, 1000000
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  br label %31

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %4, %28
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %23, %12
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.cpu_device* @device_get_ivars(i32) #1

declare dso_local i32 @atomic_load_acq_64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
