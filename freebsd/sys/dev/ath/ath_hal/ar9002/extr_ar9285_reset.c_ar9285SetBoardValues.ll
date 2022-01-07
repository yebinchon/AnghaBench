; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_reset.c_ar9285SetBoardValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_reset.c_ar9285SetBoardValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_9__ = type { %struct.ar5416eeprom_4k }
%struct.ar5416eeprom_4k = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_4 = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i32 0, align 4
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
@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_FRAME_TO_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_FRAME_TO_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i32 0, align 4
@EEP_4K_BB_DESIRED_SCALE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"[ath]: adjusting cck tx gain factor\0A\00", align 1
@AR_PHY_TX_PWRCTRL8 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL10 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL12 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL11 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL13 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9285SetBoardValues(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ar5416eeprom_4k*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i64], align 16
  %10 = alloca [5 x i64], align 16
  %11 = alloca [5 x i64], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call %struct.TYPE_10__* @AH_PRIVATE(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.ar5416eeprom_4k* %22, %struct.ar5416eeprom_4k** %6, align 8
  %23 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %6, align 8
  %24 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %23, i32 0, i32 1
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  store i64 23, i64* %8, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %25, i32 %26, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @ar9285SetBoardGain(%struct.ath_hal* %31, %struct.TYPE_8__* %32, %struct.ar5416eeprom_4k* %33, i64 %34)
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = call %struct.TYPE_11__* @AH5212(%struct.ath_hal* %37)
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ar9285SetAntennaSwitch(%struct.ath_hal* %36, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %107

46:                                               ; preds = %2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  store i64 %49, i64* %50, align 16
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  store i64 %57, i64* %58, align 16
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 3
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 4
  store i64 %65, i64* %66, align 16
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  store i64 %69, i64* %70, align 16
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 1
  store i64 %73, i64* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  store i64 %77, i64* %78, align 16
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 10
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 3
  store i64 %81, i64* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 4
  store i64 %85, i64* %86, align 16
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 12
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0
  store i64 %89, i64* %90, align 16
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 13
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 1
  store i64 %93, i64* %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 14
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 2
  store i64 %97, i64* %98, align 16
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 15
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 3
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 16
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 4
  store i64 %105, i64* %106, align 16
  br label %174

107:                                              ; preds = %2
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %146

112:                                              ; preds = %107
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  store i64 %115, i64* %116, align 16
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 4
  store i64 %119, i64* %120, align 16
  %121 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 3
  store i64 %119, i64* %121, align 8
  %122 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  store i64 %119, i64* %122, align 16
  %123 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  store i64 %119, i64* %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  store i64 %126, i64* %127, align 16
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 4
  store i64 %130, i64* %131, align 16
  %132 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 3
  store i64 %130, i64* %132, align 8
  %133 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  store i64 %130, i64* %133, align 16
  %134 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 1
  store i64 %130, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0
  store i64 %137, i64* %138, align 16
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 13
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 4
  store i64 %141, i64* %142, align 16
  %143 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 3
  store i64 %141, i64* %143, align 8
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 2
  store i64 %141, i64* %144, align 16
  %145 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 1
  store i64 %141, i64* %145, align 8
  br label %173

146:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 5
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 %155
  store i64 %153, i64* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 %161
  store i64 %159, i64* %162, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 %167
  store i64 %165, i64* %168, align 8
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %147

172:                                              ; preds = %147
  br label %173

173:                                              ; preds = %172, %112
  br label %174

174:                                              ; preds = %173, %46
  %175 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %176 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %177 = load i32, i32* @AR9285_AN_RF2G3_OB_0, align 4
  %178 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %179 = load i64, i64* %178, align 16
  %180 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %175, i32 %176, i32 %177, i64 %179)
  %181 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %182 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %183 = load i32, i32* @AR9285_AN_RF2G3_OB_1, align 4
  %184 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %181, i32 %182, i32 %183, i64 %185)
  %187 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %188 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %189 = load i32, i32* @AR9285_AN_RF2G3_OB_2, align 4
  %190 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  %191 = load i64, i64* %190, align 16
  %192 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %187, i32 %188, i32 %189, i64 %191)
  %193 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %194 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %195 = load i32, i32* @AR9285_AN_RF2G3_OB_3, align 4
  %196 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 3
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %193, i32 %194, i32 %195, i64 %197)
  %199 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %200 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %201 = load i32, i32* @AR9285_AN_RF2G3_OB_4, align 4
  %202 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 4
  %203 = load i64, i64* %202, align 16
  %204 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %199, i32 %200, i32 %201, i64 %203)
  %205 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %206 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %207 = load i32, i32* @AR9285_AN_RF2G3_DB1_0, align 4
  %208 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %209 = load i64, i64* %208, align 16
  %210 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %205, i32 %206, i32 %207, i64 %209)
  %211 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %212 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %213 = load i32, i32* @AR9285_AN_RF2G3_DB1_1, align 4
  %214 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 1
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %211, i32 %212, i32 %213, i64 %215)
  %217 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %218 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %219 = load i32, i32* @AR9285_AN_RF2G3_DB1_2, align 4
  %220 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 2
  %221 = load i64, i64* %220, align 16
  %222 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %217, i32 %218, i32 %219, i64 %221)
  %223 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %224 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %225 = load i32, i32* @AR9285_AN_RF2G4_DB1_3, align 4
  %226 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 3
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %223, i32 %224, i32 %225, i64 %227)
  %229 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %230 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %231 = load i32, i32* @AR9285_AN_RF2G4_DB1_4, align 4
  %232 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 4
  %233 = load i64, i64* %232, align 16
  %234 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %229, i32 %230, i32 %231, i64 %233)
  %235 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %236 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %237 = load i32, i32* @AR9285_AN_RF2G4_DB2_0, align 4
  %238 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0
  %239 = load i64, i64* %238, align 16
  %240 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %235, i32 %236, i32 %237, i64 %239)
  %241 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %242 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %243 = load i32, i32* @AR9285_AN_RF2G4_DB2_1, align 4
  %244 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %241, i32 %242, i32 %243, i64 %245)
  %247 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %248 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %249 = load i32, i32* @AR9285_AN_RF2G4_DB2_2, align 4
  %250 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 2
  %251 = load i64, i64* %250, align 16
  %252 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %247, i32 %248, i32 %249, i64 %251)
  %253 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %254 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %255 = load i32, i32* @AR9285_AN_RF2G4_DB2_3, align 4
  %256 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 3
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %253, i32 %254, i32 %255, i64 %257)
  %259 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %260 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %261 = load i32, i32* @AR9285_AN_RF2G4_DB2_4, align 4
  %262 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 4
  %263 = load i64, i64* %262, align 16
  %264 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %259, i32 %260, i32 %261, i64 %263)
  %265 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %266 = load i32, i32* @AR_PHY_SETTLING, align 4
  %267 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 26
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %265, i32 %266, i32 %267, i32 %270)
  %272 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %273 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %274 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 25
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %272, i32 %273, i32 %274, i32 %277)
  %279 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %280 = load i32, i32* @AR_PHY_RF_CTL4, align 4
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 24
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %285 = call i32 @SM(i32 %283, i32 %284)
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 24
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %290 = call i32 @SM(i32 %288, i32 %289)
  %291 = or i32 %285, %290
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 23
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %296 = call i32 @SM(i32 %294, i32 %295)
  %297 = or i32 %291, %296
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 23
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %302 = call i32 @SM(i32 %300, i32 %301)
  %303 = or i32 %297, %302
  %304 = call i32 @OS_REG_WRITE(%struct.ath_hal* %279, i32 %280, i32 %303)
  %305 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %306 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %307 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 22
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %305, i32 %306, i32 %307, i32 %310)
  %312 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %313 = load i32, i32* @AR_PHY_CCA, align 4
  %314 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 21
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %312, i32 %313, i32 %314, i32 %317)
  %319 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %320 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %321 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 21
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %319, i32 %320, i32 %321, i32 %324)
  %326 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %6, align 8
  %327 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %331 = and i32 %329, %330
  %332 = load i32, i32* @AR5416_EEP_MINOR_VER_2, align 4
  %333 = icmp sge i32 %331, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %174
  %335 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %336 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %337 = load i32, i32* @AR_PHY_TX_FRAME_TO_DATA_START, align 4
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 20
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %335, i32 %336, i32 %337, i32 %340)
  %342 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %343 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %344 = load i32, i32* @AR_PHY_TX_FRAME_TO_PA_ON, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 19
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %342, i32 %343, i32 %344, i32 %347)
  br label %349

349:                                              ; preds = %334, %174
  %350 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %6, align 8
  %351 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %355 = and i32 %353, %354
  %356 = load i32, i32* @AR5416_EEP_MINOR_VER_3, align 4
  %357 = icmp sge i32 %355, %356
  br i1 %357, label %358, label %371

358:                                              ; preds = %349
  %359 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %360 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %358
  %363 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %364 = load i32, i32* @AR_PHY_SETTLING, align 4
  %365 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 18
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %363, i32 %364, i32 %365, i32 %368)
  br label %370

370:                                              ; preds = %362, %358
  br label %371

371:                                              ; preds = %370, %349
  %372 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %373 = call i64 @AR_SREV_9271(%struct.ath_hal* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %371
  %376 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %377 = call i64 @AR_SREV_KITE(%struct.ath_hal* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %442

379:                                              ; preds = %375, %371
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 17
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @EEP_4K_BB_DESIRED_SCALE_MASK, align 8
  %384 = and i64 %382, %383
  store i64 %384, i64* %13, align 8
  %385 = load %struct.ar5416eeprom_4k*, %struct.ar5416eeprom_4k** %6, align 8
  %386 = getelementptr inbounds %struct.ar5416eeprom_4k, %struct.ar5416eeprom_4k* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %441

390:                                              ; preds = %379
  %391 = load i64, i64* %13, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %441

393:                                              ; preds = %390
  %394 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %395 = call i32 @ath_hal_printf(%struct.ath_hal* %394, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i64 34636833, i64* %15, align 8
  %396 = load i64, i64* %15, align 8
  %397 = load i64, i64* %13, align 8
  %398 = mul nsw i64 %396, %397
  store i64 %398, i64* %14, align 8
  %399 = load i64, i64* %15, align 8
  %400 = mul nsw i64 %399, 31
  store i64 %400, i64* %16, align 8
  %401 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %402 = load i32, i32* @AR_PHY_TX_PWRCTRL8, align 4
  %403 = load i64, i64* %14, align 8
  %404 = load i64, i64* %16, align 8
  %405 = call i32 @OS_REG_RMW(%struct.ath_hal* %401, i32 %402, i64 %403, i64 %404)
  %406 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %407 = load i32, i32* @AR_PHY_TX_PWRCTRL10, align 4
  %408 = load i64, i64* %14, align 8
  %409 = load i64, i64* %16, align 8
  %410 = call i32 @OS_REG_RMW(%struct.ath_hal* %406, i32 %407, i64 %408, i64 %409)
  %411 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %412 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL12, align 4
  %413 = load i64, i64* %14, align 8
  %414 = load i64, i64* %16, align 8
  %415 = call i32 @OS_REG_RMW(%struct.ath_hal* %411, i32 %412, i64 %413, i64 %414)
  store i64 32801, i64* %15, align 8
  %416 = load i64, i64* %15, align 8
  %417 = load i64, i64* %13, align 8
  %418 = mul nsw i64 %416, %417
  store i64 %418, i64* %14, align 8
  %419 = load i64, i64* %15, align 8
  %420 = mul nsw i64 %419, 31
  store i64 %420, i64* %16, align 8
  %421 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %422 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %423 = load i64, i64* %14, align 8
  %424 = load i64, i64* %16, align 8
  %425 = call i32 @OS_REG_RMW(%struct.ath_hal* %421, i32 %422, i64 %423, i64 %424)
  store i64 33, i64* %15, align 8
  %426 = load i64, i64* %15, align 8
  %427 = load i64, i64* %13, align 8
  %428 = mul nsw i64 %426, %427
  store i64 %428, i64* %14, align 8
  %429 = load i64, i64* %15, align 8
  %430 = mul nsw i64 %429, 31
  store i64 %430, i64* %16, align 8
  %431 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %432 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL11, align 4
  %433 = load i64, i64* %14, align 8
  %434 = load i64, i64* %16, align 8
  %435 = call i32 @OS_REG_RMW(%struct.ath_hal* %431, i32 %432, i64 %433, i64 %434)
  %436 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %437 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL13, align 4
  %438 = load i64, i64* %14, align 8
  %439 = load i64, i64* %16, align 8
  %440 = call i32 @OS_REG_RMW(%struct.ath_hal* %436, i32 %437, i64 %438, i64 %439)
  br label %441

441:                                              ; preds = %393, %390, %379
  br label %442

442:                                              ; preds = %441, %375
  %443 = load i32, i32* @AH_TRUE, align 4
  ret i32 %443
}

declare dso_local %struct.TYPE_10__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar9285SetBoardGain(%struct.ath_hal*, %struct.TYPE_8__*, %struct.ar5416eeprom_4k*, i64) #1

declare dso_local i32 @ar9285SetAntennaSwitch(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_11__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i64) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_KITE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
