; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_request_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_request_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no active PMU request state\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid PMU state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @siba_request_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_request_clock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siba_softc*, align 8
  %9 = alloca %struct.siba_devinfo*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @device_get_parent(i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.siba_softc* @device_get_softc(i64 %18)
  store %struct.siba_softc* %19, %struct.siba_softc** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.siba_devinfo* @device_get_ivars(i64 %20)
  store %struct.siba_devinfo* %21, %struct.siba_devinfo** %9, align 8
  %22 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %23 = call i32 @SIBA_LOCK(%struct.siba_softc* %22)
  %24 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %25 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %57 [
    i32 129, label %27
    i32 131, label %32
    i32 128, label %39
    i32 130, label %50
  ]

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %30 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %17
  %33 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %34 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bhnd_generic_request_clock(i64 %35, i64 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %17
  %40 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %41 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bhnd_pwrctl_request_clock(i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %48 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %17
  %51 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %52 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %51)
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %55 [
    i32 134, label %54
    i32 132, label %54
    i32 135, label %54
    i32 133, label %54
  ]

54:                                               ; preds = %50, %50, %50, %50
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @ENODEV, align 4
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %17
  %58 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %59 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %55, %54, %39, %32, %27, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @bhnd_generic_request_clock(i64, i64, i32) #1

declare dso_local i32 @bhnd_pwrctl_request_clock(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
