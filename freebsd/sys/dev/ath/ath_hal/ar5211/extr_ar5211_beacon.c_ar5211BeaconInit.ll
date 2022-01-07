; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_beacon.c_ar5211BeaconInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_beacon.c_ar5211BeaconInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AR_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR_BEACON_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5211BeaconInit(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %34 [
    i32 128, label %14
    i32 129, label %14
    i32 130, label %17
    i32 131, label %17
  ]

14:                                               ; preds = %3, %3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 65535, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 524287, i32* %16, align 4
  br label %34

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %18, %22
  %24 = shl i32 %23, 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %26, %30
  %32 = shl i32 %31, 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %3, %17, %14
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AR_BEACON_PERIOD, align 4
  %40 = load i32, i32* @AR_BEACON_RESET_TSF, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AR_BEACON_EN, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = call i32 @ar5211SetBeaconTimers(%struct.ath_hal* %46, %struct.TYPE_6__* %7)
  ret void
}

declare dso_local %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ar5211SetBeaconTimers(%struct.ath_hal*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
