; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_get_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_get_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.run_softc = type { i32*, i32, i32* }

@RT2860_EEPROM_PWR2GHZ_BASE1 = common dso_local global i64 0, align 8
@RT2860_EEPROM_PWR2GHZ_BASE2 = common dso_local global i64 0, align 8
@RUN_DEBUG_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chan %d: power1=%d, power2=%d\0A\00", align 1
@rt2860_rf2850 = common dso_local global %struct.TYPE_2__* null, align 8
@RT2860_EEPROM_PWR5GHZ_BASE1 = common dso_local global i64 0, align 8
@RT2860_EEPROM_PWR5GHZ_BASE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_get_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_get_txpower(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %77, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 14
  br i1 %7, label %8, label %80

8:                                                ; preds = %5
  %9 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %10 = load i64, i64* @RT2860_EEPROM_PWR2GHZ_BASE1, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i32 @run_srom_read(%struct.run_softc* %9, i64 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %32, i32* %39, align 4
  %40 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 21392
  br i1 %43, label %44, label %76

44:                                               ; preds = %8
  %45 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %46 = load i64, i64* @RT2860_EEPROM_PWR2GHZ_BASE2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @run_srom_read(%struct.run_softc* %45, i64 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %58 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %70 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %44, %8
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %4, align 4
  br label %5

80:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %228, %80
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 14
  br i1 %83, label %84, label %231

84:                                               ; preds = %81
  %85 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %86 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 21392
  br i1 %88, label %89, label %115

89:                                               ; preds = %84
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %89
  %99 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %100 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 39
  br i1 %106, label %107, label %114

107:                                              ; preds = %98, %89
  %108 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %109 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 5, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %98
  br label %141

115:                                              ; preds = %84
  %116 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %117 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %115
  %125 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %126 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 31
  br i1 %132, label %133, label %140

133:                                              ; preds = %124, %115
  %134 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %135 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 5, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %124
  br label %141

141:                                              ; preds = %140, %114
  %142 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %143 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 21392
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %148 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %146
  %156 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %157 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 39
  br i1 %163, label %164, label %171

164:                                              ; preds = %155, %146
  %165 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %166 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 5, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %155
  br label %204

172:                                              ; preds = %141
  %173 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %174 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 21392
  br i1 %176, label %177, label %203

177:                                              ; preds = %172
  %178 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %179 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %177
  %187 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %188 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 31
  br i1 %194, label %195, label %202

195:                                              ; preds = %186, %177
  %196 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %197 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 5, i32* %201, align 4
  br label %202

202:                                              ; preds = %195, %186
  br label %203

203:                                              ; preds = %202, %172
  br label %204

204:                                              ; preds = %203, %171
  %205 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %206 = load i32, i32* @RUN_DEBUG_TXPWR, align 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rf2850, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %214 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %221 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @RUN_DPRINTF(%struct.run_softc* %205, i32 %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %212, i32 %219, i32 %226)
  br label %228

228:                                              ; preds = %204
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %81

231:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %298, %231
  %233 = load i32, i32* %4, align 4
  %234 = icmp slt i32 %233, 40
  br i1 %234, label %235, label %301

235:                                              ; preds = %232
  %236 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %237 = load i64, i64* @RT2860_EEPROM_PWR5GHZ_BASE1, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sdiv i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %237, %240
  %242 = call i32 @run_srom_read(%struct.run_softc* %236, i64 %241, i32* %3)
  %243 = load i32, i32* %3, align 4
  %244 = and i32 %243, 255
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %249 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 14
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %247, i32* %254, align 4
  %255 = load i32, i32* %3, align 4
  %256 = ashr i32 %255, 8
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %261 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 15
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 %259, i32* %266, align 4
  %267 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %268 = load i64, i64* @RT2860_EEPROM_PWR5GHZ_BASE2, align 8
  %269 = load i32, i32* %4, align 4
  %270 = sdiv i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %268, %271
  %273 = call i32 @run_srom_read(%struct.run_softc* %267, i64 %272, i32* %3)
  %274 = load i32, i32* %3, align 4
  %275 = and i32 %274, 255
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %280 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, 14
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %278, i32* %285, align 4
  %286 = load i32, i32* %3, align 4
  %287 = ashr i32 %286, 8
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %292 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 15
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  store i32 %290, i32* %297, align 4
  br label %298

298:                                              ; preds = %235
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 2
  store i32 %300, i32* %4, align 4
  br label %232

301:                                              ; preds = %232
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %394, %301
  %303 = load i32, i32* %4, align 4
  %304 = icmp slt i32 %303, 40
  br i1 %304, label %305, label %397

305:                                              ; preds = %302
  %306 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %307 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 21906
  br i1 %309, label %310, label %367

310:                                              ; preds = %305
  %311 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %312 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = add nsw i32 14, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %318, -7
  br i1 %319, label %330, label %320

320:                                              ; preds = %310
  %321 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %322 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %4, align 4
  %325 = add nsw i32 14, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp sgt i32 %328, 15
  br i1 %329, label %330, label %338

330:                                              ; preds = %320, %310
  %331 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %332 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %4, align 4
  %335 = add nsw i32 14, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 5, i32* %337, align 4
  br label %338

338:                                              ; preds = %330, %320
  %339 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %340 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %4, align 4
  %343 = add nsw i32 14, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp slt i32 %346, -7
  br i1 %347, label %358, label %348

348:                                              ; preds = %338
  %349 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %350 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %4, align 4
  %353 = add nsw i32 14, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = icmp sgt i32 %356, 15
  br i1 %357, label %358, label %366

358:                                              ; preds = %348, %338
  %359 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %360 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %4, align 4
  %363 = add nsw i32 14, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %361, i64 %364
  store i32 5, i32* %365, align 4
  br label %366

366:                                              ; preds = %358, %348
  br label %367

367:                                              ; preds = %366, %305
  %368 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %369 = load i32, i32* @RUN_DEBUG_TXPWR, align 4
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt2860_rf2850, align 8
  %371 = load i32, i32* %4, align 4
  %372 = add nsw i32 14, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %378 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %4, align 4
  %381 = add nsw i32 14, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %386 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %385, i32 0, i32 2
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %4, align 4
  %389 = add nsw i32 14, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @RUN_DPRINTF(%struct.run_softc* %368, i32 %369, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %376, i32 %384, i32 %392)
  br label %394

394:                                              ; preds = %367
  %395 = load i32, i32* %4, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %4, align 4
  br label %302

397:                                              ; preds = %302
  ret void
}

declare dso_local i32 @run_srom_read(%struct.run_softc*, i64, i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
