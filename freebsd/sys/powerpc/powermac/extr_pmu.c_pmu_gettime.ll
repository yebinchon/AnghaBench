; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.pmu_softc = type { i32 }

@PMU_READ_RTC = common dso_local global i32 0, align 4
@DIFF19041970 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @pmu_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.pmu_softc*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.pmu_softc* @device_get_softc(i32 %8)
  store %struct.pmu_softc* %9, %struct.pmu_softc** %5, align 8
  %10 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %11 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %14 = load i32, i32* @PMU_READ_RTC, align 4
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %16 = call i32 @pmu_send(%struct.pmu_softc* %13, i32 %14, i32 0, i32* null, i32 16, i32* %15)
  %17 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %18 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %21 = call i32 @memcpy(i64* %7, i32* %20, i32 4)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @DIFF19041970, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load %struct.timespec*, %struct.timespec** %4, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.timespec*, %struct.timespec** %4, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret i32 0
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
