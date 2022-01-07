; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal_private = type { i32, %struct.TYPE_6__, i8*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.ieee80211_channel = type { i32 }

@main.tpcScaleReductionTable = internal constant [5 x i32] [i32 0, i32 3, i32 6, i32 9, i32 128], align 16
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i8* null, align 8
@AH_TRUE = common dso_local global i8* null, align 8
@getChannelEdges = common dso_local global i32 0, align 4
@getWirelessModes = common dso_local global i32 0, align 4
@eepromRead = common dso_local global i32 0, align 4
@getChipPowerLimits = common dso_local global i32 0, align 4
@HAL_MODE_ALL = common dso_local global i32 0, align 4
@getCapability = common dso_local global i32 0, align 4
@HAL_M_STA = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"acdeflm:pr4ABGhHNT\00", align 1
@showchannels = common dso_local global i8* null, align 8
@HAL_DEBUG_ANY = common dso_local global i32 0, align 4
@ath_hal_debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sta\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ibss\00", align 1
@HAL_M_IBSS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"adhoc\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@HAL_M_HOSTAP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"hostap\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@HAL_M_MONITOR = common dso_local global i8* null, align 8
@dopassive = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@HAL_MODE_11B = common dso_local global i32 0, align 4
@HAL_MODE_11G = common dso_local global i32 0, align 4
@HAL_MODE_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_HT40 = common dso_local global i32 0, align 4
@HAL_MODE_HT = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@HAL_MODE_108G = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@rd = common dso_local global i32 0, align 4
@cc = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: unknown country code\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: unknown country/regulatory domain code\0A\00", align 1
@CTRY_DEFAULT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"\0A%s (%s, 0x%x, %u) %s (0x%x, %u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\0A%s (0x%x, %u)\0A\00", align 1
@HAL_OK = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DFS = common dso_local global i32 0, align 4
@isdfs = common dso_local global i32 0, align 4
@IEEE80211_CHAN_4MSXMIT = common dso_local global i32 0, align 4
@is4ms = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath_hal_private, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %36 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %7, align 8
  %39 = alloca %struct.ieee80211_channel, i64 %37, align 16
  store i64 %37, i64* %8, align 8
  %40 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %9, align 8
  %43 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca %struct.ieee80211_channel, i64 %44, align 16
  store i64 %44, i64* %10, align 8
  %46 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %11, align 8
  %49 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca %struct.ieee80211_channel, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  %52 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %13, align 8
  %55 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca %struct.ieee80211_channel, i64 %56, align 16
  store i64 %56, i64* %14, align 8
  %58 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %15, align 8
  %61 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca %struct.ieee80211_channel, i64 %62, align 16
  store i64 %62, i64* %16, align 8
  %64 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %65 = zext i32 %64 to i64
  %66 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %17, align 8
  %67 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %68 = zext i32 %67 to i64
  %69 = alloca %struct.ieee80211_channel, i64 %68, align 16
  store i64 %68, i64* %18, align 8
  %70 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %71 = zext i32 %70 to i64
  %72 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %19, align 8
  %73 = load i8*, i8** @AH_FALSE, align 8
  store i8* %73, i8** %27, align 8
  %74 = load i8*, i8** @AH_TRUE, align 8
  store i8* %74, i8** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %75 = call i32 @memset(%struct.ath_hal_private* %6, i32 0, i32 72)
  %76 = load i32, i32* @getChannelEdges, align 4
  %77 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 7
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @getWirelessModes, align 4
  %79 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 6
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @eepromRead, align 4
  %81 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 5
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @getChipPowerLimits, align 4
  %83 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @HAL_MODE_ALL, align 4
  %85 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 4920, i32* %88, align 8
  %89 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 6100, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 2312, i32* %92, align 8
  %93 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i32 2732, i32* %94, align 4
  %95 = load i8*, i8** @AH_TRUE, align 8
  %96 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @AH_TRUE, align 8
  %99 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @getCapability, align 4
  %102 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i8*, i8** @HAL_M_STA, align 8
  %105 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @main.tpcScaleReductionTable, i64 0, i64 0), align 16
  store i32 %106, i32* %30, align 4
  store i32 128, i32* %31, align 4
  br label %107

107:                                              ; preds = %219, %2
  %108 = load i32, i32* %4, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = call i32 @getopt(i32 %108, i8** %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %110, i32* %20, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %220

112:                                              ; preds = %107
  %113 = load i32, i32* %20, align 4
  switch i32 %113, label %214 [
    i32 97, label %114
    i32 99, label %116
    i32 100, label %118
    i32 101, label %120
    i32 102, label %122
    i32 108, label %124
    i32 109, label %128
    i32 112, label %181
    i32 65, label %182
    i32 66, label %186
    i32 71, label %190
    i32 104, label %194
    i32 72, label %198
    i32 78, label %202
    i32 84, label %206
    i32 114, label %212
    i32 52, label %213
  ]

114:                                              ; preds = %112
  %115 = load i8*, i8** @AH_TRUE, align 8
  store i8* %115, i8** %27, align 8
  br label %219

116:                                              ; preds = %112
  %117 = load i8*, i8** @AH_TRUE, align 8
  store i8* %117, i8** @showchannels, align 8
  br label %219

118:                                              ; preds = %112
  %119 = load i32, i32* @HAL_DEBUG_ANY, align 4
  store i32 %119, i32* @ath_hal_debug, align 4
  br label %219

120:                                              ; preds = %112
  %121 = load i8*, i8** @AH_FALSE, align 8
  store i8* %121, i8** %28, align 8
  br label %219

122:                                              ; preds = %112
  %123 = load i8*, i8** @AH_FALSE, align 8
  store i8* %123, i8** @showchannels, align 8
  br label %219

124:                                              ; preds = %112
  %125 = call i32 (...) @cclist()
  %126 = call i32 (...) @rdlist()
  %127 = call i32 @exit(i32 0) #4
  unreachable

128:                                              ; preds = %112
  %129 = load i32, i32* @optarg, align 4
  %130 = call i32 @strncasecmp(i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** @HAL_M_STA, align 8
  %134 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %133, i8** %134, align 8
  br label %180

135:                                              ; preds = %128
  %136 = load i32, i32* @optarg, align 4
  %137 = call i32 @strncasecmp(i32 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** @HAL_M_IBSS, align 8
  %141 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %140, i8** %141, align 8
  br label %179

142:                                              ; preds = %135
  %143 = load i32, i32* @optarg, align 4
  %144 = call i32 @strncasecmp(i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8*, i8** @HAL_M_IBSS, align 8
  %148 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %147, i8** %148, align 8
  br label %178

149:                                              ; preds = %142
  %150 = load i32, i32* @optarg, align 4
  %151 = call i32 @strncasecmp(i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i8*, i8** @HAL_M_HOSTAP, align 8
  %155 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %154, i8** %155, align 8
  br label %177

156:                                              ; preds = %149
  %157 = load i32, i32* @optarg, align 4
  %158 = call i32 @strncasecmp(i32 %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i8*, i8** @HAL_M_HOSTAP, align 8
  %162 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %161, i8** %162, align 8
  br label %176

163:                                              ; preds = %156
  %164 = load i32, i32* @optarg, align 4
  %165 = call i32 @strncasecmp(i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** @HAL_M_MONITOR, align 8
  %169 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  br label %175

170:                                              ; preds = %163
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @usage(i8* %173)
  br label %175

175:                                              ; preds = %170, %167
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %176, %153
  br label %178

178:                                              ; preds = %177, %146
  br label %179

179:                                              ; preds = %178, %139
  br label %180

180:                                              ; preds = %179, %132
  br label %219

181:                                              ; preds = %112
  store i32 1, i32* @dopassive, align 4
  br label %219

182:                                              ; preds = %112
  %183 = load i32, i32* @HAL_MODE_11A, align 4
  %184 = load i32, i32* %29, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %29, align 4
  br label %219

186:                                              ; preds = %112
  %187 = load i32, i32* @HAL_MODE_11B, align 4
  %188 = load i32, i32* %29, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %29, align 4
  br label %219

190:                                              ; preds = %112
  %191 = load i32, i32* @HAL_MODE_11G, align 4
  %192 = load i32, i32* %29, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %29, align 4
  br label %219

194:                                              ; preds = %112
  %195 = load i32, i32* @HAL_MODE_HT20, align 4
  %196 = load i32, i32* %29, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %29, align 4
  br label %219

198:                                              ; preds = %112
  %199 = load i32, i32* @HAL_MODE_HT40, align 4
  %200 = load i32, i32* %29, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %29, align 4
  br label %219

202:                                              ; preds = %112
  %203 = load i32, i32* @HAL_MODE_HT, align 4
  %204 = load i32, i32* %29, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %29, align 4
  br label %219

206:                                              ; preds = %112
  %207 = load i32, i32* @HAL_MODE_TURBO, align 4
  %208 = load i32, i32* @HAL_MODE_108G, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %29, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %29, align 4
  br label %219

212:                                              ; preds = %112
  store i32 1, i32* %32, align 4
  br label %219

213:                                              ; preds = %112
  store i32 1, i32* %33, align 4
  br label %219

214:                                              ; preds = %112
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @usage(i8* %217)
  br label %219

219:                                              ; preds = %214, %213, %212, %206, %202, %198, %194, %190, %186, %182, %181, %180, %122, %120, %118, %116, %114
  br label %107

220:                                              ; preds = %107
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @optind, align 4
  %223 = sub nsw i32 %221, %222
  switch i32 %223, label %271 [
    i32 0, label %224
    i32 1, label %231
  ]

224:                                              ; preds = %220
  %225 = call i32 @cclookup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* @rd, i64* @cc)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %229 = call i32 @exit(i32 -1) #4
  unreachable

230:                                              ; preds = %224
  br label %319

231:                                              ; preds = %220
  %232 = load i8**, i8*** %5, align 8
  %233 = load i32, i32* @optind, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @cclookup(i8* %236, i32* @rd, i64* @cc)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %270, label %239

239:                                              ; preds = %231
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* @optind, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @rdlookup(i8* %244, i32* @rd)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %268, label %247

247:                                              ; preds = %239
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* @optind, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @strtoul(i8* %252, i32* null, i32 0)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* @rd, align 4
  %255 = load i32, i32* @rd, align 4
  %256 = call i8* @getrdname(i32 %255)
  store i8* %256, i8** %34, align 8
  %257 = load i8*, i8** %34, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %247
  %260 = load i8**, i8*** %5, align 8
  %261 = load i32, i32* @optind, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %264)
  %266 = call i32 @exit(i32 -1) #4
  unreachable

267:                                              ; preds = %247
  br label %268

268:                                              ; preds = %267, %239
  %269 = load i64, i64* @CTRY_DEFAULT, align 8
  store i64 %269, i64* @cc, align 8
  br label %270

270:                                              ; preds = %268, %231
  br label %319

271:                                              ; preds = %220
  %272 = load i8**, i8*** %5, align 8
  %273 = load i32, i32* @optind, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @rdlookup(i8* %276, i32* @rd)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %300, label %279

279:                                              ; preds = %271
  %280 = load i8**, i8*** %5, align 8
  %281 = load i32, i32* @optind, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @strtoul(i8* %284, i32* null, i32 0)
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* @rd, align 4
  %287 = load i32, i32* @rd, align 4
  %288 = call i8* @getrdname(i32 %287)
  store i8* %288, i8** %35, align 8
  %289 = load i8*, i8** %35, align 8
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %299

291:                                              ; preds = %279
  %292 = load i8**, i8*** %5, align 8
  %293 = load i32, i32* @optind, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %296)
  %298 = call i32 @exit(i32 -1) #4
  unreachable

299:                                              ; preds = %279
  br label %300

300:                                              ; preds = %299, %271
  %301 = load i8**, i8*** %5, align 8
  %302 = load i32, i32* @optind, align 4
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %301, i64 %304
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @cclookup(i8* %306, i32* @rd, i64* @cc)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %300
  %310 = load i8**, i8*** %5, align 8
  %311 = load i32, i32* @optind, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %310, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = call i8* @strtoul(i8* %315, i32* null, i32 0)
  %317 = ptrtoint i8* %316 to i64
  store i64 %317, i64* @cc, align 8
  br label %318

318:                                              ; preds = %309, %300
  br label %319

319:                                              ; preds = %318, %270, %230
  %320 = load i64, i64* @cc, align 8
  %321 = load i64, i64* @CTRY_DEFAULT, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %335

323:                                              ; preds = %319
  %324 = load i64, i64* @cc, align 8
  %325 = call i8* @getccname(i64 %324)
  %326 = load i64, i64* @cc, align 8
  %327 = call i8* @getccisoname(i64 %326)
  %328 = load i64, i64* @cc, align 8
  %329 = load i64, i64* @cc, align 8
  %330 = load i32, i32* @rd, align 4
  %331 = call i8* @getrdname(i32 %330)
  %332 = load i32, i32* @rd, align 4
  %333 = load i32, i32* @rd, align 4
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %325, i8* %327, i64 %328, i64 %329, i8* %331, i32 %332, i32 %333)
  br label %341

335:                                              ; preds = %319
  %336 = load i32, i32* @rd, align 4
  %337 = call i8* @getrdname(i32 %336)
  %338 = load i32, i32* @rd, align 4
  %339 = load i32, i32* @rd, align 4
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %337, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %335, %323
  %342 = load i32, i32* %29, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %341
  %345 = load i32, i32* @HAL_MODE_11A, align 4
  %346 = load i32, i32* @HAL_MODE_11B, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* @HAL_MODE_11G, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @HAL_MODE_TURBO, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @HAL_MODE_108G, align 4
  %353 = or i32 %351, %352
  store i32 %353, i32* %29, align 4
  br label %354

354:                                              ; preds = %344, %341
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %355 = load i32, i32* %29, align 4
  %356 = load i32, i32* @HAL_MODE_11G, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %396

359:                                              ; preds = %354
  %360 = load i32, i32* @rd, align 4
  %361 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %360, i32* %361, align 8
  %362 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %363 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %364 = load i32, i32* @HAL_MODE_11G, align 4
  %365 = load i64, i64* @cc, align 8
  %366 = load i32, i32* @rd, align 4
  %367 = load i8*, i8** %28, align 8
  %368 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %362, %struct.ieee80211_channel* %51, i32 %363, i32* %23, i32 %364, i64 %365, i32 %366, i8* %367)
  %369 = load i64, i64* @HAL_OK, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %395

371:                                              ; preds = %359
  %372 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %373 = load i32, i32* %23, align 4
  %374 = load i32, i32* %30, align 4
  %375 = load i32, i32* %31, align 4
  %376 = call i32 @calctxpower(%struct.TYPE_6__* %372, i32 %373, %struct.ieee80211_channel* %51, i32 %374, i32 %375, i32* %54)
  %377 = load i32, i32* %32, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %371
  %380 = load i32, i32* %23, align 4
  %381 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %382 = call i32 @anychan(%struct.ieee80211_channel* %51, i32 %380, i32 %381)
  %383 = load i32, i32* @isdfs, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* @isdfs, align 4
  br label %385

385:                                              ; preds = %379, %371
  %386 = load i32, i32* %33, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load i32, i32* %23, align 4
  %390 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %391 = call i32 @anychan(%struct.ieee80211_channel* %51, i32 %389, i32 %390)
  %392 = load i32, i32* @is4ms, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* @is4ms, align 4
  br label %394

394:                                              ; preds = %388, %385
  br label %395

395:                                              ; preds = %394, %359
  br label %396

396:                                              ; preds = %395, %354
  %397 = load i32, i32* %29, align 4
  %398 = load i32, i32* @HAL_MODE_11B, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %438

401:                                              ; preds = %396
  %402 = load i32, i32* @rd, align 4
  %403 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %402, i32* %403, align 8
  %404 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %405 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %406 = load i32, i32* @HAL_MODE_11B, align 4
  %407 = load i64, i64* @cc, align 8
  %408 = load i32, i32* @rd, align 4
  %409 = load i8*, i8** %28, align 8
  %410 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %404, %struct.ieee80211_channel* %45, i32 %405, i32* %22, i32 %406, i64 %407, i32 %408, i8* %409)
  %411 = load i64, i64* @HAL_OK, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %437

413:                                              ; preds = %401
  %414 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %415 = load i32, i32* %22, align 4
  %416 = load i32, i32* %30, align 4
  %417 = load i32, i32* %31, align 4
  %418 = call i32 @calctxpower(%struct.TYPE_6__* %414, i32 %415, %struct.ieee80211_channel* %45, i32 %416, i32 %417, i32* %48)
  %419 = load i32, i32* %32, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %413
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %424 = call i32 @anychan(%struct.ieee80211_channel* %45, i32 %422, i32 %423)
  %425 = load i32, i32* @isdfs, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* @isdfs, align 4
  br label %427

427:                                              ; preds = %421, %413
  %428 = load i32, i32* %33, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %427
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %433 = call i32 @anychan(%struct.ieee80211_channel* %45, i32 %431, i32 %432)
  %434 = load i32, i32* @is4ms, align 4
  %435 = or i32 %434, %433
  store i32 %435, i32* @is4ms, align 4
  br label %436

436:                                              ; preds = %430, %427
  br label %437

437:                                              ; preds = %436, %401
  br label %438

438:                                              ; preds = %437, %396
  %439 = load i32, i32* %29, align 4
  %440 = load i32, i32* @HAL_MODE_11A, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %480

443:                                              ; preds = %438
  %444 = load i32, i32* @rd, align 4
  %445 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %444, i32* %445, align 8
  %446 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %447 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %448 = load i32, i32* @HAL_MODE_11A, align 4
  %449 = load i64, i64* @cc, align 8
  %450 = load i32, i32* @rd, align 4
  %451 = load i8*, i8** %28, align 8
  %452 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %446, %struct.ieee80211_channel* %39, i32 %447, i32* %21, i32 %448, i64 %449, i32 %450, i8* %451)
  %453 = load i64, i64* @HAL_OK, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %479

455:                                              ; preds = %443
  %456 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %457 = load i32, i32* %21, align 4
  %458 = load i32, i32* %30, align 4
  %459 = load i32, i32* %31, align 4
  %460 = call i32 @calctxpower(%struct.TYPE_6__* %456, i32 %457, %struct.ieee80211_channel* %39, i32 %458, i32 %459, i32* %42)
  %461 = load i32, i32* %32, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %455
  %464 = load i32, i32* %21, align 4
  %465 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %466 = call i32 @anychan(%struct.ieee80211_channel* %39, i32 %464, i32 %465)
  %467 = load i32, i32* @isdfs, align 4
  %468 = or i32 %467, %466
  store i32 %468, i32* @isdfs, align 4
  br label %469

469:                                              ; preds = %463, %455
  %470 = load i32, i32* %33, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %469
  %473 = load i32, i32* %21, align 4
  %474 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %475 = call i32 @anychan(%struct.ieee80211_channel* %39, i32 %473, i32 %474)
  %476 = load i32, i32* @is4ms, align 4
  %477 = or i32 %476, %475
  store i32 %477, i32* @is4ms, align 4
  br label %478

478:                                              ; preds = %472, %469
  br label %479

479:                                              ; preds = %478, %443
  br label %480

480:                                              ; preds = %479, %438
  %481 = load i32, i32* %29, align 4
  %482 = load i32, i32* @HAL_MODE_TURBO, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %522

485:                                              ; preds = %480
  %486 = load i32, i32* @rd, align 4
  %487 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %486, i32* %487, align 8
  %488 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %489 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %490 = load i32, i32* @HAL_MODE_TURBO, align 4
  %491 = load i64, i64* @cc, align 8
  %492 = load i32, i32* @rd, align 4
  %493 = load i8*, i8** %28, align 8
  %494 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %488, %struct.ieee80211_channel* %57, i32 %489, i32* %24, i32 %490, i64 %491, i32 %492, i8* %493)
  %495 = load i64, i64* @HAL_OK, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %521

497:                                              ; preds = %485
  %498 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %499 = load i32, i32* %24, align 4
  %500 = load i32, i32* %30, align 4
  %501 = load i32, i32* %31, align 4
  %502 = call i32 @calctxpower(%struct.TYPE_6__* %498, i32 %499, %struct.ieee80211_channel* %57, i32 %500, i32 %501, i32* %60)
  %503 = load i32, i32* %32, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %511

505:                                              ; preds = %497
  %506 = load i32, i32* %24, align 4
  %507 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %508 = call i32 @anychan(%struct.ieee80211_channel* %57, i32 %506, i32 %507)
  %509 = load i32, i32* @isdfs, align 4
  %510 = or i32 %509, %508
  store i32 %510, i32* @isdfs, align 4
  br label %511

511:                                              ; preds = %505, %497
  %512 = load i32, i32* %33, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %511
  %515 = load i32, i32* %24, align 4
  %516 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %517 = call i32 @anychan(%struct.ieee80211_channel* %57, i32 %515, i32 %516)
  %518 = load i32, i32* @is4ms, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* @is4ms, align 4
  br label %520

520:                                              ; preds = %514, %511
  br label %521

521:                                              ; preds = %520, %485
  br label %522

522:                                              ; preds = %521, %480
  %523 = load i32, i32* %29, align 4
  %524 = load i32, i32* @HAL_MODE_108G, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %564

527:                                              ; preds = %522
  %528 = load i32, i32* @rd, align 4
  %529 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %528, i32* %529, align 8
  %530 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %531 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %532 = load i32, i32* @HAL_MODE_108G, align 4
  %533 = load i64, i64* @cc, align 8
  %534 = load i32, i32* @rd, align 4
  %535 = load i8*, i8** %28, align 8
  %536 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %530, %struct.ieee80211_channel* %63, i32 %531, i32* %25, i32 %532, i64 %533, i32 %534, i8* %535)
  %537 = load i64, i64* @HAL_OK, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %563

539:                                              ; preds = %527
  %540 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %541 = load i32, i32* %25, align 4
  %542 = load i32, i32* %30, align 4
  %543 = load i32, i32* %31, align 4
  %544 = call i32 @calctxpower(%struct.TYPE_6__* %540, i32 %541, %struct.ieee80211_channel* %63, i32 %542, i32 %543, i32* %66)
  %545 = load i32, i32* %32, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %553

547:                                              ; preds = %539
  %548 = load i32, i32* %25, align 4
  %549 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %550 = call i32 @anychan(%struct.ieee80211_channel* %63, i32 %548, i32 %549)
  %551 = load i32, i32* @isdfs, align 4
  %552 = or i32 %551, %550
  store i32 %552, i32* @isdfs, align 4
  br label %553

553:                                              ; preds = %547, %539
  %554 = load i32, i32* %33, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %553
  %557 = load i32, i32* %25, align 4
  %558 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %559 = call i32 @anychan(%struct.ieee80211_channel* %63, i32 %557, i32 %558)
  %560 = load i32, i32* @is4ms, align 4
  %561 = or i32 %560, %559
  store i32 %561, i32* @is4ms, align 4
  br label %562

562:                                              ; preds = %556, %553
  br label %563

563:                                              ; preds = %562, %527
  br label %564

564:                                              ; preds = %563, %522
  %565 = load i32, i32* %29, align 4
  %566 = load i32, i32* @HAL_MODE_HT, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %608

569:                                              ; preds = %564
  %570 = load i32, i32* @rd, align 4
  %571 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 0
  store i32 %570, i32* %571, align 8
  %572 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %573 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %574 = load i32, i32* %29, align 4
  %575 = load i32, i32* @HAL_MODE_HT, align 4
  %576 = and i32 %574, %575
  %577 = load i64, i64* @cc, align 8
  %578 = load i32, i32* @rd, align 4
  %579 = load i8*, i8** %28, align 8
  %580 = call i64 @ath_hal_getchannels(%struct.TYPE_6__* %572, %struct.ieee80211_channel* %69, i32 %573, i32* %26, i32 %576, i64 %577, i32 %578, i8* %579)
  %581 = load i64, i64* @HAL_OK, align 8
  %582 = icmp eq i64 %580, %581
  br i1 %582, label %583, label %607

583:                                              ; preds = %569
  %584 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %585 = load i32, i32* %26, align 4
  %586 = load i32, i32* %30, align 4
  %587 = load i32, i32* %31, align 4
  %588 = call i32 @calctxpower(%struct.TYPE_6__* %584, i32 %585, %struct.ieee80211_channel* %69, i32 %586, i32 %587, i32* %72)
  %589 = load i32, i32* %32, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %597

591:                                              ; preds = %583
  %592 = load i32, i32* %26, align 4
  %593 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %594 = call i32 @anychan(%struct.ieee80211_channel* %69, i32 %592, i32 %593)
  %595 = load i32, i32* @isdfs, align 4
  %596 = or i32 %595, %594
  store i32 %596, i32* @isdfs, align 4
  br label %597

597:                                              ; preds = %591, %583
  %598 = load i32, i32* %33, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %606

600:                                              ; preds = %597
  %601 = load i32, i32* %26, align 4
  %602 = load i32, i32* @IEEE80211_CHAN_4MSXMIT, align 4
  %603 = call i32 @anychan(%struct.ieee80211_channel* %69, i32 %601, i32 %602)
  %604 = load i32, i32* @is4ms, align 4
  %605 = or i32 %604, %603
  store i32 %605, i32* @is4ms, align 4
  br label %606

606:                                              ; preds = %600, %597
  br label %607

607:                                              ; preds = %606, %569
  br label %608

608:                                              ; preds = %607, %564
  %609 = load i8*, i8** %27, align 8
  %610 = icmp ne i8* %609, null
  br i1 %610, label %677, label %611

611:                                              ; preds = %608
  %612 = load i32, i32* %29, align 4
  %613 = load i32, i32* @HAL_MODE_11B, align 4
  %614 = load i32, i32* @HAL_MODE_11G, align 4
  %615 = or i32 %613, %614
  %616 = and i32 %612, %615
  %617 = load i32, i32* @HAL_MODE_11B, align 4
  %618 = load i32, i32* @HAL_MODE_11G, align 4
  %619 = or i32 %617, %618
  %620 = icmp eq i32 %616, %619
  br i1 %620, label %621, label %624

621:                                              ; preds = %611
  %622 = load i32, i32* %23, align 4
  %623 = call i32 @intersect(%struct.ieee80211_channel* %45, i32* %48, i32* %22, %struct.ieee80211_channel* %51, i32* %54, i32 %622)
  br label %624

624:                                              ; preds = %621, %611
  %625 = load i32, i32* %29, align 4
  %626 = load i32, i32* @HAL_MODE_11A, align 4
  %627 = load i32, i32* @HAL_MODE_TURBO, align 4
  %628 = or i32 %626, %627
  %629 = and i32 %625, %628
  %630 = load i32, i32* @HAL_MODE_11A, align 4
  %631 = load i32, i32* @HAL_MODE_TURBO, align 4
  %632 = or i32 %630, %631
  %633 = icmp eq i32 %629, %632
  br i1 %633, label %634, label %637

634:                                              ; preds = %624
  %635 = load i32, i32* %21, align 4
  %636 = call i32 @intersect(%struct.ieee80211_channel* %57, i32* %60, i32* %24, %struct.ieee80211_channel* %39, i32* %42, i32 %635)
  br label %637

637:                                              ; preds = %634, %624
  %638 = load i32, i32* %29, align 4
  %639 = load i32, i32* @HAL_MODE_11G, align 4
  %640 = load i32, i32* @HAL_MODE_108G, align 4
  %641 = or i32 %639, %640
  %642 = and i32 %638, %641
  %643 = load i32, i32* @HAL_MODE_11G, align 4
  %644 = load i32, i32* @HAL_MODE_108G, align 4
  %645 = or i32 %643, %644
  %646 = icmp eq i32 %642, %645
  br i1 %646, label %647, label %650

647:                                              ; preds = %637
  %648 = load i32, i32* %23, align 4
  %649 = call i32 @intersect(%struct.ieee80211_channel* %63, i32* %66, i32* %25, %struct.ieee80211_channel* %51, i32* %54, i32 %648)
  br label %650

650:                                              ; preds = %647, %637
  %651 = load i32, i32* %29, align 4
  %652 = load i32, i32* @HAL_MODE_11G, align 4
  %653 = load i32, i32* @HAL_MODE_HT, align 4
  %654 = or i32 %652, %653
  %655 = and i32 %651, %654
  %656 = load i32, i32* @HAL_MODE_11G, align 4
  %657 = load i32, i32* @HAL_MODE_HT, align 4
  %658 = or i32 %656, %657
  %659 = icmp eq i32 %655, %658
  br i1 %659, label %660, label %663

660:                                              ; preds = %650
  %661 = load i32, i32* %26, align 4
  %662 = call i32 @intersect(%struct.ieee80211_channel* %51, i32* %54, i32* %23, %struct.ieee80211_channel* %69, i32* %72, i32 %661)
  br label %663

663:                                              ; preds = %660, %650
  %664 = load i32, i32* %29, align 4
  %665 = load i32, i32* @HAL_MODE_11A, align 4
  %666 = load i32, i32* @HAL_MODE_HT, align 4
  %667 = or i32 %665, %666
  %668 = and i32 %664, %667
  %669 = load i32, i32* @HAL_MODE_11A, align 4
  %670 = load i32, i32* @HAL_MODE_HT, align 4
  %671 = or i32 %669, %670
  %672 = icmp eq i32 %668, %671
  br i1 %672, label %673, label %676

673:                                              ; preds = %663
  %674 = load i32, i32* %26, align 4
  %675 = call i32 @intersect(%struct.ieee80211_channel* %39, i32* %42, i32* %21, %struct.ieee80211_channel* %69, i32* %72, i32 %674)
  br label %676

676:                                              ; preds = %673, %663
  br label %677

677:                                              ; preds = %676, %608
  %678 = load i32, i32* %29, align 4
  %679 = load i32, i32* @HAL_MODE_11G, align 4
  %680 = and i32 %678, %679
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %686

682:                                              ; preds = %677
  %683 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %684 = load i32, i32* %23, align 4
  %685 = call i32 @dumpchannels(%struct.TYPE_6__* %683, i32 %684, %struct.ieee80211_channel* %51, i32* %54)
  br label %686

686:                                              ; preds = %682, %677
  %687 = load i32, i32* %29, align 4
  %688 = load i32, i32* @HAL_MODE_11B, align 4
  %689 = and i32 %687, %688
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %695

691:                                              ; preds = %686
  %692 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %693 = load i32, i32* %22, align 4
  %694 = call i32 @dumpchannels(%struct.TYPE_6__* %692, i32 %693, %struct.ieee80211_channel* %45, i32* %48)
  br label %695

695:                                              ; preds = %691, %686
  %696 = load i32, i32* %29, align 4
  %697 = load i32, i32* @HAL_MODE_11A, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %704

700:                                              ; preds = %695
  %701 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %702 = load i32, i32* %21, align 4
  %703 = call i32 @dumpchannels(%struct.TYPE_6__* %701, i32 %702, %struct.ieee80211_channel* %39, i32* %42)
  br label %704

704:                                              ; preds = %700, %695
  %705 = load i32, i32* %29, align 4
  %706 = load i32, i32* @HAL_MODE_108G, align 4
  %707 = and i32 %705, %706
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %713

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %711 = load i32, i32* %25, align 4
  %712 = call i32 @dumpchannels(%struct.TYPE_6__* %710, i32 %711, %struct.ieee80211_channel* %63, i32* %66)
  br label %713

713:                                              ; preds = %709, %704
  %714 = load i32, i32* %29, align 4
  %715 = load i32, i32* @HAL_MODE_TURBO, align 4
  %716 = and i32 %714, %715
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %722

718:                                              ; preds = %713
  %719 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %720 = load i32, i32* %24, align 4
  %721 = call i32 @dumpchannels(%struct.TYPE_6__* %719, i32 %720, %struct.ieee80211_channel* %57, i32* %60)
  br label %722

722:                                              ; preds = %718, %713
  %723 = load i32, i32* %29, align 4
  %724 = load i32, i32* @HAL_MODE_HT, align 4
  %725 = and i32 %723, %724
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %731

727:                                              ; preds = %722
  %728 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %6, i32 0, i32 1
  %729 = load i32, i32* %26, align 4
  %730 = call i32 @dumpchannels(%struct.TYPE_6__* %728, i32 %729, %struct.ieee80211_channel* %69, i32* %72)
  br label %731

731:                                              ; preds = %727, %722
  %732 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %733 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %733)
  %734 = load i32, i32* %3, align 4
  ret i32 %734
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ath_hal_private*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @cclist(...) #2

declare dso_local i32 @rdlist(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strncasecmp(i32, i8*, i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @cclookup(i8*, i32*, i64*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rdlookup(i8*, i32*) #2

declare dso_local i8* @strtoul(i8*, i32*, i32) #2

declare dso_local i8* @getrdname(i32) #2

declare dso_local i8* @getccname(i64) #2

declare dso_local i8* @getccisoname(i64) #2

declare dso_local i64 @ath_hal_getchannels(%struct.TYPE_6__*, %struct.ieee80211_channel*, i32, i32*, i32, i64, i32, i8*) #2

declare dso_local i32 @calctxpower(%struct.TYPE_6__*, i32, %struct.ieee80211_channel*, i32, i32, i32*) #2

declare dso_local i32 @anychan(%struct.ieee80211_channel*, i32, i32) #2

declare dso_local i32 @intersect(%struct.ieee80211_channel*, i32*, i32*, %struct.ieee80211_channel*, i32*, i32) #2

declare dso_local i32 @dumpchannels(%struct.TYPE_6__*, i32, %struct.ieee80211_channel*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
