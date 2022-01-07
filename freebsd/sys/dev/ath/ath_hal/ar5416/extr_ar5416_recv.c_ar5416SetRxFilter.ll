; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_recv.c_ar5416SetRxFilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_recv.c_ar5416SetRxFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_RX_FILTER = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_ZLFDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416SetRxFilter(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_RX_FILTER, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 65535
  %10 = call i32 @OS_REG_WRITE(%struct.ath_hal* %6, i32 %7, i32 %9)
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HAL_RX_FILTER_PHYRADAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HAL_RX_FILTER_PHYERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %26 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = load i32, i32* @AR_PHY_ERR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @AR_RXCFG, align 4
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load i32, i32* @AR_RXCFG, align 4
  %42 = call i32 @OS_REG_READ(%struct.ath_hal* %40, i32 %41)
  %43 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %38, i32 %39, i32 %44)
  br label %56

46:                                               ; preds = %30
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = load i32, i32* @AR_RXCFG, align 4
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = load i32, i32* @AR_RXCFG, align 4
  %51 = call i32 @OS_REG_READ(%struct.ath_hal* %49, i32 %50)
  %52 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %47, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %46, %37
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
