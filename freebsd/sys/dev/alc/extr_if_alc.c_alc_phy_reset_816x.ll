; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset_816x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset_816x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_GPHY_CFG = common dso_local global i32 0, align 4
@GPHY_CFG_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_LED_MODE = common dso_local global i32 0, align 4
@GPHY_CFG_GATE_25M_ENB = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_PLL_ON = common dso_local global i32 0, align 4
@GPHY_CFG_PWDOWN_HW = common dso_local global i32 0, align 4
@GPHY_CFG_100AB_ENB = common dso_local global i32 0, align 4
@GPHY_CFG_SEL_ANA_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_EN = common dso_local global i32 0, align 4
@MII_DBG_LEGCYPS = common dso_local global i32 0, align 4
@DBG_LEGCYPS_DEFAULT = common dso_local global i32 0, align 4
@DBG_LEGCYPS_ENB = common dso_local global i32 0, align 4
@MII_DBG_HIBNEG = common dso_local global i32 0, align 4
@DBG_HIBNEG_DEFAULT = common dso_local global i32 0, align 4
@DBG_HIBNEG_PSHIB_EN = common dso_local global i32 0, align 4
@DBG_HIBNEG_HIB_PULSE = common dso_local global i32 0, align 4
@MII_DBG_GREENCFG = common dso_local global i32 0, align 4
@DBG_GREENCFG_DEFAULT = common dso_local global i32 0, align 4
@ALC_LPI_CTL = common dso_local global i32 0, align 4
@LPI_CTL_ENB = common dso_local global i32 0, align 4
@MII_EXT_ANEG = common dso_local global i32 0, align 4
@MII_EXT_ANEG_LOCAL_EEEADV = common dso_local global i32 0, align 4
@MII_DBG_TST10BTCFG = common dso_local global i32 0, align 4
@DBG_TST10BTCFG_DEFAULT = common dso_local global i32 0, align 4
@MII_DBG_SRDSYSMOD = common dso_local global i32 0, align 4
@DBG_SRDSYSMOD_DEFAULT = common dso_local global i32 0, align 4
@MII_DBG_TST100BTCFG = common dso_local global i32 0, align 4
@DBG_TST100BTCFG_DEFAULT = common dso_local global i32 0, align 4
@MII_DBG_ANACTL = common dso_local global i32 0, align 4
@DBG_ANACTL_DEFAULT = common dso_local global i32 0, align 4
@MII_DBG_GREENCFG2 = common dso_local global i32 0, align 4
@DBG_GREENCFG2_GATE_DFSE_EN = common dso_local global i32 0, align 4
@MII_EXT_ANEG_NLP78 = common dso_local global i32 0, align 4
@ANEG_NLP78_120M_DEFAULT = common dso_local global i32 0, align 4
@MII_EXT_ANEG_S3DIG10 = common dso_local global i32 0, align 4
@ANEG_S3DIG10_DEFAULT = common dso_local global i32 0, align 4
@ALC_FLAG_LINK_WAR = common dso_local global i32 0, align 4
@MII_EXT_PCS = common dso_local global i32 0, align 4
@MII_EXT_CLDCTL3 = common dso_local global i32 0, align 4
@EXT_CLDCTL3_BP_CABLE1TH_DET_GT = common dso_local global i32 0, align 4
@DBG_GREENCFG2_BP_GREEN = common dso_local global i32 0, align 4
@MII_EXT_CLDCTL5 = common dso_local global i32 0, align 4
@EXT_CLDCTL5_BP_VD_HLFBIAS = common dso_local global i32 0, align 4
@DBG_SYSMODCTL_DEFAULT = common dso_local global i32 0, align 4
@EXT_VDRVBIAS_DEFAULT = common dso_local global i32 0, align 4
@MII_DBG_SYSMODCTL = common dso_local global i32 0, align 4
@MII_EXT_VDRVBIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_phy_reset_816x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_phy_reset_816x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = load i32, i32* @ALC_GPHY_CFG, align 4
  %6 = call i32 @CSR_READ_4(%struct.alc_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %8 = load i32, i32* @GPHY_CFG_LED_MODE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GPHY_CFG_GATE_25M_ENB, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @GPHY_CFG_PHY_IDDQ, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @GPHY_CFG_PHY_PLL_ON, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GPHY_CFG_PWDOWN_HW, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GPHY_CFG_100AB_ENB, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @GPHY_CFG_HIB_PULSE, align 4
  %27 = load i32, i32* @GPHY_CFG_HIB_EN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %33 = load i32, i32* @ALC_GPHY_CFG, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.alc_softc* %32, i32 %33, i32 %34)
  %36 = call i32 @DELAY(i32 10)
  %37 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %38 = load i32, i32* @ALC_GPHY_CFG, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @CSR_WRITE_4(%struct.alc_softc* %37, i32 %38, i32 %41)
  %43 = call i32 @DELAY(i32 800)
  %44 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %45 = load i32, i32* @MII_DBG_LEGCYPS, align 4
  %46 = load i32, i32* @DBG_LEGCYPS_DEFAULT, align 4
  %47 = load i32, i32* @DBG_LEGCYPS_ENB, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %44, i32 %45, i32 %49)
  %51 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %52 = load i32, i32* @MII_DBG_HIBNEG, align 4
  %53 = load i32, i32* @DBG_HIBNEG_DEFAULT, align 4
  %54 = load i32, i32* @DBG_HIBNEG_PSHIB_EN, align 4
  %55 = load i32, i32* @DBG_HIBNEG_HIB_PULSE, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %51, i32 %52, i32 %58)
  %60 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %61 = load i32, i32* @MII_DBG_GREENCFG, align 4
  %62 = load i32, i32* @DBG_GREENCFG_DEFAULT, align 4
  %63 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %65 = load i32, i32* @ALC_LPI_CTL, align 4
  %66 = call i32 @CSR_READ_4(%struct.alc_softc* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* @LPI_CTL_ENB, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %72 = load i32, i32* @ALC_LPI_CTL, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.alc_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %76 = load i32, i32* @MII_EXT_ANEG, align 4
  %77 = load i32, i32* @MII_EXT_ANEG_LOCAL_EEEADV, align 4
  %78 = call i32 @alc_miiext_writereg(%struct.alc_softc* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %80 = load i32, i32* @MII_DBG_TST10BTCFG, align 4
  %81 = load i32, i32* @DBG_TST10BTCFG_DEFAULT, align 4
  %82 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %84 = load i32, i32* @MII_DBG_SRDSYSMOD, align 4
  %85 = load i32, i32* @DBG_SRDSYSMOD_DEFAULT, align 4
  %86 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %88 = load i32, i32* @MII_DBG_TST100BTCFG, align 4
  %89 = load i32, i32* @DBG_TST100BTCFG_DEFAULT, align 4
  %90 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %92 = load i32, i32* @MII_DBG_ANACTL, align 4
  %93 = load i32, i32* @DBG_ANACTL_DEFAULT, align 4
  %94 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %96 = load i32, i32* @MII_DBG_GREENCFG2, align 4
  %97 = call i32 @alc_miidbg_readreg(%struct.alc_softc* %95, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* @DBG_GREENCFG2_GATE_DFSE_EN, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %103 = load i32, i32* @MII_DBG_GREENCFG2, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %102, i32 %103, i32 %104)
  %106 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %107 = load i32, i32* @MII_EXT_ANEG, align 4
  %108 = load i32, i32* @MII_EXT_ANEG_NLP78, align 4
  %109 = load i32, i32* @ANEG_NLP78_120M_DEFAULT, align 4
  %110 = call i32 @alc_miiext_writereg(%struct.alc_softc* %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %112 = load i32, i32* @MII_EXT_ANEG, align 4
  %113 = load i32, i32* @MII_EXT_ANEG_S3DIG10, align 4
  %114 = load i32, i32* @ANEG_S3DIG10_DEFAULT, align 4
  %115 = call i32 @alc_miiext_writereg(%struct.alc_softc* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %117 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ALC_FLAG_LINK_WAR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %157

122:                                              ; preds = %1
  %123 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %124 = load i32, i32* @MII_EXT_PCS, align 4
  %125 = load i32, i32* @MII_EXT_CLDCTL3, align 4
  %126 = call i32 @alc_miiext_readreg(%struct.alc_softc* %123, i32 %124, i32 %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* @EXT_CLDCTL3_BP_CABLE1TH_DET_GT, align 4
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  %130 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %131 = load i32, i32* @MII_EXT_PCS, align 4
  %132 = load i32, i32* @MII_EXT_CLDCTL3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @alc_miiext_writereg(%struct.alc_softc* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %136 = load i32, i32* @MII_DBG_GREENCFG2, align 4
  %137 = call i32 @alc_miidbg_readreg(%struct.alc_softc* %135, i32 %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* @DBG_GREENCFG2_BP_GREEN, align 4
  %139 = load i32, i32* %3, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %3, align 4
  %141 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %142 = load i32, i32* @MII_DBG_GREENCFG2, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %146 = load i32, i32* @MII_EXT_PCS, align 4
  %147 = load i32, i32* @MII_EXT_CLDCTL5, align 4
  %148 = call i32 @alc_miiext_readreg(%struct.alc_softc* %145, i32 %146, i32 %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* @EXT_CLDCTL5_BP_VD_HLFBIAS, align 4
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  %152 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %153 = load i32, i32* @MII_EXT_PCS, align 4
  %154 = load i32, i32* @MII_EXT_CLDCTL5, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @alc_miiext_writereg(%struct.alc_softc* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %122, %1
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @alc_miidbg_writereg(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_miiext_writereg(%struct.alc_softc*, i32, i32, i32) #1

declare dso_local i32 @alc_miidbg_readreg(%struct.alc_softc*, i32) #1

declare dso_local i32 @alc_miiext_readreg(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
