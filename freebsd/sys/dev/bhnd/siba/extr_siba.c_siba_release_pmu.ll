; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_release_pmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_release_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pmu over-release for %s\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHND_CLOCK_DYN = common dso_local global i32 0, align 4
@BHND_SERVICE_PWRCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PWRCTL reference with FIXED state\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid PMU state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @siba_release_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_release_pmu(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.siba_softc*, align 8
  %7 = alloca %struct.siba_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @device_get_parent(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %87

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.siba_softc* @device_get_softc(i64 %17)
  store %struct.siba_softc* %18, %struct.siba_softc** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.siba_devinfo* @device_get_ivars(i64 %19)
  store %struct.siba_devinfo* %20, %struct.siba_devinfo** %7, align 8
  %21 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %22 = call i32 @SIBA_LOCK(%struct.siba_softc* %21)
  %23 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %24 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %82 [
    i32 129, label %26
    i32 131, label %33
    i32 128, label %39
    i32 130, label %66
  ]

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @device_get_nameunit(i64 %27)
  %29 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %31 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %30)
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %16
  %34 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %35 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @bhnd_generic_release_pmu(i64 %36, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %16
  %40 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %41 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @BHND_CLOCK_DYN, align 4
  %47 = call i32 @bhnd_pwrctl_request_clock(i64 %44, i64 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %52 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %87

54:                                               ; preds = %39
  %55 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %56 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %55, i32 0, i32 0
  store i32 129, i32* %56, align 8
  %57 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %58 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %61 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %60)
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @BHND_SERVICE_PWRCTL, align 4
  %65 = call i32 @bhnd_release_provider(i64 %62, i64 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %87

66:                                               ; preds = %16
  %67 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %68 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = icmp eq i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @KASSERT(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %76 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %75, i32 0, i32 0
  store i32 129, i32* %76, align 8
  %77 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %78 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.siba_softc*, %struct.siba_softc** %6, align 8
  %81 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %80)
  br label %82

82:                                               ; preds = %66, %16
  %83 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %84 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %54, %50, %33, %26, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @bhnd_generic_release_pmu(i64, i64) #1

declare dso_local i32 @bhnd_pwrctl_request_clock(i64, i64, i32) #1

declare dso_local i32 @bhnd_release_provider(i64, i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
