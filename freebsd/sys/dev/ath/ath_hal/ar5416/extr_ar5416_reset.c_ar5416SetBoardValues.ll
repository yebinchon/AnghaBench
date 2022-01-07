; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetBoardValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetBoardValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_8__ = type { %struct.ar5416eeprom }
%struct.ar5416eeprom = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }

@AR_EEPROM_VER14_1 = common dso_local global i64 0, align 8
@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_DB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_DB = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_DB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_DB5 = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AR_AN_TOP2_LOCALBIAS = common dso_local global i32 0, align 4
@AR5416_EEP_FLAG_LOCALBIAS = common dso_local global i32 0, align 4
@AR_PHY_XPA_CFG = common dso_local global i32 0, align 4
@AR_PHY_FORCE_XPA_CFG = common dso_local global i32 0, align 4
@AR5416_EEP_FLAG_FORCEXPAON = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_PGA = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i32 0, align 4
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_FRAME_TO_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_FRAME_TO_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_19 = common dso_local global i64 0, align 8
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_20 = common dso_local global i64 0, align 8
@AR_AN_TOP1 = common dso_local global i32 0, align 4
@AR_AN_TOP1_DACIPMODE = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL_TX_CLIP = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_TX_DESIRED_SCALE_CCK = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetBoardValues(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ar5416eeprom*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.ar5416eeprom* %16, %struct.ar5416eeprom** %6, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AR_EEPROM_VER14_1, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @HALASSERT(i32 %23)
  %25 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %30
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %32)
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 23, i32 44
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i64 %38, i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %125, %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %128

47:                                               ; preds = %43
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = call i64 @AR_SREV_MERLIN(%struct.ath_hal* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %128

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ar5416GetRegChainOffset(%struct.ath_hal* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %61 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @OS_REG_WRITE(%struct.ath_hal* %60, i64 %64, i32 %71)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %79 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @OS_REG_READ(%struct.ath_hal* %78, i64 %82)
  %84 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %85 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 20
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %97 = call i32 @SM(i32 %95, i32 %96)
  %98 = or i32 %88, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 19
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %107 = call i32 @SM(i32 %105, i32 %106)
  %108 = or i32 %98, %107
  %109 = call i32 @OS_REG_WRITE(%struct.ath_hal* %73, i64 %77, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %56
  %113 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %114 = call i64 @AR_SREV_5416_V20_OR_LATER(%struct.ath_hal* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112, %56
  %117 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @ar5416SetDefGainValues(%struct.ath_hal* %117, %struct.TYPE_7__* %118, %struct.ar5416eeprom* %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %112
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %43

128:                                              ; preds = %54, %43
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %228

132:                                              ; preds = %128
  %133 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %134 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %132
  %137 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %138 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %139 = load i32, i32* @AR_AN_RF2G1_CH0_OB, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %137, i32 %138, i32 %139, i32 %142)
  %144 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %145 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %146 = load i32, i32* @AR_AN_RF2G1_CH0_DB, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %144, i32 %145, i32 %146, i32 %149)
  %151 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %152 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %153 = load i32, i32* @AR_AN_RF2G1_CH1_OB, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %151, i32 %152, i32 %153, i32 %156)
  %158 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %159 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %160 = load i32, i32* @AR_AN_RF2G1_CH1_DB, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %158, i32 %159, i32 %160, i32 %163)
  br label %194

165:                                              ; preds = %132
  %166 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %167 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %168 = load i32, i32* @AR_AN_RF5G1_CH0_OB5, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %166, i32 %167, i32 %168, i32 %171)
  %173 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %174 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %175 = load i32, i32* @AR_AN_RF5G1_CH0_DB5, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %173, i32 %174, i32 %175, i32 %178)
  %180 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %181 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %182 = load i32, i32* @AR_AN_RF5G1_CH1_OB5, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %180, i32 %181, i32 %182, i32 %185)
  %187 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %188 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %189 = load i32, i32* @AR_AN_RF5G1_CH1_DB5, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %187, i32 %188, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %165, %136
  %195 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %196 = load i32, i32* @AR_AN_TOP2, align 4
  %197 = load i32, i32* @AR_AN_TOP2_XPABIAS_LVL, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %195, i32 %196, i32 %197, i32 %200)
  %202 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %203 = load i32, i32* @AR_AN_TOP2, align 4
  %204 = load i32, i32* @AR_AN_TOP2_LOCALBIAS, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AR5416_EEP_FLAG_LOCALBIAS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %202, i32 %203, i32 %204, i32 %213)
  %215 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %216 = load i32, i32* @AR_PHY_XPA_CFG, align 4
  %217 = load i32, i32* @AR_PHY_FORCE_XPA_CFG, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @AR5416_EEP_FLAG_FORCEXPAON, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %215, i32 %216, i32 %217, i32 %226)
  br label %228

228:                                              ; preds = %194, %128
  %229 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %230 = load i32, i32* @AR_PHY_SETTLING, align 4
  %231 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %229, i32 %230, i32 %231, i32 %234)
  %236 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %237 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %238 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %236, i32 %237, i32 %238, i32 %241)
  %243 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %244 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %228
  %247 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %248 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %249 = load i32, i32* @AR_PHY_DESIRED_SZ_PGA, align 4
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 10
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %247, i32 %248, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %246, %228
  %255 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %256 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 18
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %261 = call i32 @SM(i32 %259, i32 %260)
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 18
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %266 = call i32 @SM(i32 %264, i32 %265)
  %267 = or i32 %261, %266
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 17
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %272 = call i32 @SM(i32 %270, i32 %271)
  %273 = or i32 %267, %272
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 17
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %278 = call i32 @SM(i32 %276, i32 %277)
  %279 = or i32 %273, %278
  %280 = call i32 @OS_REG_WRITE(%struct.ath_hal* %255, i64 %256, i32 %279)
  %281 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %282 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %283 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %281, i32 %282, i32 %283, i32 %286)
  %288 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %289 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %254
  %292 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %293 = load i32, i32* @AR_PHY_CCA, align 4
  %294 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 12
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %292, i32 %293, i32 %294, i32 %297)
  %299 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %300 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %301 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %299, i32 %300, i32 %301, i32 %304)
  br label %321

306:                                              ; preds = %254
  %307 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %308 = load i32, i32* @AR_PHY_CCA, align 4
  %309 = load i32, i32* @AR_PHY_CCA_THRESH62, align 4
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 12
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %307, i32 %308, i32 %309, i32 %312)
  %314 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %315 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %316 = load i32, i32* @AR_PHY_EXT_CCA_THRESH62, align 4
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 12
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %314, i32 %315, i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %306, %291
  %322 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %323 = call i64 @IS_EEP_MINOR_V2(%struct.ath_hal* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %340

325:                                              ; preds = %321
  %326 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %327 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %328 = load i32, i32* @AR_PHY_TX_FRAME_TO_DATA_START, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 13
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %326, i32 %327, i32 %328, i32 %331)
  %333 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %334 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %335 = load i32, i32* @AR_PHY_TX_FRAME_TO_PA_ON, align 4
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 14
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %333, i32 %334, i32 %335, i32 %338)
  br label %340

340:                                              ; preds = %325, %321
  %341 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %342 = call i64 @IS_EEP_MINOR_V3(%struct.ath_hal* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %340
  %345 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %346 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %344
  %349 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %350 = load i32, i32* @AR_PHY_SETTLING, align 4
  %351 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 15
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %349, i32 %350, i32 %351, i32 %354)
  br label %356

356:                                              ; preds = %348, %344, %340
  %357 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %358 = call i64 @AR_SREV_MERLIN_20_OR_LATER(%struct.ath_hal* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %356
  %361 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %362 = call i64 @EEP_MINOR(%struct.ath_hal* %361)
  %363 = load i64, i64* @AR5416_EEP_MINOR_VER_19, align 8
  %364 = icmp sge i64 %362, %363
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %367 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %368 = load i32, i32* @AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK, align 4
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 16
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %366, i32 %367, i32 %368, i32 %371)
  br label %373

373:                                              ; preds = %365, %360, %356
  %374 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %375 = call i64 @AR_SREV_MERLIN_20(%struct.ath_hal* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %434

377:                                              ; preds = %373
  %378 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %379 = call i64 @EEP_MINOR(%struct.ath_hal* %378)
  %380 = load i64, i64* @AR5416_EEP_MINOR_VER_20, align 8
  %381 = icmp sge i64 %379, %380
  br i1 %381, label %382, label %434

382:                                              ; preds = %377
  %383 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %384 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %388 = load i32, i32* @AR_AN_TOP1, align 4
  %389 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %390 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %391 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %387, i32 %388, i32 %389, i32 %393)
  br label %416

395:                                              ; preds = %382
  %396 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %397 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %395
  %402 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %403 = load i32, i32* @AR_AN_TOP1, align 4
  %404 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %405 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %402, i32 %403, i32 %404, i32 0)
  br label %415

406:                                              ; preds = %395
  %407 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %408 = load i32, i32* @AR_AN_TOP1, align 4
  %409 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %410 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %411 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %407, i32 %408, i32 %409, i32 %413)
  br label %415

415:                                              ; preds = %406, %401
  br label %416

416:                                              ; preds = %415, %386
  %417 = call i32 @OS_DELAY(i32 100)
  %418 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %419 = load i32, i32* @AR_PHY_FRAME_CTL, align 4
  %420 = load i32, i32* @AR_PHY_FRAME_CTL_TX_CLIP, align 4
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 16
  %423 = load i32, i32* %422, align 8
  %424 = ashr i32 %423, 2
  %425 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %418, i32 %419, i32 %420, i32 %424)
  %426 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %427 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %428 = load i32, i32* @AR_PHY_TX_DESIRED_SCALE_CCK, align 4
  %429 = load %struct.ar5416eeprom*, %struct.ar5416eeprom** %6, align 8
  %430 = getelementptr inbounds %struct.ar5416eeprom, %struct.ar5416eeprom* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %426, i32 %427, i32 %428, i32 %432)
  br label %434

434:                                              ; preds = %416, %377, %373
  %435 = load i32, i32* @AH_TRUE, align 4
  ret i32 %435
}

declare dso_local %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i64, i32) #1

declare dso_local i64 @AR_SREV_MERLIN(%struct.ath_hal*) #1

declare dso_local i32 @ar5416GetRegChainOffset(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @AR_SREV_5416_V20_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @ar5416SetDefGainValues(%struct.ath_hal*, %struct.TYPE_7__*, %struct.ar5416eeprom*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @IS_EEP_MINOR_V2(%struct.ath_hal*) #1

declare dso_local i64 @IS_EEP_MINOR_V3(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @AR_SREV_MERLIN_20_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @EEP_MINOR(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_MERLIN_20(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
