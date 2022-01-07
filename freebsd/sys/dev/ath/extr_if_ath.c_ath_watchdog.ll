; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.ieee80211com }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s hang detected (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ath_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ath_softc*
  store %struct.ath_softc* %8, %struct.ath_softc** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 7
  store %struct.ieee80211com* %10, %struct.ieee80211com** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = call i32 @ATH_LOCK_ASSERT(%struct.ath_softc* %11)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %1
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = load i32, i32* @HAL_PM_AWAKE, align 4
  %26 = call i32 @ath_power_set_power_state(%struct.ath_softc* %24, i32 %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ath_hal_gethangstate(i32 %29, i32 65535, i32* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 255
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  br label %51

46:                                               ; preds = %32, %23
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %35
  store i32 1, i32* %5, align 4
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @counter_u64_add(i32 %54, i32 1)
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %61)
  br label %63

63:                                               ; preds = %51, %17, %1
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 2
  %72 = call i32 @taskqueue_enqueue(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 1
  %76 = load i32, i32* @hz, align 4
  %77 = call i32 @callout_schedule(i32* %75, i32 %76)
  ret void
}

declare dso_local i32 @ATH_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i64 @ath_hal_gethangstate(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
