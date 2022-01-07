; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_clock_latency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_clock_latency.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32*)* @siba_get_clock_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_get_clock_latency(i64 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.siba_softc*, align 8
  %11 = alloca %struct.siba_devinfo*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %66

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.siba_softc* @device_get_softc(i64 %20)
  store %struct.siba_softc* %21, %struct.siba_softc** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.siba_devinfo* @device_get_ivars(i64 %22)
  store %struct.siba_devinfo* %23, %struct.siba_devinfo** %11, align 8
  %24 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %25 = call i32 @SIBA_LOCK(%struct.siba_softc* %24)
  %26 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %27 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %61 [
    i32 129, label %29
    i32 131, label %34
    i32 128, label %42
    i32 130, label %53
  ]

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %32 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %31)
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %5, align 4
  br label %66

34:                                               ; preds = %19
  %35 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %36 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @bhnd_generic_get_clock_latency(i64 %37, i64 %38, i32 %39, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %66

42:                                               ; preds = %19
  %43 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %44 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @bhnd_pwrctl_get_clock_latency(i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %51 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %66

53:                                               ; preds = %19
  %54 = load %struct.siba_softc*, %struct.siba_softc** %10, align 8
  %55 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %54)
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %59 [
    i32 132, label %57
  ]

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  store i32 0, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @ENODEV, align 4
  store i32 %60, i32* %5, align 4
  br label %66

61:                                               ; preds = %19
  %62 = load %struct.siba_devinfo*, %struct.siba_devinfo** %11, align 8
  %63 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %59, %57, %42, %34, %29, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @bhnd_generic_get_clock_latency(i64, i64, i32, i32*) #1

declare dso_local i32 @bhnd_pwrctl_get_clock_latency(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
