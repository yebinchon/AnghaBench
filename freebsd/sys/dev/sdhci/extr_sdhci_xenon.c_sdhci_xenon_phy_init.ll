; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ios = type { i32 }
%struct.sdhci_xenon_softc = type { i32, i64 }

@XENON_EMMC_PHY_TIMING_ADJUST = common dso_local global i32 0, align 4
@XENON_SAMPL_INV_QSP_PHASE_SELECT = common dso_local global i32 0, align 4
@XENON_TIMING_ADJUST_SLOW_MODE = common dso_local global i32 0, align 4
@XENON_PHY_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"eMMC PHY failed to initialize\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mmc_ios*)* @sdhci_xenon_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_phy_init(i32 %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_xenon_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %9)
  store %struct.sdhci_xenon_softc* %10, %struct.sdhci_xenon_softc** %7, align 8
  %11 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %12 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %15 = call i32 @bus_read_4(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @XENON_SAMPL_INV_QSP_PHASE_SELECT, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %26 [
    i32 131, label %22
    i32 132, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %2, %2, %2, %2, %2
  %23 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %33 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %42 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bus_write_4(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %48 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %51 = call i32 @bus_read_4(i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @XENON_PHY_INITIALIZATION, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %56 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bus_write_4(i32 %57, i32 %58, i32 %59)
  store i32 100, i32* %6, align 4
  br label %61

61:                                               ; preds = %77, %40
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = call i32 @DELAY(i32 100)
  %66 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %7, align 8
  %67 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %70 = call i32 @bus_read_4(i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @XENON_PHY_INITIALIZATION, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %80

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  br label %61

80:                                               ; preds = %75, %61
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
