; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppb_release_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppb_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppb_data = type { i64, i32 }
%struct.ppb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppb_release_bus(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ppb_data*, align 8
  %7 = alloca %struct.ppb_device*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.ppb_data* @DEVTOSOFTC(i64 %8)
  store %struct.ppb_data* %9, %struct.ppb_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @device_get_ivars(i64 %10)
  %12 = inttoptr i64 %11 to %struct.ppb_device*
  store %struct.ppb_device* %12, %struct.ppb_device** %7, align 8
  %13 = load %struct.ppb_data*, %struct.ppb_data** %6, align 8
  %14 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32 %15, i32 %16)
  %18 = load %struct.ppb_data*, %struct.ppb_data** %6, align 8
  %19 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EACCES, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @ppb_get_mode(i64 %26)
  %28 = load %struct.ppb_device*, %struct.ppb_device** %7, align 8
  %29 = getelementptr inbounds %struct.ppb_device, %struct.ppb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ppb_device*, %struct.ppb_device** %7, align 8
  %32 = getelementptr inbounds %struct.ppb_device, %struct.ppb_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.ppb_data*, %struct.ppb_data** %6, align 8
  %35 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.ppb_data*, %struct.ppb_data** %6, align 8
  %37 = call i32 @wakeup(%struct.ppb_data* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ppb_data* @DEVTOSOFTC(i64) #1

declare dso_local i64 @device_get_ivars(i64) #1

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @ppb_get_mode(i64) #1

declare dso_local i32 @wakeup(%struct.ppb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
