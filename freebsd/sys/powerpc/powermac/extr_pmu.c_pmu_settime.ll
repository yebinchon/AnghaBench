; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64 }
%struct.pmu_softc = type { i32 }

@DIFF19041970 = common dso_local global i64 0, align 8
@PMU_SET_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @pmu_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.pmu_softc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pmu_softc* @device_get_softc(i32 %7)
  store %struct.pmu_softc* %8, %struct.pmu_softc** %5, align 8
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DIFF19041970, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %15 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %18 = load i32, i32* @PMU_SET_RTC, align 4
  %19 = bitcast i64* %6 to i32*
  %20 = call i32 @pmu_send(%struct.pmu_softc* %17, i32 %18, i32 8, i32* %19, i32 0, i32* null)
  %21 = load %struct.pmu_softc*, %struct.pmu_softc** %5, align 8
  %22 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  ret i32 0
}

declare dso_local %struct.pmu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
