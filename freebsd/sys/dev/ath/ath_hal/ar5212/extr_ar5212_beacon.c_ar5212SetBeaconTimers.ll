; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_beacon.c_ar5212SetBeaconTimers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_beacon.c_ar5212SetBeaconTimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ath_hal_5212 = type { i32 }

@AR_TIMER0 = common dso_local global i32 0, align 4
@AR_TIMER1 = common dso_local global i32 0, align 4
@AR_TIMER2 = common dso_local global i32 0, align 4
@AR_TIMER3 = common dso_local global i32 0, align 4
@AR_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR_BEACON = common dso_local global i32 0, align 4
@HAL_BEACON_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetBeaconTimers(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %6)
  store %struct.ath_hal_5212* %7, %struct.ath_hal_5212** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_TIMER0, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 65535
  %14 = call i32 @OS_REG_WRITE(%struct.ath_hal* %8, i32 %9, i32 %13)
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load i32, i32* @AR_TIMER1, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 524287
  %21 = call i32 @OS_REG_WRITE(%struct.ath_hal* %15, i32 %16, i32 %20)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load i32, i32* @AR_TIMER2, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 33554431
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %23, i32 %27)
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @AR_TIMER3, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65535
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %29, i32 %30, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR_BEACON_RESET_TSF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_BEACON, align 4
  %45 = load i32, i32* @AR_BEACON_RESET_TSF, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %2
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_BEACON, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HAL_BEACON_PERIOD, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %60 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
