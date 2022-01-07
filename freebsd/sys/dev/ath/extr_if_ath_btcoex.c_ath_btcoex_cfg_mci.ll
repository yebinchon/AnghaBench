; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_mci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hal*, i32 }
%struct.ath_hal = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to setup btcoex\0A\00", align 1
@HAL_BT_MODULE_JANUS = common dso_local global i32 0, align 4
@HAL_BT_COEX_CFG_MCI = common dso_local global i32 0, align 4
@HAL_BT_COEX_MODE_SLOTTED = common dso_local global i32 0, align 4
@HAL_BT_COEX_STOMP_NONE = common dso_local global i32 0, align 4
@HAL_BT_COEX_ANTENNA_DIVERSITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32, i32)* @ath_btcoex_cfg_mci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_btcoex_cfg_mci(%struct.ath_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.ath_hal*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load %struct.ath_hal*, %struct.ath_hal** %12, align 8
  store %struct.ath_hal* %13, %struct.ath_hal** %10, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %15 = call i32 @ath_hal_btcoex_supported(%struct.ath_hal* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %3
  %20 = call i32 @bzero(%struct.TYPE_8__* %8, i32 80)
  %21 = call i32 @bzero(%struct.TYPE_8__* %9, i32 80)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = load %struct.ath_hal*, %struct.ath_hal** %24, align 8
  %26 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %29 = call i64 @ath_btcoex_mci_attach(%struct.ath_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %19
  %38 = load i32, i32* @HAL_BT_MODULE_JANUS, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 16
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @HAL_BT_COEX_CFG_MCI, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 15
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 8, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 5, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 14
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 13
  store i64 0, i64* %47, align 8
  %48 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %49 = call i32 @ath_hal_btcoex_set_info(%struct.ath_hal* %48, %struct.TYPE_8__* %8)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 12
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @HAL_BT_COEX_MODE_SLOTTED, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 11
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  store i32 2, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 9
  store i32 5, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 10
  store i32 1, i32* %59, align 8
  %60 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %61 = call i32 @ath_hal_btcoex_set_config(%struct.ath_hal* %60, %struct.TYPE_8__* %9)
  %62 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 0
  %64 = load %struct.ath_hal*, %struct.ath_hal** %63, align 8
  %65 = call i32 @ath_hal_btcoex_enable(%struct.ath_hal* %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %67 = load i32, i32* @HAL_BT_COEX_STOMP_NONE, align 4
  %68 = call i32 @ath_hal_btcoex_set_weights(%struct.ath_hal* %66, i32 %67)
  %69 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %70 = load i32, i32* @HAL_BT_COEX_ANTENNA_DIVERSITY, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ath_hal_btcoex_set_parameter(%struct.ath_hal* %69, i32 %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %37, %31, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ath_hal_btcoex_supported(%struct.ath_hal*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ath_btcoex_mci_attach(%struct.ath_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ath_hal_btcoex_set_info(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i32 @ath_hal_btcoex_set_config(%struct.ath_hal*, %struct.TYPE_8__*) #1

declare dso_local i32 @ath_hal_btcoex_enable(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_btcoex_set_weights(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_btcoex_set_parameter(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
