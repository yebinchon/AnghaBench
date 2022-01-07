; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bge_softc = type { i32, i32, i64 }
%struct.bce_softc = type { i32, i32, i32 }

@BRGPHY_MII_BMCR = common dso_local global i32 0, align 4
@BRGPHY_BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bge\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bce\00", align 1
@BGE_PHY_5704_A0_BUG = common dso_local global i32 0, align 4
@BGE_PHY_ADC_BUG = common dso_local global i32 0, align 4
@BGE_PHY_ADJUST_TRIM = common dso_local global i32 0, align 4
@BGE_PHY_BER_BUG = common dso_local global i32 0, align 4
@BGE_PHY_CRC_BUG = common dso_local global i32 0, align 4
@BGE_PHY_JITTER_BUG = common dso_local global i32 0, align 4
@BGE_FLAG_JUMBO = common dso_local global i32 0, align 4
@BGE_PHY_NO_WIRESPEED = common dso_local global i32 0, align 4
@BGE_PHY_NO_3LED = common dso_local global i32 0, align 4
@BRGPHY_MII_PHY_EXTCTL = common dso_local global i32 0, align 4
@BRGPHY_PHY_EXTCTL_3_LED = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BRGPHY_MII_EPHY_PTEST = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5708 = common dso_local global i64 0, align 8
@BCE_PHY_SERDES_FLAG = common dso_local global i32 0, align 4
@BRGPHY_5708S_BLOCK_ADDR = common dso_local global i32 0, align 4
@BRGPHY_5708S_DIG3_PG2 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG2_DIGCTL_3_0 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE = common dso_local global i32 0, align 4
@BRGPHY_5708S_DIG_PG0 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_CTL1 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_CTL2 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN = common dso_local global i32 0, align 4
@BCE_PHY_2_5G_CAPABLE_FLAG = common dso_local global i32 0, align 4
@BRGPHY_5708S_ANEG_NXT_PG_XMIT1 = common dso_local global i32 0, align 4
@BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G = common dso_local global i32 0, align 4
@BCE_CHIP_ID_5708_A0 = common dso_local global i64 0, align 8
@BCE_CHIP_ID_5708_B0 = common dso_local global i64 0, align 8
@BCE_CHIP_ID_5708_B1 = common dso_local global i64 0, align 8
@BRGPHY_5708S_TX_MISC_PG5 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG5_TXACTL1 = common dso_local global i32 0, align 4
@BCE_SHARED_HW_CFG_PHY_BACKPLANE = common dso_local global i32 0, align 4
@BCE_PORT_HW_CFG_CFG_TXCTL3_MASK = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG5_TXACTL3 = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BRGPHY_BLOCK_ADDR = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_SERDES_DIG = common dso_local global i32 0, align 4
@BRGPHY_SERDES_DIG_1000X_CTL1 = common dso_local global i32 0, align 4
@BRGPHY_SD_DIG_1000X_CTL1_AUTODET = common dso_local global i32 0, align 4
@BRGPHY_SD_DIG_1000X_CTL1_FIBER = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_OVER_1G = common dso_local global i32 0, align 4
@BRGPHY_OVER_1G_UNFORMAT_PG1 = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_MRBE = common dso_local global i32 0, align 4
@BRGPHY_MRBE_MSG_PG5_NP = common dso_local global i32 0, align 4
@BRGPHY_MRBE_MSG_PG5_NP_MBRE = common dso_local global i32 0, align 4
@BRGPHY_MRBE_MSG_PG5_NP_T2 = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_CL73_USER_B0 = common dso_local global i32 0, align 4
@BRGPHY_CL73_USER_B0_MBRE_CTL1 = common dso_local global i32 0, align 4
@BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP = common dso_local global i32 0, align 4
@BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR = common dso_local global i32 0, align 4
@BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_COMBO_IEEE0 = common dso_local global i32 0, align 4
@BCE_CHIP_REV_Ax = common dso_local global i64 0, align 8
@BCE_CHIP_REV_Bx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @brgphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brgphy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca %struct.bce_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  store %struct.bge_softc* null, %struct.bge_softc** %3, align 8
  store %struct.bce_softc* null, %struct.bce_softc** %4, align 8
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %10 = load i32, i32* @BRGPHY_BMCR_RESET, align 4
  %11 = call i32 @PHY_WRITE(%struct.mii_softc* %8, i32 %9, i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  %19 = load i32, i32* @BRGPHY_BMCR_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  %24 = call i32 @DELAY(i32 1000)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %12

28:                                               ; preds = %22, %12
  %29 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %67 [
    i32 130, label %32
    i32 129, label %60
    i32 128, label %66
  ]

32:                                               ; preds = %28
  %33 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %59 [
    i32 134, label %36
    i32 133, label %39
    i32 132, label %53
    i32 131, label %56
  ]

36:                                               ; preds = %32
  %37 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %38 = call i32 @bcm5401_load_dspcode(%struct.mii_softc* %37)
  br label %59

39:                                               ; preds = %32
  %40 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %39
  %50 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %51 = call i32 @bcm5401_load_dspcode(%struct.mii_softc* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %59

53:                                               ; preds = %32
  %54 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %55 = call i32 @bcm5411_load_dspcode(%struct.mii_softc* %54)
  br label %59

56:                                               ; preds = %32
  %57 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %58 = call i32 @bcm54k2_load_dspcode(%struct.mii_softc* %57)
  br label %59

59:                                               ; preds = %32, %56, %53, %52, %36
  br label %67

60:                                               ; preds = %28
  %61 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %65 [
    i32 138, label %64
    i32 137, label %64
    i32 136, label %64
    i32 135, label %64
  ]

64:                                               ; preds = %60, %60, %60, %60
  br label %454

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %28
  br label %454

67:                                               ; preds = %28, %65, %59
  %68 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  %73 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %74 = call i64 @mii_phy_mac_match(%struct.mii_softc* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %78 = call i8* @mii_phy_mac_softc(%struct.mii_softc* %77)
  %79 = bitcast i8* %78 to %struct.bge_softc*
  store %struct.bge_softc* %79, %struct.bge_softc** %3, align 8
  br label %89

80:                                               ; preds = %67
  %81 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %82 = call i64 @mii_phy_mac_match(%struct.mii_softc* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %86 = call i8* @mii_phy_mac_softc(%struct.mii_softc* %85)
  %87 = bitcast i8* %86 to %struct.bce_softc*
  store %struct.bce_softc* %87, %struct.bce_softc** %4, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %91 = icmp ne %struct.bge_softc* %90, null
  br i1 %91, label %92, label %202

92:                                               ; preds = %89
  %93 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %94 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BGE_PHY_5704_A0_BUG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %101 = call i32 @brgphy_fixup_5704_a0_bug(%struct.mii_softc* %100)
  br label %102

102:                                              ; preds = %99, %92
  %103 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %104 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BGE_PHY_ADC_BUG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %111 = call i32 @brgphy_fixup_adc_bug(%struct.mii_softc* %110)
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %114 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BGE_PHY_ADJUST_TRIM, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %121 = call i32 @brgphy_fixup_adjust_trim(%struct.mii_softc* %120)
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %124 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @BGE_PHY_BER_BUG, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %131 = call i32 @brgphy_fixup_ber_bug(%struct.mii_softc* %130)
  br label %132

132:                                              ; preds = %129, %122
  %133 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %134 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BGE_PHY_CRC_BUG, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %141 = call i32 @brgphy_fixup_crc_bug(%struct.mii_softc* %140)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %144 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BGE_PHY_JITTER_BUG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %151 = call i32 @brgphy_fixup_jitter_bug(%struct.mii_softc* %150)
  br label %152

152:                                              ; preds = %149, %142
  %153 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %154 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @BGE_FLAG_JUMBO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @if_getmtu(i32 %161)
  %163 = call i32 @brgphy_jumbo_settings(%struct.mii_softc* %160, i32 %162)
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %166 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BGE_PHY_NO_WIRESPEED, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %173 = call i32 @brgphy_ethernet_wirespeed(%struct.mii_softc* %172)
  br label %174

174:                                              ; preds = %171, %164
  %175 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %176 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @BGE_PHY_NO_3LED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %174
  %182 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %183 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %184 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %185 = load i32, i32* @BRGPHY_MII_PHY_EXTCTL, align 4
  %186 = call i32 @PHY_READ(%struct.mii_softc* %184, i32 %185)
  %187 = load i32, i32* @BRGPHY_PHY_EXTCTL_3_LED, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  %190 = call i32 @PHY_WRITE(%struct.mii_softc* %182, i32 %183, i32 %189)
  br label %191

191:                                              ; preds = %181, %174
  %192 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %193 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %199 = load i32, i32* @BRGPHY_MII_EPHY_PTEST, align 4
  %200 = call i32 @PHY_WRITE(%struct.mii_softc* %198, i32 %199, i32 18)
  br label %201

201:                                              ; preds = %197, %191
  br label %454

202:                                              ; preds = %89
  %203 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %204 = icmp ne %struct.bce_softc* %203, null
  br i1 %204, label %205, label %453

205:                                              ; preds = %202
  %206 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %207 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %206)
  %208 = load i64, i64* @BCE_CHIP_NUM_5708, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %326

210:                                              ; preds = %205
  %211 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %212 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %326

217:                                              ; preds = %210
  %218 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %219 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %220 = load i32, i32* @BRGPHY_5708S_DIG3_PG2, align 4
  %221 = call i32 @PHY_WRITE(%struct.mii_softc* %218, i32 %219, i32 %220)
  %222 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %223 = load i32, i32* @BRGPHY_5708S_PG2_DIGCTL_3_0, align 4
  %224 = load i32, i32* @BRGPHY_5708S_PG2_DIGCTL_3_0_USE_IEEE, align 4
  %225 = call i32 @PHY_WRITE(%struct.mii_softc* %222, i32 %223, i32 %224)
  %226 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %227 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %228 = load i32, i32* @BRGPHY_5708S_DIG_PG0, align 4
  %229 = call i32 @PHY_WRITE(%struct.mii_softc* %226, i32 %227, i32 %228)
  %230 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %231 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL1, align 4
  %232 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %233 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL1, align 4
  %234 = call i32 @PHY_READ(%struct.mii_softc* %232, i32 %233)
  %235 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL1_AUTODET_EN, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL1_FIBER_MODE, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @PHY_WRITE(%struct.mii_softc* %230, i32 %231, i32 %238)
  %240 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %241 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL2, align 4
  %242 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %243 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL2, align 4
  %244 = call i32 @PHY_READ(%struct.mii_softc* %242, i32 %243)
  %245 = load i32, i32* @BRGPHY_5708S_PG0_1000X_CTL2_PAR_DET_EN, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @PHY_WRITE(%struct.mii_softc* %240, i32 %241, i32 %246)
  %248 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %249 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @BCE_PHY_2_5G_CAPABLE_FLAG, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %217
  %255 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %256 = load i32, i32* @BRGPHY_5708S_ANEG_NXT_PG_XMIT1, align 4
  %257 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %258 = load i32, i32* @BRGPHY_5708S_ANEG_NXT_PG_XMIT1, align 4
  %259 = call i32 @PHY_READ(%struct.mii_softc* %257, i32 %258)
  %260 = load i32, i32* @BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @PHY_WRITE(%struct.mii_softc* %255, i32 %256, i32 %261)
  br label %263

263:                                              ; preds = %254, %217
  %264 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %265 = call i64 @BCE_CHIP_ID(%struct.bce_softc* %264)
  %266 = load i64, i64* @BCE_CHIP_ID_5708_A0, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %278, label %268

268:                                              ; preds = %263
  %269 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %270 = call i64 @BCE_CHIP_ID(%struct.bce_softc* %269)
  %271 = load i64, i64* @BCE_CHIP_ID_5708_B0, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %275 = call i64 @BCE_CHIP_ID(%struct.bce_softc* %274)
  %276 = load i64, i64* @BCE_CHIP_ID_5708_B1, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %273, %268, %263
  %279 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %280 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %281 = load i32, i32* @BRGPHY_5708S_TX_MISC_PG5, align 4
  %282 = call i32 @PHY_WRITE(%struct.mii_softc* %279, i32 %280, i32 %281)
  %283 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %284 = load i32, i32* @BRGPHY_5708S_PG5_TXACTL1, align 4
  %285 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %286 = load i32, i32* @BRGPHY_5708S_PG5_TXACTL1, align 4
  %287 = call i32 @PHY_READ(%struct.mii_softc* %285, i32 %286)
  %288 = and i32 %287, -49
  %289 = call i32 @PHY_WRITE(%struct.mii_softc* %283, i32 %284, i32 %288)
  %290 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %291 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %292 = load i32, i32* @BRGPHY_5708S_DIG_PG0, align 4
  %293 = call i32 @PHY_WRITE(%struct.mii_softc* %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %278, %273
  %295 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %296 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @BCE_SHARED_HW_CFG_PHY_BACKPLANE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %294
  %302 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %303 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @BCE_PORT_HW_CFG_CFG_TXCTL3_MASK, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %325

308:                                              ; preds = %301
  %309 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %310 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %311 = load i32, i32* @BRGPHY_5708S_TX_MISC_PG5, align 4
  %312 = call i32 @PHY_WRITE(%struct.mii_softc* %309, i32 %310, i32 %311)
  %313 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %314 = load i32, i32* @BRGPHY_5708S_PG5_TXACTL3, align 4
  %315 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %316 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @BCE_PORT_HW_CFG_CFG_TXCTL3_MASK, align 4
  %319 = and i32 %317, %318
  %320 = call i32 @PHY_WRITE(%struct.mii_softc* %313, i32 %314, i32 %319)
  %321 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %322 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %323 = load i32, i32* @BRGPHY_5708S_DIG_PG0, align 4
  %324 = call i32 @PHY_WRITE(%struct.mii_softc* %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %308, %301, %294
  br label %452

326:                                              ; preds = %210, %205
  %327 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %328 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %327)
  %329 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %416

331:                                              ; preds = %326
  %332 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %333 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %416

338:                                              ; preds = %331
  %339 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %340 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %341 = load i32, i32* @BRGPHY_BLOCK_ADDR_SERDES_DIG, align 4
  %342 = call i32 @PHY_WRITE(%struct.mii_softc* %339, i32 %340, i32 %341)
  %343 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %344 = load i32, i32* @BRGPHY_SERDES_DIG_1000X_CTL1, align 4
  %345 = call i32 @PHY_READ(%struct.mii_softc* %343, i32 %344)
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* @BRGPHY_SD_DIG_1000X_CTL1_AUTODET, align 4
  %347 = xor i32 %346, -1
  %348 = load i32, i32* %7, align 4
  %349 = and i32 %348, %347
  store i32 %349, i32* %7, align 4
  %350 = load i32, i32* @BRGPHY_SD_DIG_1000X_CTL1_FIBER, align 4
  %351 = load i32, i32* %7, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %7, align 4
  %353 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %354 = load i32, i32* @BRGPHY_SERDES_DIG_1000X_CTL1, align 4
  %355 = load i32, i32* %7, align 4
  %356 = call i32 @PHY_WRITE(%struct.mii_softc* %353, i32 %354, i32 %355)
  %357 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %358 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %359 = load i32, i32* @BRGPHY_BLOCK_ADDR_OVER_1G, align 4
  %360 = call i32 @PHY_WRITE(%struct.mii_softc* %357, i32 %358, i32 %359)
  %361 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %362 = load i32, i32* @BRGPHY_OVER_1G_UNFORMAT_PG1, align 4
  %363 = call i32 @PHY_READ(%struct.mii_softc* %361, i32 %362)
  store i32 %363, i32* %7, align 4
  %364 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %365 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @BCE_PHY_2_5G_CAPABLE_FLAG, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %338
  %371 = load i32, i32* @BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G, align 4
  %372 = load i32, i32* %7, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %7, align 4
  br label %379

374:                                              ; preds = %338
  %375 = load i32, i32* @BRGPHY_5708S_ANEG_NXT_PG_XMIT1_25G, align 4
  %376 = xor i32 %375, -1
  %377 = load i32, i32* %7, align 4
  %378 = and i32 %377, %376
  store i32 %378, i32* %7, align 4
  br label %379

379:                                              ; preds = %374, %370
  %380 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %381 = load i32, i32* @BRGPHY_OVER_1G_UNFORMAT_PG1, align 4
  %382 = load i32, i32* %7, align 4
  %383 = call i32 @PHY_WRITE(%struct.mii_softc* %380, i32 %381, i32 %382)
  %384 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %385 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %386 = load i32, i32* @BRGPHY_BLOCK_ADDR_MRBE, align 4
  %387 = call i32 @PHY_WRITE(%struct.mii_softc* %384, i32 %385, i32 %386)
  %388 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %389 = load i32, i32* @BRGPHY_MRBE_MSG_PG5_NP, align 4
  %390 = call i32 @PHY_READ(%struct.mii_softc* %388, i32 %389)
  store i32 %390, i32* %7, align 4
  %391 = load i32, i32* @BRGPHY_MRBE_MSG_PG5_NP_MBRE, align 4
  %392 = load i32, i32* @BRGPHY_MRBE_MSG_PG5_NP_T2, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* %7, align 4
  %395 = or i32 %394, %393
  store i32 %395, i32* %7, align 4
  %396 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %397 = load i32, i32* @BRGPHY_MRBE_MSG_PG5_NP, align 4
  %398 = load i32, i32* %7, align 4
  %399 = call i32 @PHY_WRITE(%struct.mii_softc* %396, i32 %397, i32 %398)
  %400 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %401 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %402 = load i32, i32* @BRGPHY_BLOCK_ADDR_CL73_USER_B0, align 4
  %403 = call i32 @PHY_WRITE(%struct.mii_softc* %400, i32 %401, i32 %402)
  %404 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %405 = load i32, i32* @BRGPHY_CL73_USER_B0_MBRE_CTL1, align 4
  %406 = load i32, i32* @BRGPHY_CL73_USER_B0_MBRE_CTL1_NP_AFT_BP, align 4
  %407 = load i32, i32* @BRGPHY_CL73_USER_B0_MBRE_CTL1_STA_MGR, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* @BRGPHY_CL73_USER_B0_MBRE_CTL1_ANEG, align 4
  %410 = or i32 %408, %409
  %411 = call i32 @PHY_WRITE(%struct.mii_softc* %404, i32 %405, i32 %410)
  %412 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %413 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %414 = load i32, i32* @BRGPHY_BLOCK_ADDR_COMBO_IEEE0, align 4
  %415 = call i32 @PHY_WRITE(%struct.mii_softc* %412, i32 %413, i32 %414)
  br label %451

416:                                              ; preds = %331, %326
  %417 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %418 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %417)
  %419 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %441

421:                                              ; preds = %416
  %422 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %423 = call i64 @BCE_CHIP_REV(%struct.bce_softc* %422)
  %424 = load i64, i64* @BCE_CHIP_REV_Ax, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  %427 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %428 = call i64 @BCE_CHIP_REV(%struct.bce_softc* %427)
  %429 = load i64, i64* @BCE_CHIP_REV_Bx, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %434

431:                                              ; preds = %426, %421
  %432 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %433 = call i32 @brgphy_fixup_disable_early_dac(%struct.mii_softc* %432)
  br label %434

434:                                              ; preds = %431, %426
  %435 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %436 = load i32, i32* %5, align 4
  %437 = call i32 @if_getmtu(i32 %436)
  %438 = call i32 @brgphy_jumbo_settings(%struct.mii_softc* %435, i32 %437)
  %439 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %440 = call i32 @brgphy_ethernet_wirespeed(%struct.mii_softc* %439)
  br label %450

441:                                              ; preds = %416
  %442 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %443 = call i32 @brgphy_fixup_ber_bug(%struct.mii_softc* %442)
  %444 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %445 = load i32, i32* %5, align 4
  %446 = call i32 @if_getmtu(i32 %445)
  %447 = call i32 @brgphy_jumbo_settings(%struct.mii_softc* %444, i32 %446)
  %448 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %449 = call i32 @brgphy_ethernet_wirespeed(%struct.mii_softc* %448)
  br label %450

450:                                              ; preds = %441, %434
  br label %451

451:                                              ; preds = %450, %379
  br label %452

452:                                              ; preds = %451, %325
  br label %453

453:                                              ; preds = %452, %202
  br label %454

454:                                              ; preds = %64, %66, %453, %201
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bcm5401_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @bcm5411_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @bcm54k2_load_dspcode(%struct.mii_softc*) #1

declare dso_local i64 @mii_phy_mac_match(%struct.mii_softc*, i8*) #1

declare dso_local i8* @mii_phy_mac_softc(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_5704_a0_bug(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_adc_bug(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_adjust_trim(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_ber_bug(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_crc_bug(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_fixup_jitter_bug(%struct.mii_softc*) #1

declare dso_local i32 @brgphy_jumbo_settings(%struct.mii_softc*, i32) #1

declare dso_local i32 @if_getmtu(i32) #1

declare dso_local i32 @brgphy_ethernet_wirespeed(%struct.mii_softc*) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i64 @BCE_CHIP_ID(%struct.bce_softc*) #1

declare dso_local i64 @BCE_CHIP_REV(%struct.bce_softc*) #1

declare dso_local i32 @brgphy_fixup_disable_early_dac(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
