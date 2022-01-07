; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_bbinit_r01.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_bbinit_r01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_smpair = type { i32, i32, i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.TYPE_6__, %struct.bwn_softc* }
%struct.TYPE_6__ = type { i64, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32, i32, i32, i32 }
%struct.bwn_softc = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, %struct.ieee80211com }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211com = type { i32 }

@bwn_phy_lp_bbinit_r01.v1 = internal constant [7 x %struct.bwn_smpair] [%struct.bwn_smpair { i32 139, i32 65504, i32 5, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 139, i32 64543, i32 384, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 139, i32 33791, i32 15360, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 137, i32 65520, i32 5, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 136, i32 65472, i32 26, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 138, i32 65280, i32 179, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 138, i32 255, i32 44288, i32 0, i32 0, i32 0 }], align 16
@bwn_phy_lp_bbinit_r01.v2 = internal constant [16 x %struct.bwn_smpair] [%struct.bwn_smpair { i32 135, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 135, i32 16128, i32 2304, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 49407, i32 2816, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 49407, i32 1024, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 49407, i32 2816, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 131, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 131, i32 49407, i32 2304, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 130, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 130, i32 49407, i32 2816, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 129, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 129, i32 49407, i32 2304, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 128, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 128, i32 49407, i32 2816, i32 0, i32 0, i32 0 }], align 16
@bwn_phy_lp_bbinit_r01.v3 = internal constant [8 x %struct.bwn_smpair] [%struct.bwn_smpair { i32 135, i32 65472, i32 1, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 135, i32 49407, i32 1024, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 65472, i32 1, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 49407, i32 1280, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 65472, i32 2, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 49407, i32 2048, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 65472, i32 2, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 49407, i32 2560, i32 0, i32 0, i32 0 }], align 16
@bwn_phy_lp_bbinit_r01.v4 = internal constant [8 x %struct.bwn_smpair] [%struct.bwn_smpair { i32 135, i32 65472, i32 4, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 135, i32 49407, i32 2048, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 65472, i32 4, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 49407, i32 3072, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 65472, i32 2, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 49407, i32 256, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 65472, i32 2, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 49407, i32 768, i32 0, i32 0, i32 0 }], align 16
@bwn_phy_lp_bbinit_r01.v5 = internal constant [8 x %struct.bwn_smpair] [%struct.bwn_smpair { i32 135, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 135, i32 49407, i32 2304, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 65472, i32 10, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 134, i32 49407, i32 2816, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 65472, i32 6, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 133, i32 49407, i32 1280, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 65472, i32 6, i32 0, i32 0, i32 0 }, %struct.bwn_smpair { i32 132, i32 49407, i32 1792, i32 0, i32 0, i32 0 }], align 16
@BWN_PHY_AFE_DAC_CTL = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@BWN_PHY_OFDMSYNCTHRESH0 = common dso_local global i32 0, align 4
@BWN_PHY_ADC_COMPENSATION_CTL = common dso_local global i32 0, align 4
@BWN_PHY_AFE_ADC_CTL_0 = common dso_local global i32 0, align 4
@BWN_PHY_VERYLOWGAINDB = common dso_local global i32 0, align 4
@BWN_PHY_HIGAINDB = common dso_local global i32 0, align 4
@BWN_PHY_LOWGAINDB = common dso_local global i32 0, align 4
@BWN_PHY_RX_RADIO_CTL = common dso_local global i32 0, align 4
@BWN_PHY_INPUT_PWRDB = common dso_local global i32 0, align 4
@BHND_BFL_FEM = common dso_local global i32 0, align 4
@BHND_BFL_PAREF = common dso_local global i32 0, align 4
@BHND_REGULATOR_PAREF_LDO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to set PAREF LDO voltage: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to enable PAREF LDO regulator: %d\0A\00", align 1
@BWN_PHY_LP_RF_SIGNAL_LUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to disable PAREF LDO regulator: %d\0A\00", align 1
@BWN_PHY_AFE_RSSI_CTL_0 = common dso_local global i32 0, align 4
@BHND_BFL_RSSIINV = common dso_local global i32 0, align 4
@BWN_PHY_AFE_RSSI_CTL_1 = common dso_local global i32 0, align 4
@BHND_BFL_FEM_BT = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM5354 = common dso_local global i64 0, align 8
@BHND_PKGID_BCM4712SMALL = common dso_local global i64 0, align 8
@BWN_PHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@BWN_PHY_GPIO_SELECT = common dso_local global i32 0, align 4
@BWN_PHY_GPIO_OUTEN = common dso_local global i32 0, align 4
@BWN_HF_PR45960W = common dso_local global i32 0, align 4
@BWN_PHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@BWN_PHY_MINPWR_LEVEL = common dso_local global i32 0, align 4
@BWN_PHY_SYNCPEAKCNT = common dso_local global i32 0, align 4
@BWN_PHY_DSSS_CONFIRM_CNT = common dso_local global i32 0, align 4
@BWN_PHY_IDLEAFTERPKTRXTO = common dso_local global i32 0, align 4
@BWN_PHY_4C3 = common dso_local global i32 0, align 4
@BWN_PHY_4C4 = common dso_local global i32 0, align 4
@BWN_PHY_4C5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_bbinit_r01 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_bbinit_r01(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store %struct.bwn_phy_lp* %12, %struct.bwn_phy_lp** %3, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %4, align 8
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %16, i32 0, i32 4
  store %struct.ieee80211com* %17, %struct.ieee80211com** %5, align 8
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %19 = load i32, i32* @BWN_PHY_AFE_DAC_CTL, align 4
  %20 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %18, i32 %19, i32 63487)
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = load i32, i32* @BWN_PHY_AFE_CTL, align 4
  %23 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %21, i32 %22, i32 0)
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %26 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %24, i32 %25, i32 0)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %29 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %27, i32 %28, i32 0)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %32 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %30, i32 %31, i32 0)
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = load i32, i32* @BWN_PHY_AFE_DAC_CTL, align 4
  %35 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %33, i32 %34, i32 4)
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = load i32, i32* @BWN_PHY_OFDMSYNCTHRESH0, align 4
  %38 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %36, i32 %37, i32 65280, i32 120)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %39, i32 139, i32 33791, i32 22528)
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load i32, i32* @BWN_PHY_ADC_COMPENSATION_CTL, align 4
  %43 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %41, i32 %42, i32 22)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %45 = load i32, i32* @BWN_PHY_AFE_ADC_CTL_0, align 4
  %46 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %44, i32 %45, i32 65528, i32 4)
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_PHY_VERYLOWGAINDB, align 4
  %49 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %47, i32 %48, i32 255, i32 21504)
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = load i32, i32* @BWN_PHY_HIGAINDB, align 4
  %52 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %50, i32 %51, i32 255, i32 9216)
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = load i32, i32* @BWN_PHY_LOWGAINDB, align 4
  %55 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %53, i32 %54, i32 255, i32 8448)
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = load i32, i32* @BWN_PHY_VERYLOWGAINDB, align 4
  %58 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %56, i32 %57, i32 65280, i32 6)
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %60 = load i32, i32* @BWN_PHY_RX_RADIO_CTL, align 4
  %61 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %59, i32 %60, i32 65534)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %84, %1
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @N(%struct.bwn_smpair* getelementptr inbounds ([7 x %struct.bwn_smpair], [7 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v1, i64 0, i64 0))
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [7 x %struct.bwn_smpair], [7 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v1, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [7 x %struct.bwn_smpair], [7 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v1, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [7 x %struct.bwn_smpair], [7 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v1, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %67, i32 %72, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %66
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %62
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = load i32, i32* @BWN_PHY_INPUT_PWRDB, align 4
  %90 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %91 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %88, i32 %89, i32 65280, i32 %92)
  %94 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %95 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BHND_BFL_FEM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %87
  %102 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %103 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %101
  %108 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %109 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BHND_BFL_PAREF, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %107, %101
  %116 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %117 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BHND_REGULATOR_PAREF_LDO, align 4
  %120 = call i32 @bhnd_pmu_set_voltage_raw(i32 %118, i32 %119, i32 40)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %125 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %131 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BHND_REGULATOR_PAREF_LDO, align 4
  %134 = call i32 @bhnd_pmu_enable_regulator(i32 %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %139 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %129
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %145 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %151 = load i32, i32* @BWN_PHY_LP_RF_SIGNAL_LUT, align 4
  %152 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %150, i32 %151, i32 65487, i32 16)
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %155 = call i32 @BWN_TAB_2(i32 11, i32 7)
  %156 = call i32 @bwn_tab_write(%struct.bwn_mac* %154, i32 %155, i32 60)
  br label %178

157:                                              ; preds = %107, %87
  %158 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %159 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @BHND_REGULATOR_PAREF_LDO, align 4
  %162 = call i32 @bhnd_pmu_disable_regulator(i32 %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %167 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %165, %157
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %173 = load i32, i32* @BWN_PHY_LP_RF_SIGNAL_LUT, align 4
  %174 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %172, i32 %173, i32 65487, i32 32)
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %176 = call i32 @BWN_TAB_2(i32 11, i32 7)
  %177 = call i32 @bwn_tab_write(%struct.bwn_mac* %175, i32 %176, i32 100)
  br label %178

178:                                              ; preds = %171, %153
  %179 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %180 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %183 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 4
  %186 = or i32 %181, %185
  %187 = or i32 %186, 40960
  store i32 %187, i32* %8, align 4
  %188 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %189 = load i32, i32* @BWN_PHY_AFE_RSSI_CTL_0, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %188, i32 %189, i32 %190)
  %192 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %193 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @BHND_BFL_RSSIINV, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %178
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %201 = load i32, i32* @BWN_PHY_AFE_RSSI_CTL_1, align 4
  %202 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %200, i32 %201, i32 61440, i32 2730)
  br label %207

203:                                              ; preds = %178
  %204 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %205 = load i32, i32* @BWN_PHY_AFE_RSSI_CTL_1, align 4
  %206 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %204, i32 %205, i32 61440, i32 682)
  br label %207

207:                                              ; preds = %203, %199
  %208 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %209 = call i32 @BWN_TAB_2(i32 11, i32 1)
  %210 = call i32 @bwn_tab_write(%struct.bwn_mac* %208, i32 %209, i32 24)
  %211 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %212 = load i32, i32* @BWN_PHY_RX_RADIO_CTL, align 4
  %213 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %214 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 1
  %217 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %211, i32 %212, i32 65529, i32 %216)
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %219 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 1
  br i1 %222, label %223, label %258

223:                                              ; preds = %207
  %224 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %225 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @BHND_BFL_FEM_BT, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %258

231:                                              ; preds = %223
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %254, %231
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @N(%struct.bwn_smpair* getelementptr inbounds ([16 x %struct.bwn_smpair], [16 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v2, i64 0, i64 0))
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [16 x %struct.bwn_smpair], [16 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v2, i64 0, i64 %239
  %241 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [16 x %struct.bwn_smpair], [16 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v2, i64 0, i64 %244
  %246 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [16 x %struct.bwn_smpair], [16 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v2, i64 0, i64 %249
  %251 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %237, i32 %242, i32 %247, i32 %252)
  br label %254

254:                                              ; preds = %236
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %7, align 4
  br label %232

257:                                              ; preds = %232
  br label %381

258:                                              ; preds = %223, %207
  %259 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @IEEE80211_IS_CHAN_5GHZ(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %284, label %264

264:                                              ; preds = %258
  %265 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %266 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1162
  br i1 %269, label %284, label %270

270:                                              ; preds = %264
  %271 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %272 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %311

276:                                              ; preds = %270
  %277 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %278 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @BHND_BFL_FEM, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %311

284:                                              ; preds = %276, %264, %258
  store i32 0, i32* %7, align 4
  br label %285

285:                                              ; preds = %307, %284
  %286 = load i32, i32* %7, align 4
  %287 = call i32 @N(%struct.bwn_smpair* getelementptr inbounds ([8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v3, i64 0, i64 0))
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %310

289:                                              ; preds = %285
  %290 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v3, i64 0, i64 %292
  %294 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v3, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v3, i64 0, i64 %302
  %304 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %290, i32 %295, i32 %300, i32 %305)
  br label %307

307:                                              ; preds = %289
  %308 = load i32, i32* %7, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %7, align 4
  br label %285

310:                                              ; preds = %285
  br label %380

311:                                              ; preds = %276, %270
  %312 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %313 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp eq i64 %315, 1
  br i1 %316, label %325, label %317

317:                                              ; preds = %311
  %318 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %319 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @BHND_BFL_FEM, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %352

325:                                              ; preds = %317, %311
  store i32 0, i32* %7, align 4
  br label %326

326:                                              ; preds = %348, %325
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @N(%struct.bwn_smpair* getelementptr inbounds ([8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v4, i64 0, i64 0))
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %326
  %331 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v4, i64 0, i64 %333
  %335 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v4, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v4, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %331, i32 %336, i32 %341, i32 %346)
  br label %348

348:                                              ; preds = %330
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %326

351:                                              ; preds = %326
  br label %379

352:                                              ; preds = %317
  store i32 0, i32* %7, align 4
  br label %353

353:                                              ; preds = %375, %352
  %354 = load i32, i32* %7, align 4
  %355 = call i32 @N(%struct.bwn_smpair* getelementptr inbounds ([8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v5, i64 0, i64 0))
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %378

357:                                              ; preds = %353
  %358 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %359 = load i32, i32* %7, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v5, i64 0, i64 %360
  %362 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v5, i64 0, i64 %365
  %367 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [8 x %struct.bwn_smpair], [8 x %struct.bwn_smpair]* @bwn_phy_lp_bbinit_r01.v5, i64 0, i64 %370
  %372 = getelementptr inbounds %struct.bwn_smpair, %struct.bwn_smpair* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %358, i32 %363, i32 %368, i32 %373)
  br label %375

375:                                              ; preds = %357
  %376 = load i32, i32* %7, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %7, align 4
  br label %353

378:                                              ; preds = %353
  br label %379

379:                                              ; preds = %378, %351
  br label %380

380:                                              ; preds = %379, %310
  br label %381

381:                                              ; preds = %380, %257
  %382 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %383 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp eq i64 %385, 1
  br i1 %386, label %387, label %404

387:                                              ; preds = %381
  %388 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %389 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @BHND_BFL_PAREF, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %387
  %396 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %397 = call i32 @BWN_PHY_COPY(%struct.bwn_mac* %396, i32 131, i32 135)
  %398 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %399 = call i32 @BWN_PHY_COPY(%struct.bwn_mac* %398, i32 130, i32 134)
  %400 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %401 = call i32 @BWN_PHY_COPY(%struct.bwn_mac* %400, i32 129, i32 133)
  %402 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %403 = call i32 @BWN_PHY_COPY(%struct.bwn_mac* %402, i32 128, i32 132)
  br label %404

404:                                              ; preds = %395, %387, %381
  %405 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %406 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @BHND_BFL_FEM_BT, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %442

412:                                              ; preds = %404
  %413 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %414 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @BHND_CHIPID_BCM5354, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %442

419:                                              ; preds = %412
  %420 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %421 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @BHND_PKGID_BCM4712SMALL, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %442

426:                                              ; preds = %419
  %427 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %428 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %429 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %427, i32 %428, i32 6)
  %430 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %431 = load i32, i32* @BWN_PHY_GPIO_SELECT, align 4
  %432 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %430, i32 %431, i32 5)
  %433 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %434 = load i32, i32* @BWN_PHY_GPIO_OUTEN, align 4
  %435 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %433, i32 %434, i32 65535)
  %436 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %437 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %438 = call i32 @bwn_hf_read(%struct.bwn_mac* %437)
  %439 = load i32, i32* @BWN_HF_PR45960W, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @bwn_hf_write(%struct.bwn_mac* %436, i32 %440)
  br label %442

442:                                              ; preds = %426, %419, %412, %404
  %443 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %444 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %473

448:                                              ; preds = %442
  %449 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %450 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %451 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %449, i32 %450, i32 32768)
  %452 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %453 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %454 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %452, i32 %453, i32 64)
  %455 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %456 = load i32, i32* @BWN_PHY_MINPWR_LEVEL, align 4
  %457 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %455, i32 %456, i32 255, i32 41984)
  %458 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %459 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %460 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %458, i32 %459, i32 61695, i32 2816)
  %461 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %462 = load i32, i32* @BWN_PHY_SYNCPEAKCNT, align 4
  %463 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %461, i32 %462, i32 65528, i32 7)
  %464 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %465 = load i32, i32* @BWN_PHY_DSSS_CONFIRM_CNT, align 4
  %466 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %464, i32 %465, i32 65528, i32 3)
  %467 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %468 = load i32, i32* @BWN_PHY_DSSS_CONFIRM_CNT, align 4
  %469 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %467, i32 %468, i32 65479, i32 32)
  %470 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %471 = load i32, i32* @BWN_PHY_IDLEAFTERPKTRXTO, align 4
  %472 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %470, i32 %471, i32 255)
  br label %480

473:                                              ; preds = %442
  %474 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %475 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %476 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %474, i32 %475, i32 32767)
  %477 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %478 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %479 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %477, i32 %478, i32 65471)
  br label %480

480:                                              ; preds = %473, %448
  %481 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %482 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = icmp eq i64 %484, 1
  br i1 %485, label %486, label %526

486:                                              ; preds = %480
  %487 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %488 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %487, i32 139)
  store i32 %488, i32* %8, align 4
  %489 = load i32, i32* %8, align 4
  %490 = and i32 %489, 992
  %491 = ashr i32 %490, 5
  store i32 %491, i32* %9, align 4
  %492 = load i32, i32* %9, align 4
  %493 = shl i32 %492, 5
  %494 = load i32, i32* %9, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %9, align 4
  %496 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %497 = load i32, i32* @BWN_PHY_4C3, align 4
  %498 = load i32, i32* %9, align 4
  %499 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %496, i32 %497, i32 %498)
  %500 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %501 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %500, i32 137)
  store i32 %501, i32* %8, align 4
  %502 = load i32, i32* %8, align 4
  %503 = and i32 %502, 7936
  %504 = ashr i32 %503, 8
  store i32 %504, i32* %9, align 4
  %505 = load i32, i32* %9, align 4
  %506 = shl i32 %505, 5
  %507 = load i32, i32* %9, align 4
  %508 = or i32 %507, %506
  store i32 %508, i32* %9, align 4
  %509 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %510 = load i32, i32* @BWN_PHY_4C4, align 4
  %511 = load i32, i32* %9, align 4
  %512 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %509, i32 %510, i32 %511)
  %513 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %514 = load i32, i32* @BWN_PHY_VERYLOWGAINDB, align 4
  %515 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %513, i32 %514)
  store i32 %515, i32* %8, align 4
  %516 = load i32, i32* %8, align 4
  %517 = and i32 %516, 255
  store i32 %517, i32* %9, align 4
  %518 = load i32, i32* %8, align 4
  %519 = shl i32 %518, 8
  %520 = load i32, i32* %9, align 4
  %521 = or i32 %520, %519
  store i32 %521, i32* %9, align 4
  %522 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %523 = load i32, i32* @BWN_PHY_4C5, align 4
  %524 = load i32, i32* %9, align 4
  %525 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %522, i32 %523, i32 %524)
  br label %526

526:                                              ; preds = %486, %480
  ret void
}

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @N(%struct.bwn_smpair*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i32 @bhnd_pmu_set_voltage_raw(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bhnd_pmu_enable_regulator(i32, i32) #1

declare dso_local i32 @bwn_tab_write(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_TAB_2(i32, i32) #1

declare dso_local i32 @bhnd_pmu_disable_regulator(i32, i32) #1

declare dso_local i32 @BWN_PHY_COPY(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
