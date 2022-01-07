; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32*, i32, i64, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_2__*, %struct.ath_hal* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.ath_hal = type { i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@ATH_RESET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_stop(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hal*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 11
  %6 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  store %struct.ath_hal* %6, %struct.ath_hal** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = call i32 @ATH_LOCK_ASSERT(%struct.ath_softc* %7)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = load i32, i32* @HAL_PM_AWAKE, align 4
  %11 = call i32 @ath_power_set_power_state(%struct.ath_softc* %9, i32 %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %1
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 9
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %16
  %29 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 5
  %36 = call i32 @callout_stop(i32* %35)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @ath_hal_gpioset(%struct.ath_hal* %37, i32 %40, i32 %46)
  %48 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %33, %28
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = call i32 @ath_hal_intrset(%struct.ath_hal* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %16
  %54 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %60 = call i32 @ath_stoprecv(%struct.ath_softc* %59, i32 1)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = call i32 @ath_hal_phydisable(%struct.ath_hal* %61)
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %68 = load i32, i32* @ATH_RESET_DEFAULT, align 4
  %69 = call i32 @ath_draintxq(%struct.ath_softc* %67, i32 %68)
  %70 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %71 = call i32 @ath_beacon_free(%struct.ath_softc* %70)
  br label %72

72:                                               ; preds = %66, %1
  %73 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %74 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %73)
  ret void
}

declare dso_local i32 @ATH_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ath_hal_gpioset(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ath_hal_intrset(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_stoprecv(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_hal_phydisable(%struct.ath_hal*) #1

declare dso_local i32 @ath_draintxq(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_beacon_free(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
