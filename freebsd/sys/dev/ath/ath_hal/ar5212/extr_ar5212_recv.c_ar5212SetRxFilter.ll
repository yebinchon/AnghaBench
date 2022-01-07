; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212SetRxFilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212SetRxFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AR_RX_FILTER = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_BSSID = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_ZLFDMA = common dso_local global i32 0, align 4
@AR_MISC_MODE_BSSID_MATCH_FORCE = common dso_local global i32 0, align 4
@AR_MISC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetRxFilter(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_5212*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %7)
  store %struct.ath_hal_5212* %8, %struct.ath_hal_5212** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @AR_RX_FILTER, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HAL_RX_FILTER_PHYRADAR, align 4
  %13 = load i32, i32* @HAL_RX_FILTER_PHYERR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HAL_RX_FILTER_BSSID, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = call i32 @OS_REG_WRITE(%struct.ath_hal* %9, i32 %10, i32 %18)
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HAL_RX_FILTER_PHYRADAR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HAL_RX_FILTER_PHYERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %35 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load i32, i32* @AR_PHY_ERR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @OS_REG_WRITE(%struct.ath_hal* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = load i32, i32* @AR_RXCFG, align 4
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = load i32, i32* @AR_RXCFG, align 4
  %51 = call i32 @OS_REG_READ(%struct.ath_hal* %49, i32 %50)
  %52 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @OS_REG_WRITE(%struct.ath_hal* %47, i32 %48, i32 %53)
  br label %65

55:                                               ; preds = %39
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* @AR_RXCFG, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_RXCFG, align 4
  %60 = call i32 @OS_REG_READ(%struct.ath_hal* %58, i32 %59)
  %61 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @OS_REG_WRITE(%struct.ath_hal* %56, i32 %57, i32 %63)
  br label %65

65:                                               ; preds = %55, %46
  %66 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %67 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @HAL_RX_FILTER_BSSID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @AR_MISC_MODE_BSSID_MATCH_FORCE, align 4
  %79 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %80 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %90

83:                                               ; preds = %72
  %84 = load i32, i32* @AR_MISC_MODE_BSSID_MATCH_FORCE, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %87 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %92 = load i32, i32* @AR_MISC_MODE, align 4
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = load i32, i32* @AR_MISC_MODE, align 4
  %95 = call i32 @OS_REG_READ(%struct.ath_hal* %93, i32 %94)
  %96 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %97 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = call i32 @OS_REG_WRITE(%struct.ath_hal* %91, i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %90, %65
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
