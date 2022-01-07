; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32 }

@ALE_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CTRL_SEL_ANA_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_PLL_ON = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@ATPHY_DBG_ADDR = common dso_local global i32 0, align 4
@ATPHY_DBG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_phy_reset(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %3 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %4 = load i32, i32* @ALE_GPHY_CTRL, align 4
  %5 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %6 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @GPHY_CTRL_SEL_ANA_RESET, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GPHY_CTRL_PHY_PLL_ON, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @CSR_WRITE_2(%struct.ale_softc* %3, i32 %4, i32 %11)
  %13 = call i32 @DELAY(i32 1000)
  %14 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %15 = load i32, i32* @ALE_GPHY_CTRL, align 4
  %16 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %17 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GPHY_CTRL_SEL_ANA_RESET, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GPHY_CTRL_PHY_PLL_ON, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @CSR_WRITE_2(%struct.ale_softc* %14, i32 %15, i32 %24)
  %26 = call i32 @DELAY(i32 1000)
  %27 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ale_miibus_writereg(i32 %29, i32 %32, i32 29, i32 11)
  %34 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ale_miibus_writereg(i32 %36, i32 %39, i32 30, i32 48128)
  %41 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ale_miibus_writereg(i32 %43, i32 %46, i32 29, i32 0)
  %48 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ale_miibus_writereg(i32 %50, i32 %53, i32 30, i32 751)
  %55 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ale_miibus_writereg(i32 %57, i32 %60, i32 29, i32 18)
  %62 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ale_miibus_writereg(i32 %64, i32 %67, i32 30, i32 19460)
  %69 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ale_miibus_writereg(i32 %71, i32 %74, i32 29, i32 4)
  %76 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %80 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ale_miibus_writereg(i32 %78, i32 %81, i32 29, i32 35771)
  %83 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ale_miibus_writereg(i32 %85, i32 %88, i32 29, i32 5)
  %90 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ale_miibus_writereg(i32 %92, i32 %95, i32 29, i32 11334)
  %97 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ale_miibus_writereg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
