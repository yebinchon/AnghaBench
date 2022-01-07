; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211GetRfgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211GetRfgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5211 = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@HAL_RFGAIN_INACTIVE = common dso_local global i64 0, align 8
@HAL_RFGAIN_READ_REQUESTED = common dso_local global i64 0, align 8
@AR_PHY_PAPD_PROBE = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_NEXT_TX = common dso_local global i32 0, align 4
@AR_PHY_PAPD_PROBE_GAINF_S = common dso_local global i32 0, align 4
@HAL_RFGAIN_NEED_CHANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5211GetRfgain(%struct.ath_hal* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_hal_5211*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5211* @AH5211(%struct.ath_hal* %7)
  store %struct.ath_hal_5211* %8, %struct.ath_hal_5211** %4, align 8
  %9 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %9, i32 0, i32 1
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @HAL_RFGAIN_INACTIVE, align 8
  store i64 %16, i64* %2, align 8
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %4, align 8
  %19 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HAL_RFGAIN_READ_REQUESTED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* @AR_PHY_PAPD_PROBE, align 4
  %26 = call i32 @OS_REG_READ(%struct.ath_hal* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AR_PHY_PAPD_PROBE_NEXT_TX, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AR_PHY_PAPD_PROBE_GAINF_S, align 4
  %34 = ashr i32 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* @HAL_RFGAIN_INACTIVE, align 8
  %38 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %4, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @ar5211InvalidGainReadback(%struct.ath_hal* %40, %struct.TYPE_6__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %31
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = call i64 @ar5211IsGainAdjustNeeded(%struct.ath_hal* %45, %struct.TYPE_6__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = call i64 @ar5211AdjustGain(%struct.ath_hal* %50, %struct.TYPE_6__* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = call i32 @ar5211SetRfgain(%struct.ath_hal* %55, %struct.TYPE_6__* %56)
  %58 = load i64, i64* @HAL_RFGAIN_NEED_CHANGE, align 8
  %59 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %49, %44, %31
  br label %62

62:                                               ; preds = %61, %23
  br label %63

63:                                               ; preds = %62, %17
  %64 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %4, align 8
  %65 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %63, %15
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local %struct.ath_hal_5211* @AH5211(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5211InvalidGainReadback(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i64 @ar5211IsGainAdjustNeeded(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i64 @ar5211AdjustGain(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i32 @ar5211SetRfgain(%struct.ath_hal*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
