; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212ChipReset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212ChipReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }

@AH_MARK_CHIPRESET = common dso_local global i32 0, align 4
@AR_RC_MAC = common dso_local global i32 0, align 4
@AR_RC_BB = common dso_local global i32 0, align 4
@AR_RC_PCI = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_PHY_MODE_AR5112 = common dso_local global i32 0, align 4
@AR_PHY_MODE_HALF = common dso_local global i32 0, align 4
@AR_PHY_MODE_QUARTER = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_44_5112 = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_40_5413 = common dso_local global i32 0, align 4
@AR_PHY_MODE_AR5111 = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_44 = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_40 = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_HALF = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_QUARTER = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL_40_5112 = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_CCK = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF5GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF2GHZ = common dso_local global i32 0, align 4
@AR_PHY_FC_TURBO_MODE = common dso_local global i32 0, align 4
@AR_PHY_FC_TURBO_SHORT = common dso_local global i32 0, align 4
@AR_PHY_PLL_CTL = common dso_local global i32 0, align 4
@AR_PHY_TURBO = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@PLL_SETTLE_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212ChipReset(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = load i32, i32* @AH_MARK_CHIPRESET, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = icmp ne %struct.ieee80211_channel* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  %21 = call i32 @OS_MARK(%struct.ath_hal* %10, i32 %11, i32 %20)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i32, i32* @AR_RC_MAC, align 4
  %24 = load i32, i32* @AR_RC_BB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AR_RC_PCI, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ar5212SetResetReg(%struct.ath_hal* %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @AH_FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %229

32:                                               ; preds = %19
  %33 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %34 = load i32, i32* @HAL_PM_AWAKE, align 4
  %35 = load i32, i32* @AH_TRUE, align 4
  %36 = call i32 @ar5212SetPowerMode(%struct.ath_hal* %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @AH_FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %229

40:                                               ; preds = %32
  %41 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %42 = call i32 @ar5212SetResetReg(%struct.ath_hal* %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @AH_FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %229

46:                                               ; preds = %40
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %49 = icmp ne %struct.ieee80211_channel* %47, %48
  br i1 %49, label %50, label %227

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  %51 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %52 = call i64 @IS_5413(%struct.ath_hal* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i32, i32* @AR_PHY_MODE_AR5112, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %57 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @AR_PHY_MODE_HALF, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %65 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @AR_PHY_MODE_QUARTER, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %74 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @AR_PHY_PLL_CTL_44_5112, align 4
  store i32 %77, i32* %7, align 4
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @AR_PHY_PLL_CTL_40_5413, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %136

81:                                               ; preds = %50
  %82 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %83 = call i64 @IS_RAD5111(%struct.ath_hal* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32, i32* @AR_PHY_MODE_AR5111, align 4
  store i32 %86, i32* %6, align 4
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %88 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @AR_PHY_PLL_CTL_44, align 4
  store i32 %91, i32* %7, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @AR_PHY_PLL_CTL_40, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %96 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @AR_PHY_PLL_CTL_HALF, align 4
  store i32 %99, i32* %7, align 4
  br label %107

100:                                              ; preds = %94
  %101 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %102 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @AR_PHY_PLL_CTL_QUARTER, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %100
  br label %107

107:                                              ; preds = %106, %98
  br label %135

108:                                              ; preds = %81
  %109 = load i32, i32* @AR_PHY_MODE_AR5112, align 4
  store i32 %109, i32* %6, align 4
  %110 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %111 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @AR_PHY_PLL_CTL_44_5112, align 4
  store i32 %114, i32* %7, align 4
  br label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @AR_PHY_PLL_CTL_40_5112, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %119 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @AR_PHY_PLL_CTL_HALF, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %134

125:                                              ; preds = %117
  %126 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %127 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @AR_PHY_PLL_CTL_QUARTER, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %107
  br label %136

136:                                              ; preds = %135, %80
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %138 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %157

144:                                              ; preds = %136
  %145 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %146 = call i64 @IEEE80211_IS_CHAN_OFDM(%struct.ieee80211_channel* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %156

152:                                              ; preds = %144
  %153 = load i32, i32* @AR_PHY_MODE_CCK, align 4
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %140
  %158 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %159 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* @AR_PHY_MODE_RF5GHZ, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @AR_PHY_MODE_RF2GHZ, align 4
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %171 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* @AR_PHY_FC_TURBO_MODE, align 4
  %175 = load i32, i32* @AR_PHY_FC_TURBO_SHORT, align 4
  %176 = or i32 %174, %175
  br label %178

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32 [ %176, %173 ], [ 0, %177 ]
  store i32 %179, i32* %9, align 4
  %180 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %181 = load i32, i32* @AR_PHY_PLL_CTL, align 4
  %182 = call i32 @OS_REG_READ(%struct.ath_hal* %180, i32 %181)
  store i32 %182, i32* %8, align 4
  %183 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %184 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %178
  %187 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %188 = load i32, i32* @AR_PHY_TURBO, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @OS_REG_WRITE(%struct.ath_hal* %187, i32 %188, i32 %189)
  %191 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %192 = load i32, i32* @AR_PHY_MODE, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @OS_REG_WRITE(%struct.ath_hal* %191, i32 %192, i32 %193)
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %186
  %199 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %200 = load i32, i32* @AR_PHY_PLL_CTL, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @OS_REG_WRITE(%struct.ath_hal* %199, i32 %200, i32 %201)
  %203 = load i32, i32* @PLL_SETTLE_DELAY, align 4
  %204 = call i32 @OS_DELAY(i32 %203)
  br label %205

205:                                              ; preds = %198, %186
  br label %226

206:                                              ; preds = %178
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %212 = load i32, i32* @AR_PHY_PLL_CTL, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @OS_REG_WRITE(%struct.ath_hal* %211, i32 %212, i32 %213)
  %215 = load i32, i32* @PLL_SETTLE_DELAY, align 4
  %216 = call i32 @OS_DELAY(i32 %215)
  br label %217

217:                                              ; preds = %210, %206
  %218 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %219 = load i32, i32* @AR_PHY_TURBO, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @OS_REG_WRITE(%struct.ath_hal* %218, i32 %219, i32 %220)
  %222 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %223 = load i32, i32* @AR_PHY_MODE, align 4
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @OS_REG_WRITE(%struct.ath_hal* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %217, %205
  br label %227

227:                                              ; preds = %226, %46
  %228 = load i32, i32* @AH_TRUE, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %44, %38, %30
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5212SetResetReg(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar5212SetPowerMode(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

declare dso_local i64 @IS_RAD5111(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_OFDM(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
