; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_sample_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_sample_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ath_softc = type { i32* }
%struct.sample_node = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"\0A[%s] refcnt %d static_rix (%d %s) ratemask 0x%jx\0A\00", align 1
@NUM_PACKET_SIZE_BINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"[%4u] cur rix %d (%d %s) since switch: packets %d ticks %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"[%4u] last sample (%d %s) cur sample (%d %s) packets sent %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[%4u] packets since sample %d sample tt %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"[%2u %s:%4u] %8ju:%-8ju (%3d%%) (EWMA %3d.%1d%%) T %8ju F %4d avg %5u last %u\0A\00", align 1
@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @sample_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_stats(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sample_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.ath_softc*
  store %struct.ath_softc* %12, %struct.ath_softc** %5, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = call i32 @ATH_NODE(%struct.ieee80211_node* %16)
  %18 = call %struct.sample_node* @ATH_NODE_SAMPLE(i32 %17)
  store %struct.sample_node* %18, %struct.sample_node** %7, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ether_sprintf(i32 %21)
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %24 = call i32 @ieee80211_node_refcnt(%struct.ieee80211_node* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %27 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dot11rate(i32* %25, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %32 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @dot11rate_label(i32* %30, i32 %33)
  %35 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %36 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24, i32 %29, i8* %34, i32 %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %149, %2
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @NUM_PACKET_SIZE_BINS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %152

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @bin_to_size(i32 %44)
  %46 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %47 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %55 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dot11rate(i32* %53, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %64 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @dot11rate_label(i32* %62, i32 %69)
  %71 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %72 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %79 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %52, i32 %61, i8* %70, i32 %77, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @bin_to_size(i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %90 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dot11rate(i32* %88, i32 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %99 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @dot11rate_label(i32* %97, i32 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %108 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dot11rate(i32* %106, i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %117 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @dot11rate_label(i32* %115, i32 %122)
  %124 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %125 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %124, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %96, i8* %105, i32 %114, i8* %123, i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @bin_to_size(i32 %132)
  %134 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %135 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %142 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %141, i32 0, i32 9
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %140, i32 %147)
  br label %149

149:                                              ; preds = %43
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %39

152:                                              ; preds = %39
  %153 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %154 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %328, %152
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %333

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %328

164:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %324, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @NUM_PACKET_SIZE_BINS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %327

169:                                              ; preds = %165
  %170 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %171 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %170, i32 0, i32 10
  %172 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %172, i64 %174
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %324

184:                                              ; preds = %169
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @dot11rate(i32* %185, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i8* @dot11rate_label(i32* %188, i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @bin_to_size(i32 %191)
  %193 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %194 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %193, i32 0, i32 10
  %195 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %195, i64 %197
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %207 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %206, i32 0, i32 10
  %208 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %208, i64 %210
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %220 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %219, i32 0, i32 10
  %221 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %221, i64 %223
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = mul i64 %230, 100
  %232 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %233 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %232, i32 0, i32 10
  %234 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %234, i64 %236
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = udiv i64 %231, %243
  %245 = trunc i64 %244 to i32
  %246 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %247 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %246, i32 0, i32 10
  %248 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %248, i64 %250
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sdiv i32 %257, 10
  %259 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %260 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %259, i32 0, i32 10
  %261 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %261, i64 %263
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = srem i32 %270, 10
  %272 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %273 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %272, i32 0, i32 10
  %274 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %273, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %274, i64 %276
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %286 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %285, i32 0, i32 10
  %287 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %287, i64 %289
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %298 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %297, i32 0, i32 10
  %299 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %299, i64 %301
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load i64, i64* @ticks, align 8
  %310 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %311 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %310, i32 0, i32 10
  %312 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %312, i64 %314
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = sub nsw i64 %309, %321
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %187, i8* %190, i32 %192, i32 %205, i32 %218, i32 %245, i32 %258, i32 %271, i32 %284, i32 %296, i32 %308, i64 %322)
  br label %324

324:                                              ; preds = %184, %183
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  br label %165

327:                                              ; preds = %165
  br label %328

328:                                              ; preds = %327, %163
  %329 = load i32, i32* %8, align 4
  %330 = ashr i32 %329, 1
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %9, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %9, align 4
  br label %156

333:                                              ; preds = %156
  ret void
}

declare dso_local %struct.sample_node* @ATH_NODE_SAMPLE(i32) #1

declare dso_local i32 @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ether_sprintf(i32) #1

declare dso_local i32 @ieee80211_node_refcnt(%struct.ieee80211_node*) #1

declare dso_local i32 @dot11rate(i32*, i32) #1

declare dso_local i8* @dot11rate_label(i32*, i32) #1

declare dso_local i32 @bin_to_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
