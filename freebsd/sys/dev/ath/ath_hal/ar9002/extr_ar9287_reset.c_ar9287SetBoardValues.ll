; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_reset.c_ar9287SetBoardValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_reset.c_ar9287SetBoardValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.modal_eep_ar9287_header }
%struct.modal_eep_ar9287_header = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@AR9287_ANT_16S = common dso_local global i32 0, align 4
@AR9287_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i64 0, align 8
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i64 0, align 8
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i64 0, align 8
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i64 0, align 8
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i64 0, align 8
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH0 = common dso_local global i64 0, align 8
@AR9287_AN_RF2G3_DB1 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_DB2 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_CCK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PSK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_QAM = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PAL_OFF = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH1 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i64 0, align 8
@AR_PHY_TX_FRAME_TO_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_FRAME_TO_PA_ON = common dso_local global i32 0, align 4
@AR9287_AN_TOP2 = common dso_local global i32 0, align 4
@AR9287_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9287SetBoardValues(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ar9287_eeprom*, align 8
  %7 = alloca %struct.modal_eep_ar9287_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.ar9287_eeprom* %21, %struct.ar9287_eeprom** %6, align 8
  %22 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %23 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %22, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %23, %struct.modal_eep_ar9287_header** %7, align 8
  %24 = load i32, i32* @AR9287_ANT_16S, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %28, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %29, %struct.modal_eep_ar9287_header** %7, align 8
  %30 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %31 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 28
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %38 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %45 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 20
  %48 = and i32 %47, 15
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %27, i64 2
  store i64 %49, i64* %50, align 16
  %51 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %52 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %27, i64 3
  store i64 %56, i64* %57, align 8
  %58 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %59 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 12
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %27, i64 4
  store i64 %63, i64* %64, align 16
  %65 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %66 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 15
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %27, i64 5
  store i64 %70, i64* %71, align 8
  %72 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %73 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 15
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %27, i64 6
  store i64 %77, i64* %78, align 16
  %79 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %80 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %27, i64 7
  store i64 %83, i64* %84, align 8
  store i32 8, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %192, %2
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @AR9287_MAX_CHAINS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %195

90:                                               ; preds = %86
  %91 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %92 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 28
  %99 = and i32 %98, 15
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %27, i64 %103
  store i64 %100, i64* %104, align 8
  %105 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %106 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 10
  %113 = and i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i64, i64* %27, i64 %117
  store i64 %114, i64* %118, align 8
  %119 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %120 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 8
  %127 = and i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i64, i64* %27, i64 %131
  store i64 %128, i64* %132, align 8
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i64, i64* %27, i64 %135
  store i64 0, i64* %136, align 8
  %137 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %138 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 6
  %145 = and i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i64, i64* %27, i64 %149
  store i64 %146, i64* %150, align 8
  %151 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %152 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 4
  %159 = and i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i64, i64* %27, i64 %163
  store i64 %160, i64* %164, align 8
  %165 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %166 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 2
  %173 = and i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i64, i64* %27, i64 %177
  store i64 %174, i64* %178, align 8
  %179 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %180 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 3
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i64, i64* %27, i64 %190
  store i64 %187, i64* %191, align 8
  br label %192

192:                                              ; preds = %90
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %86

195:                                              ; preds = %86
  %196 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %197 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %198 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %199 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @OS_REG_WRITE(%struct.ath_hal* %196, i64 %197, i32 %200)
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %316, %195
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @AR9287_MAX_CHAINS, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %319

206:                                              ; preds = %202
  %207 = load i32, i32* %13, align 4
  %208 = mul nsw i32 %207, 4096
  store i32 %208, i32* %10, align 4
  %209 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %210 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %215 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @OS_REG_WRITE(%struct.ath_hal* %209, i64 %213, i32 %220)
  %222 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %223 = call i64 @AR_PHY_TIMING_CTRL4_CHAIN(i32 0)
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %228 = call i64 @AR_PHY_TIMING_CTRL4_CHAIN(i32 0)
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %228, %230
  %232 = call i32 @OS_REG_READ(%struct.ath_hal* %227, i64 %231)
  %233 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %234 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %235 = or i32 %233, %234
  %236 = xor i32 %235, -1
  %237 = and i32 %232, %236
  %238 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %239 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %238, i32 0, i32 23
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %246 = call i32 @SM(i32 %244, i32 %245)
  %247 = or i32 %237, %246
  %248 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %249 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %248, i32 0, i32 22
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %256 = call i32 @SM(i32 %254, i32 %255)
  %257 = or i32 %247, %256
  %258 = call i32 @OS_REG_WRITE(%struct.ath_hal* %222, i64 %226, i32 %257)
  %259 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %260 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %259, i32 0, i32 21
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %12, align 4
  %266 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %267 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %272 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %273 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %272, i32 0, i32 20
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %266, i64 %270, i32 %271, i32 %278)
  %280 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %281 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %281, %283
  %285 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %286 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %287 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %286, i32 0, i32 19
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %280, i64 %284, i32 %285, i32 %292)
  %294 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %295 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %294, i64 %298, i32 %299, i32 %300)
  %302 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %303 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %303, %305
  %307 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %308 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %309 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %308, i32 0, i32 18
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %302, i64 %306, i32 %307, i32 %314)
  br label %316

316:                                              ; preds = %206
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %13, align 4
  br label %202

319:                                              ; preds = %202
  %320 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %321 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %319
  %324 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %325 = load i64, i64* @AR_PHY_SETTLING, align 8
  %326 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %327 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %328 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %327, i32 0, i32 17
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %324, i64 %325, i32 %326, i32 %329)
  br label %339

331:                                              ; preds = %319
  %332 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %333 = load i64, i64* @AR_PHY_SETTLING, align 8
  %334 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %335 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %336 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %335, i32 0, i32 16
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %332, i64 %333, i32 %334, i32 %337)
  br label %339

339:                                              ; preds = %331, %323
  %340 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %341 = load i64, i64* @AR_PHY_DESIRED_SZ, align 8
  %342 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %343 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %344 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %343, i32 0, i32 15
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %340, i64 %341, i32 %342, i32 %345)
  %347 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %348 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %349 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %350 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %349, i32 0, i32 14
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %353 = call i32 @SM(i32 %351, i32 %352)
  %354 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %355 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %358 = call i32 @SM(i32 %356, i32 %357)
  %359 = or i32 %353, %358
  %360 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %361 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %360, i32 0, i32 13
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %364 = call i32 @SM(i32 %362, i32 %363)
  %365 = or i32 %359, %364
  %366 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %367 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %366, i32 0, i32 13
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %370 = call i32 @SM(i32 %368, i32 %369)
  %371 = or i32 %365, %370
  %372 = call i32 @OS_REG_WRITE(%struct.ath_hal* %347, i64 %348, i32 %371)
  %373 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %374 = load i64, i64* @AR_PHY_RF_CTL3, align 8
  %375 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %376 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %377 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %376, i32 0, i32 12
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %373, i64 %374, i32 %375, i32 %378)
  %380 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %381 = load i64, i64* @AR_PHY_CCA, align 8
  %382 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %383 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %384 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %383, i32 0, i32 11
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %380, i64 %381, i32 %382, i32 %385)
  %387 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %388 = load i64, i64* @AR_PHY_EXT_CCA0, align 8
  %389 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %390 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %391 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %390, i32 0, i32 11
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %387, i64 %388, i32 %389, i32 %392)
  %394 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %395 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %396 = call i32 @OS_REG_READ(%struct.ath_hal* %394, i64 %395)
  store i32 %396, i32* %11, align 4
  %397 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %398 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %407 = or i32 %405, %406
  %408 = xor i32 %407, -1
  %409 = load i32, i32* %11, align 4
  %410 = and i32 %409, %408
  store i32 %410, i32* %11, align 4
  %411 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %412 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %411, i32 0, i32 10
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %415 = call i32 @SM(i32 %413, i32 %414)
  %416 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %417 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %416, i32 0, i32 9
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %420 = call i32 @SM(i32 %418, i32 %419)
  %421 = or i32 %415, %420
  %422 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %423 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %426 = call i32 @SM(i32 %424, i32 %425)
  %427 = or i32 %421, %426
  %428 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %429 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %428, i32 0, i32 7
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %432 = call i32 @SM(i32 %430, i32 %431)
  %433 = or i32 %427, %432
  %434 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %435 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %438 = call i32 @SM(i32 %436, i32 %437)
  %439 = or i32 %433, %438
  %440 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %441 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %444 = call i32 @SM(i32 %442, i32 %443)
  %445 = or i32 %439, %444
  %446 = load i32, i32* %11, align 4
  %447 = or i32 %446, %445
  store i32 %447, i32* %11, align 4
  %448 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %449 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %450 = load i32, i32* %11, align 4
  %451 = call i32 @OS_A_REG_WRITE(%struct.ath_hal* %448, i64 %449, i32 %450)
  %452 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %453 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %454 = call i32 @OS_REG_READ(%struct.ath_hal* %452, i64 %453)
  store i32 %454, i32* %11, align 4
  %455 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %456 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %457 = or i32 %455, %456
  %458 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %461 = or i32 %459, %460
  %462 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %465 = or i32 %463, %464
  %466 = xor i32 %465, -1
  %467 = load i32, i32* %11, align 4
  %468 = and i32 %467, %466
  store i32 %468, i32* %11, align 4
  %469 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %470 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %469, i32 0, i32 10
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %473 = call i32 @SM(i32 %471, i32 %472)
  %474 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %475 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %474, i32 0, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %478 = call i32 @SM(i32 %476, i32 %477)
  %479 = or i32 %473, %478
  %480 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %481 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %480, i32 0, i32 8
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %484 = call i32 @SM(i32 %482, i32 %483)
  %485 = or i32 %479, %484
  %486 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %487 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %490 = call i32 @SM(i32 %488, i32 %489)
  %491 = or i32 %485, %490
  %492 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %493 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %492, i32 0, i32 6
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %496 = call i32 @SM(i32 %494, i32 %495)
  %497 = or i32 %491, %496
  %498 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %499 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %498, i32 0, i32 5
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %502 = call i32 @SM(i32 %500, i32 %501)
  %503 = or i32 %497, %502
  %504 = load i32, i32* %11, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %11, align 4
  %506 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %507 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %508 = load i32, i32* %11, align 4
  %509 = call i32 @OS_A_REG_WRITE(%struct.ath_hal* %506, i64 %507, i32 %508)
  %510 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %511 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %512 = load i32, i32* @AR_PHY_TX_FRAME_TO_DATA_START, align 4
  %513 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %514 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %510, i64 %511, i32 %512, i32 %515)
  %517 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %518 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %519 = load i32, i32* @AR_PHY_TX_FRAME_TO_PA_ON, align 4
  %520 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %521 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %517, i64 %518, i32 %519, i32 %522)
  %524 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %525 = load i32, i32* @AR9287_AN_TOP2, align 4
  %526 = load i32, i32* @AR9287_AN_TOP2_XPABIAS_LVL, align 4
  %527 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %528 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %524, i32 %525, i32 %526, i32 %529)
  %531 = load i32, i32* @AH_TRUE, align 4
  %532 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %532)
  ret i32 %531
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i64, i32) #1

declare dso_local i64 @AR_PHY_TIMING_CTRL4_CHAIN(i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i64, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_A_REG_WRITE(%struct.ath_hal*, i64, i32) #1

declare dso_local i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
