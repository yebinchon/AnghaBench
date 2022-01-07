; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_wb225.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_wb225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hal* }
%struct.ath_hal = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Enabling WB225 BTCOEX\0A\00", align 1
@HAL_BT_MODULE_JANUS = common dso_local global i32 0, align 4
@HAL_BT_COEX_CFG_3WIRE = common dso_local global i32 0, align 4
@HAL_BT_COEX_MODE_SLOTTED = common dso_local global i32 0, align 4
@HAL_BT_COEX_ANTENNA_DIVERSITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_btcoex_cfg_wb225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_btcoex_cfg_wb225(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.ath_hal*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  store %struct.ath_hal* %9, %struct.ath_hal** %6, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %11 = call i32 @ath_hal_btcoex_supported(%struct.ath_hal* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = call i32 @bzero(%struct.TYPE_6__* %4, i32 80)
  %17 = call i32 @bzero(%struct.TYPE_6__* %5, i32 80)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @HAL_BT_MODULE_JANUS, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 16
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @HAL_BT_COEX_CFG_3WIRE, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 15
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 8, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 5, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 14
  store i64 0, i64* %31, align 8
  %32 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %33 = call i32 @ath_hal_btcoex_set_info(%struct.ath_hal* %32, %struct.TYPE_6__* %4)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @HAL_BT_COEX_MODE_SLOTTED, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 12
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 8
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 9
  store i32 2, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 10
  store i32 5, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 11
  store i32 1, i32* %43, align 4
  %44 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %45 = call i32 @ath_hal_btcoex_set_config(%struct.ath_hal* %44, %struct.TYPE_6__* %5)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %47 = load i32, i32* @HAL_BT_COEX_ANTENNA_DIVERSITY, align 4
  %48 = call i32 @ath_hal_btcoex_set_parameter(%struct.ath_hal* %46, i32 %47, i32 1)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %15, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ath_hal_btcoex_supported(%struct.ath_hal*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ath_hal_btcoex_set_info(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath_hal_btcoex_set_config(%struct.ath_hal*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath_hal_btcoex_set_parameter(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
