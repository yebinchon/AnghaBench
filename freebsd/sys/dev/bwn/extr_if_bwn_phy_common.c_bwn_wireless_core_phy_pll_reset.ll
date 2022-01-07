; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_common.c_bwn_wireless_core_phy_pll_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_common.c_bwn_wireless_core_phy_pll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"PMU device not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_wireless_core_phy_pll_reset(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  store %struct.bwn_softc* %8, %struct.bwn_softc** %4, align 8
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  store i32 4, i32* %5, align 4
  %20 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @bhnd_pmu_write_chipctrl(i32* %22, i32 0, i32 0, i32 %23)
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bhnd_pmu_write_chipctrl(i32* %27, i32 0, i32 %28, i32 %29)
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bhnd_pmu_write_chipctrl(i32* %33, i32 0, i32 0, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %19, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bhnd_pmu_write_chipctrl(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
