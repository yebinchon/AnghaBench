; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_phy_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_phy_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32 }

@DP83867_SGMIICTL1 = common dso_local global i32 0, align 4
@SGMIICTL1_SGMII_6W = common dso_local global i32 0, align 4
@DP83867_PHYCR = common dso_local global i32 0, align 4
@PHYCR_SGMII_EN = common dso_local global i32 0, align 4
@DP83867_CFG2 = common dso_local global i32 0, align 4
@CFG2_SPEED_OPT_ATTEMPT_CNT_M = common dso_local global i32 0, align 4
@CFG2_SPEED_OPT_ATTEMPT_CNT_4 = common dso_local global i32 0, align 4
@CFG2_INTERRUPT_POLARITY = common dso_local global i32 0, align 4
@CFG2_SPEED_OPT_ENHANCED_EN = common dso_local global i32 0, align 4
@CFG2_SPEED_OPT_10M_EN = common dso_local global i32 0, align 4
@DP83867_CFG4 = common dso_local global i32 0, align 4
@CFG4_SGMII_TMR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_FDX = common dso_local global i32 0, align 4
@BMCR_SPEED1 = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xae_softc*)* @xae_phy_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_phy_fixup(%struct.xae_softc* %0) #0 {
  %2 = alloca %struct.xae_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xae_softc* %0, %struct.xae_softc** %2, align 8
  %5 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %54, %1
  %9 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %10 = load i32, i32* @DP83867_SGMIICTL1, align 4
  %11 = load i32, i32* @SGMIICTL1_SGMII_6W, align 4
  %12 = call i32 @WRITE_TI_EREG(%struct.xae_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %14 = load i32, i32* @DP83867_PHYCR, align 4
  %15 = load i32, i32* @PHYCR_SGMII_EN, align 4
  %16 = call i32 @PHY_WR(%struct.xae_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %18 = load i32, i32* @DP83867_CFG2, align 4
  %19 = call i32 @PHY_RD(%struct.xae_softc* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @CFG2_SPEED_OPT_ATTEMPT_CNT_M, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @CFG2_SPEED_OPT_ATTEMPT_CNT_4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @CFG2_INTERRUPT_POLARITY, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @CFG2_SPEED_OPT_ENHANCED_EN, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @CFG2_SPEED_OPT_10M_EN, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %37 = load i32, i32* @DP83867_CFG2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @PHY_WR(%struct.xae_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %41 = load i32, i32* @DP83867_CFG4, align 4
  %42 = load i32, i32* @CFG4_SGMII_TMR, align 4
  %43 = call i32 @WRITE_TI_EREG(%struct.xae_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %45 = load i32, i32* @MII_BMCR, align 4
  %46 = load i32, i32* @BMCR_AUTOEN, align 4
  %47 = load i32, i32* @BMCR_FDX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BMCR_SPEED1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BMCR_RESET, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @PHY_WR(%struct.xae_softc* %44, i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %8
  %55 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = call i32 @PHY1_RD(%struct.xae_softc* %55, i32 %56)
  %58 = icmp eq i32 %57, 65535
  br i1 %58, label %8, label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %72, %59
  %61 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %62 = load i32, i32* @MII_BMCR, align 4
  %63 = load i32, i32* @BMCR_AUTOEN, align 4
  %64 = load i32, i32* @BMCR_FDX, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @BMCR_SPEED1, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BMCR_STARTNEG, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @PHY1_WR(%struct.xae_softc* %61, i32 %62, i32 %69)
  %71 = call i32 @DELAY(i32 40000)
  br label %72

72:                                               ; preds = %60
  %73 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %74 = load i32, i32* @MII_BMSR, align 4
  %75 = call i32 @PHY1_RD(%struct.xae_softc* %73, i32 %74)
  %76 = load i32, i32* @BMSR_ACOMP, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %60, label %79

79:                                               ; preds = %72
  ret void
}

declare dso_local i32 @WRITE_TI_EREG(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @PHY_WR(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @PHY_RD(%struct.xae_softc*, i32) #1

declare dso_local i32 @PHY1_RD(%struct.xae_softc*, i32) #1

declare dso_local i32 @PHY1_WR(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
