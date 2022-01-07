; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_xenon_softc = type { i32, i32, i32, i32 }
%struct.mmc_ios = type { i32, i64 }
%struct.sdhci_slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_ios }

@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Powering down sd/mmc\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Powering up sd/mmc\0A\00", align 1
@SD_MMC_CARD_ID_FREQUENCY = common dso_local global i64 0, align 8
@XENON_SYS_OP_CTRL = common dso_local global i32 0, align 4
@XENON_SDCLK_IDLEOFF_ENABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sdhci_xenon_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_xenon_softc*, align 8
  %8 = alloca %struct.mmc_ios*, align 8
  %9 = alloca %struct.sdhci_slot*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @sdhci_generic_update_ios(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %19)
  store %struct.sdhci_xenon_softc* %20, %struct.sdhci_xenon_softc** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.sdhci_slot* @device_get_ivars(i32 %21)
  store %struct.sdhci_slot* %22, %struct.sdhci_slot** %9, align 8
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %9, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.mmc_ios* %25, %struct.mmc_ios** %8, align 8
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %68 [
    i32 129, label %29
    i32 130, label %30
    i32 128, label %49
  ]

29:                                               ; preds = %18
  br label %68

30:                                               ; preds = %18
  %31 = load i32, i32* @bootverbose, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %35 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %40 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %45 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_disable(i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %68

49:                                               ; preds = %18
  %50 = load i32, i32* @bootverbose, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %54 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %59 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %64 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regulator_enable(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %18, %67, %48, %29
  %69 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %70 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %76 = call i32 @sdhci_xenon_phy_set(i32 %74, %struct.mmc_ios* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.mmc_ios*, %struct.mmc_ios** %8, align 8
  %79 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SD_MMC_CARD_ID_FREQUENCY, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %85 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %88 = call i32 @bus_read_4(i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @XENON_SDCLK_IDLEOFF_ENABLE_SHIFT, align 4
  %90 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %91 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = shl i32 1, %93
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %98 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XENON_SYS_OP_CTRL, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @bus_write_4(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %83, %77
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %16
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @sdhci_generic_update_ios(i32, i32) #1

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local %struct.sdhci_slot* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @sdhci_xenon_phy_set(i32, %struct.mmc_ios*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
