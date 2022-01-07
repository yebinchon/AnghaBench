; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416ResetStaBeaconTimers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416ResetStaBeaconTimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_NEXT_TBTT = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@AR_STA_ID1_USE_DEFANT = common dso_local global i32 0, align 4
@AR_STA_ID1_PCF = common dso_local global i32 0, align 4
@AR5416_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_BEACON_PERIOD_MAX = common dso_local global i32 0, align 4
@AR_DBA_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416ResetStaBeaconTimers(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = load i32, i32* @AR_NEXT_TBTT, align 4
  %6 = call i32 @OS_REG_WRITE(%struct.ath_hal* %4, i32 %5, i32 0)
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = load i32, i32* @AR_STA_ID1, align 4
  %9 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = load i32, i32* @AR_STA_ID1, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AR_STA_ID1_USE_DEFANT, align 4
  %17 = load i32, i32* @AR_STA_ID1_PCF, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 @OS_REG_WRITE(%struct.ath_hal* %13, i32 %14, i32 %20)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = load i32, i32* @AR5416_BEACON_PERIOD, align 4
  %24 = load i32, i32* @AR_BEACON_PERIOD_MAX, align 4
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %27 = load i32, i32* @AR_DBA_PERIOD, align 4
  %28 = load i32, i32* @AR_BEACON_PERIOD_MAX, align 4
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
