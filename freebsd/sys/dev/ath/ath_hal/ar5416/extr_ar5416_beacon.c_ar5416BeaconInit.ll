; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416BeaconInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416BeaconInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AR_TIMER_MODE_TBTT = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_ATIM_TXPOLICY = common dso_local global i32 0, align 4
@AR_TIMER_MODE_NDP = common dso_local global i32 0, align 4
@AR_TIMER_MODE_DBA = common dso_local global i32 0, align 4
@AR_TIMER_MODE_SWBA = common dso_local global i32 0, align 4
@AR_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR_BEACON_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416BeaconInit(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
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
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %56 [
    i32 128, label %15
    i32 129, label %15
    i32 130, label %22
    i32 131, label %31
  ]

15:                                               ; preds = %3, %3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 65535, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 524287, i32* %17, align 4
  %18 = load i32, i32* @AR_TIMER_MODE_TBTT, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load i32, i32* @AR_TXCFG, align 4
  %25 = load i32, i32* @AR_TXCFG_ATIM_TXPOLICY, align 4
  %26 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @AR_TIMER_MODE_NDP, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %3, %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  %38 = shl i32 %37, 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %40, %44
  %46 = shl i32 %45, 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @AR_TIMER_MODE_TBTT, align 4
  %49 = load i32, i32* @AR_TIMER_MODE_DBA, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AR_TIMER_MODE_SWBA, align 4
  %52 = or i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %3, %31, %15
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @AR_BEACON_PERIOD, align 4
  %62 = load i32, i32* @AR_BEACON_RESET_TSF, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @AR_BEACON_EN, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %69 = call i32 @ar5416SetBeaconTimers(%struct.ath_hal* %68, %struct.TYPE_6__* %7)
  ret void
}

declare dso_local %struct.TYPE_7__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416SetBeaconTimers(%struct.ath_hal*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
