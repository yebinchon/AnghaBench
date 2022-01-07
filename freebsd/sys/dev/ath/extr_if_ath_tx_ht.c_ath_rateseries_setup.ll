; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_ht.c_ath_rateseries_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx_ht.c_ath_rateseries_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_10__*, %struct.ath_hal* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ath_buf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.ath_rc_series* }
%struct.ath_rc_series = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32 }

@AH_FALSE = common dso_local global i64 0, align 8
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@ATH_RC_NUM = common dso_local global i32 0, align 4
@ATH_RC_RTSCTS_FLAG = common dso_local global i32 0, align 4
@HAL_RATESERIES_RTS_CTS = common dso_local global i32 0, align 4
@ATH_RC_HT_FLAG = common dso_local global i32 0, align 4
@ATH_RC_CW40_FLAG = common dso_local global i32 0, align 4
@HAL_RATESERIES_2040 = common dso_local global i32 0, align 4
@ATH_RC_SGI_FLAG = common dso_local global i32 0, align 4
@HAL_RATESERIES_HALFGI = common dso_local global i32 0, align 4
@ATH_RC_STBC_FLAG = common dso_local global i32 0, align 4
@HAL_RATESERIES_STBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_node*, %struct.ath_buf*, %struct.TYPE_11__*)* @ath_rateseries_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rateseries_setup(%struct.ath_softc* %0, %struct.ieee80211_node* %1, %struct.ath_buf* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ath_hal*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ath_rc_series*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %6, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 1
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %9, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %20, align 8
  store %struct.ath_hal* %21, %struct.ath_hal** %10, align 8
  %22 = load i64, i64* @AH_FALSE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %12, align 8
  %26 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %27 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load %struct.ath_rc_series*, %struct.ath_rc_series** %28, align 8
  store %struct.ath_rc_series* %29, %struct.ath_rc_series** %15, align 8
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IEEE80211_CAPINFO_SHORT_PREAMBLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @AH_TRUE, align 8
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %43, %36, %4
  %46 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %47 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %53 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %58 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = call i32 @memset(%struct.TYPE_11__* %62, i32 0, i32 160)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %311, %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @ATH_RC_NUM, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %314

68:                                               ; preds = %64
  %69 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %69, i64 %71
  %73 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %311

77:                                               ; preds = %68
  %78 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %78, i64 %80
  %82 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i64 %83, i64* %88, align 8
  %89 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 6
  store i32 %91, i32* %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %100, i64 %102
  %104 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  store i32 %108, i32* %113, align 8
  %114 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %114, i64 %116
  %118 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i64 %119, i64* %124, align 8
  %125 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %125, i64 %127
  %129 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  store i32 %130, i32* %135, align 4
  %136 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %136, i64 %138
  %140 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ATH_RC_RTSCTS_FLAG, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %77
  %146 = load i32, i32* @HAL_RATESERIES_RTS_CTS, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %146
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %145, %77
  %155 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %155, i64 %157
  %159 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ATH_RC_HT_FLAG, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %154
  %165 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %165, i64 %167
  %169 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ATH_RC_CW40_FLAG, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %164
  %175 = load i32, i32* @HAL_RATESERIES_2040, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %175
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %174, %164
  %184 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %184, i64 %186
  %188 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ATH_RC_SGI_FLAG, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %183
  %194 = load i32, i32* @HAL_RATESERIES_HALFGI, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %194
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %193, %183
  %203 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %203, i64 %205
  %207 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ATH_RC_STBC_FLAG, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %202
  %213 = load i32, i32* @HAL_RATESERIES_STBC, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %213
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %212, %202
  br label %222

222:                                              ; preds = %221, %154
  %223 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %223, i64 %225
  %227 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ATH_RC_HT_FLAG, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %222
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @HT_RC_2_STREAMS(i32 %245)
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @HAL_RATESERIES_2040, align 4
  %254 = and i32 %252, %253
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @HAL_RATESERIES_HALFGI, align 4
  %262 = and i32 %260, %261
  %263 = call i32 @ath_computedur_ht(i32 %233, i32 %239, i32 %246, i32 %254, i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  store i32 %263, i32* %268, align 4
  br label %310

269:                                              ; preds = %222
  %270 = load i64, i64* %11, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %292

272:                                              ; preds = %269
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %276, i64 %278
  %280 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %284
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %272, %269
  %293 = load %struct.ath_hal*, %struct.ath_hal** %10, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %295 = load i32, i32* %14, align 4
  %296 = load %struct.ath_rc_series*, %struct.ath_rc_series** %15, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %296, i64 %298
  %300 = getelementptr inbounds %struct.ath_rc_series, %struct.ath_rc_series* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %11, align 8
  %303 = load i64, i64* @AH_TRUE, align 8
  %304 = call i32 @ath_hal_computetxtime(%struct.ath_hal* %293, %struct.TYPE_10__* %294, i32 %295, i64 %301, i64 %302, i64 %303)
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 3
  store i32 %304, i32* %309, align 4
  br label %310

310:                                              ; preds = %292, %232
  br label %311

311:                                              ; preds = %310, %76
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %64

314:                                              ; preds = %64
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ath_computedur_ht(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HT_RC_2_STREAMS(i32) #1

declare dso_local i32 @ath_hal_computetxtime(%struct.ath_hal*, %struct.TYPE_10__*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
