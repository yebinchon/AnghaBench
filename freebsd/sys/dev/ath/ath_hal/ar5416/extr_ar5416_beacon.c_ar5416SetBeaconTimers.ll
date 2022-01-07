; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416SetBeaconTimers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_beacon.c_ar5416SetBeaconTimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }
%struct.ath_hal_5212 = type { i32 }

@AR_NEXT_TBTT = common dso_local global i32 0, align 4
@AR_NEXT_DBA = common dso_local global i32 0, align 4
@AR_NEXT_SWBA = common dso_local global i32 0, align 4
@AR_NEXT_NDP = common dso_local global i32 0, align 4
@HAL_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR5416_BEACON_PERIOD = common dso_local global i32 0, align 4
@AR_DBA_PERIOD = common dso_local global i32 0, align 4
@AR_SWBA_PERIOD = common dso_local global i32 0, align 4
@AR_NDP_PERIOD = common dso_local global i32 0, align 4
@AR_BEACON_RESET_TSF = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_TIMER_MODE_TBTT = common dso_local global i32 0, align 4
@AR_TIMER_MODE_DBA = common dso_local global i32 0, align 4
@AR_TIMER_MODE_SWBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416SetBeaconTimers(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %7)
  store %struct.ath_hal_5212* %8, %struct.ath_hal_5212** %6, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @AR_NEXT_TBTT, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @TU_TO_USEC(i32 %13)
  %15 = call i32 @OS_REG_WRITE(%struct.ath_hal* %9, i32 %10, i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load i32, i32* @AR_NEXT_DBA, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ONE_EIGHTH_TU_TO_USEC(i32 %20)
  %22 = call i32 @OS_REG_WRITE(%struct.ath_hal* %16, i32 %17, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_NEXT_SWBA, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ONE_EIGHTH_TU_TO_USEC(i32 %27)
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %24, i32 %28)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_NEXT_NDP, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TU_TO_USEC(i32 %34)
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HAL_BEACON_PERIOD, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @TU_TO_USEC(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HAL_BEACON_PERIOD, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %49 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* @AR5416_BEACON_PERIOD, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @OS_REG_WRITE(%struct.ath_hal* %50, i32 %51, i32 %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load i32, i32* @AR_DBA_PERIOD, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_SWBA_PERIOD, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_NDP_PERIOD, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AR_BEACON_RESET_TSF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %2
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = call i32 @ar5416ResetTsf(%struct.ath_hal* %73)
  br label %75

75:                                               ; preds = %72, %2
  %76 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %77 = load i32, i32* @AR_TIMER_MODE, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  br label %93

86:                                               ; preds = %75
  %87 = load i32, i32* @AR_TIMER_MODE_TBTT, align 4
  %88 = load i32, i32* @AR_TIMER_MODE_DBA, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @AR_TIMER_MODE_SWBA, align 4
  %91 = or i32 %89, %90
  %92 = sext i32 %91 to i64
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i64 [ %85, %82 ], [ %92, %86 ]
  %95 = trunc i64 %94 to i32
  %96 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %76, i32 %77, i32 %95)
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ONE_EIGHTH_TU_TO_USEC(i32) #1

declare dso_local i32 @ar5416ResetTsf(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
