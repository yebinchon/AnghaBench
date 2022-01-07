; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_raw_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_raw_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.cyapa_regs = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cyapa_thumbarea_percent = common dso_local global i32 0, align 4
@CYAPA_STAT_RUNNING = common dso_local global i32 0, align 4
@cyapa_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"stat %02x buttons %c%c%c nfngrs=%d \00", align 1
@CYAPA_FNGR_LEFT = common dso_local global i32 0, align 4
@CYAPA_FNGR_MIDDLE = common dso_local global i32 0, align 4
@CYAPA_FNGR_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" [x=%04d y=%04d p=%d i=%d]\00", align 1
@cyapa_minpressure = common dso_local global i32 0, align 4
@cyapa_scroll_stick_ticks = common dso_local global i64 0, align 8
@cyapa_scroll_wait_ticks = common dso_local global i64 0, align 8
@ZSCALE = common dso_local global i32 0, align 4
@cyapa_move_min_ticks = common dso_local global i64 0, align 8
@cyapa_norm_freq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Detected jump by %i %i\0A\00", align 1
@cyapa_enable_tapclick = common dso_local global i32 0, align 4
@cyapa_tapclick_min_ticks = common dso_local global i64 0, align 8
@cyapa_tapclick_max_ticks = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@TIME_TO_IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%i >> %i << %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa_softc*, %struct.cyapa_regs*, i32)* @cyapa_raw_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_raw_input(%struct.cyapa_softc* %0, %struct.cyapa_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.cyapa_softc*, align 8
  %5 = alloca %struct.cyapa_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %4, align 8
  store %struct.cyapa_regs* %1, %struct.cyapa_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @cyapa_thumbarea_percent, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 100
  %33 = sub nsw i32 %26, %32
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %34 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %35 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CYAPA_STAT_RUNNING, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %42 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %3
  %44 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %45 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CYAPA_FNGR_NUMFINGERS(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* @cyapa_debug, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %43
  %52 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %53 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %56 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 76, i32 45
  %63 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %64 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 77, i32 45
  %71 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %72 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 82, i32 45
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %62, i32 %70, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %51, %43
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %154, %129, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %157

86:                                               ; preds = %82
  %87 = load i64, i64* @cyapa_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @CYAPA_TOUCH_X(%struct.cyapa_regs* %90, i32 %91)
  %93 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %93, i32 %94)
  %96 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @CYAPA_TOUCH_P(%struct.cyapa_regs* %96, i32 %97)
  %99 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %100 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %98, i32 %106)
  br label %108

108:                                              ; preds = %89, %86
  %109 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %109, i32 %110)
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @CYAPA_TOUCH_P(%struct.cyapa_regs* %118, i32 %119)
  %121 = load i32, i32* @cyapa_minpressure, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %117, %114
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %123
  %130 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %131 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %137 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %141
  %143 = bitcast %struct.TYPE_2__* %135 to i8*
  %144 = bitcast %struct.TYPE_2__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  br label %82

145:                                              ; preds = %123
  br label %154

146:                                              ; preds = %117
  %147 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %147, i32 %148)
  %150 = load i32, i32* %13, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 1, i32* %14, align 4
  br label %153

153:                                              ; preds = %152, %146
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %82

157:                                              ; preds = %82
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %7, align 4
  %159 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %160 = call i32 @cyapa_lock(%struct.cyapa_softc* %159)
  %161 = load i32, i32* %8, align 4
  switch i32 %161, label %199 [
    i32 0, label %162
    i32 1, label %163
    i32 2, label %175
    i32 3, label %198
  ]

162:                                              ; preds = %157
  br label %233

163:                                              ; preds = %157
  %164 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %165 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %170 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %173 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %163
  br label %233

175:                                              ; preds = %157
  %176 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %177 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %182 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %185 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %180, %175
  %187 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %188 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %189, 1
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %193 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %196 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %195, i32 0, i32 4
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %186
  br label %233

198:                                              ; preds = %157
  br label %199

199:                                              ; preds = %157, %198
  %200 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %201 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %206 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %209 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %212 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %213, 1
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %217 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %220 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %219, i32 0, i32 4
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %215, %210
  %222 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %223 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp sle i32 %224, 2
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %228 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %231 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %230, i32 0, i32 5
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %226, %221
  br label %233

233:                                              ; preds = %232, %197, %174, %162
  %234 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %235 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp slt i32 %236, %237
  %239 = zext i1 %238 to i32
  store i32 %239, i32* %18, align 4
  %240 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %241 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp sgt i32 %242, %243
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %248 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %280

251:                                              ; preds = %233
  %252 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %253 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %20, align 4
  %255 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %256 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %21, align 4
  %258 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %259 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %258, i32 0, i32 6
  store i32 -1, i32* %259, align 8
  %260 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %261 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %260, i32 0, i32 7
  store i32 -1, i32* %261, align 4
  %262 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %263 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %262, i32 0, i32 8
  store i32 -1, i32* %263, align 8
  %264 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %265 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %264, i32 0, i32 26
  store i64 0, i64* %265, align 8
  %266 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %267 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %266, i32 0, i32 25
  store i64 0, i64* %267, align 8
  %268 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %269 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %268, i32 0, i32 24
  store i64 0, i64* %269, align 8
  %270 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %271 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %270, i32 0, i32 9
  store i32 -1, i32* %271, align 4
  %272 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %273 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %272, i32 0, i32 10
  store i32 -1, i32* %273, align 8
  %274 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %275 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %274, i32 0, i32 11
  store i32 -1, i32* %275, align 4
  %276 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %277 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %276, i32 0, i32 12
  store i32 -1, i32* %277, align 8
  %278 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %279 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %278, i32 0, i32 13
  store i32 0, i32* %279, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %401

280:                                              ; preds = %233
  store i32 0, i32* %9, align 4
  br label %281

281:                                              ; preds = %300, %280
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* %7, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %287 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %286, i32 0, i32 12
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %290 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %289, i32 0, i32 2
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %288, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %285
  br label %303

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %9, align 4
  br label %281

303:                                              ; preds = %298, %281
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %7, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %345

307:                                              ; preds = %303
  store i32 0, i32* %9, align 4
  %308 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %309 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %308, i32 0, i32 6
  store i32 -1, i32* %309, align 8
  %310 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %311 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %310, i32 0, i32 7
  store i32 -1, i32* %311, align 4
  %312 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %313 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %312, i32 0, i32 8
  store i32 -1, i32* %313, align 8
  br label %314

314:                                              ; preds = %326, %307
  %315 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %316 = load i32, i32* %9, align 4
  %317 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %315, i32 %316)
  %318 = load i32, i32* %13, align 4
  %319 = icmp sge i32 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %7, align 4
  %323 = icmp slt i32 %321, %322
  br label %324

324:                                              ; preds = %320, %314
  %325 = phi i1 [ false, %314 ], [ %323, %320 ]
  br i1 %325, label %326, label %329

326:                                              ; preds = %324
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  br label %314

329:                                              ; preds = %324
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %7, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  store i32 0, i32* %9, align 4
  br label %334

334:                                              ; preds = %333, %329
  %335 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %336 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %335, i32 0, i32 2
  %337 = load %struct.TYPE_2__*, %struct.TYPE_2__** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %344 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %343, i32 0, i32 12
  store i32 %342, i32* %344, align 8
  br label %400

345:                                              ; preds = %303
  %346 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %347 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %345
  %351 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %351, i32 %352)
  %354 = load i32, i32* %13, align 4
  %355 = icmp sge i32 %353, %354
  br i1 %355, label %356, label %399

356:                                              ; preds = %350, %345
  %357 = load i32, i32* %18, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %399

359:                                              ; preds = %356
  %360 = load i32, i32* %8, align 4
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %399

362:                                              ; preds = %359
  %363 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %364 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %363, i32 0, i32 2
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %370 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %369, i32 0, i32 12
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %368, %371
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 1, i32 0
  store i32 %374, i32* %10, align 4
  %375 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %375, i32 %376)
  %378 = load i32, i32* %13, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %398

380:                                              ; preds = %362
  %381 = load i32, i32* %10, align 4
  store i32 %381, i32* %9, align 4
  %382 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %383 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %382, i32 0, i32 6
  store i32 -1, i32* %383, align 8
  %384 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %385 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %384, i32 0, i32 7
  store i32 -1, i32* %385, align 4
  %386 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %387 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %386, i32 0, i32 8
  store i32 -1, i32* %387, align 8
  %388 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %389 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %388, i32 0, i32 2
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** %389, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %397 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %396, i32 0, i32 12
  store i32 %395, i32* %397, align 8
  br label %398

398:                                              ; preds = %380, %362
  br label %399

399:                                              ; preds = %398, %359, %356, %350
  br label %400

400:                                              ; preds = %399, %334
  br label %401

401:                                              ; preds = %400, %251
  %402 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %403 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %402, i32 0, i32 8
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, -1
  br i1 %405, label %406, label %424

406:                                              ; preds = %401
  %407 = load i32, i32* %8, align 4
  %408 = icmp ne i32 %407, 2
  br i1 %408, label %409, label %424

409:                                              ; preds = %406
  %410 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %411 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %414 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %413, i32 0, i32 14
  %415 = load i64, i64* %414, align 8
  %416 = sub nsw i64 %412, %415
  %417 = load i64, i64* @cyapa_scroll_stick_ticks, align 8
  %418 = icmp sgt i64 %416, %417
  br i1 %418, label %419, label %424

419:                                              ; preds = %409
  %420 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %421 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %420, i32 0, i32 8
  store i32 -1, i32* %421, align 8
  %422 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %423 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %422, i32 0, i32 14
  store i64 0, i64* %423, align 8
  br label %424

424:                                              ; preds = %419, %409, %406, %401
  %425 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %426 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %511, label %431

431:                                              ; preds = %424
  %432 = load i32, i32* %8, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %431
  %435 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %436 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %435, i32 0, i32 8
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, -1
  br i1 %438, label %452, label %439

439:                                              ; preds = %434, %431
  %440 = load i32, i32* %8, align 4
  %441 = icmp eq i32 %440, 2
  br i1 %441, label %442, label %511

442:                                              ; preds = %439
  %443 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %444 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %443, i32 0)
  %445 = load i32, i32* %13, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %511

447:                                              ; preds = %442
  %448 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %449 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %448, i32 1)
  %450 = load i32, i32* %13, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %511

452:                                              ; preds = %447, %434
  %453 = load i32, i32* %8, align 4
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %455, label %510

455:                                              ; preds = %452
  %456 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %457 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %456, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %460 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %459, i32 0, i32 4
  %461 = load i64, i64* %460, align 8
  %462 = sub nsw i64 %458, %461
  %463 = load i64, i64* @cyapa_scroll_wait_ticks, align 8
  %464 = icmp sgt i64 %462, %463
  br i1 %464, label %465, label %510

465:                                              ; preds = %455
  %466 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %467 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %466, i32 0)
  %468 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %469 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %468, i32 1)
  %470 = add nsw i32 %467, %469
  %471 = ashr i32 %470, 1
  store i32 %471, i32* %17, align 4
  %472 = load i32, i32* %17, align 4
  %473 = load i32, i32* @ZSCALE, align 4
  %474 = sdiv i32 %472, %473
  %475 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %476 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %475, i32 0, i32 8
  %477 = load i32, i32* %476, align 8
  %478 = sub nsw i32 %474, %477
  %479 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %480 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %479, i32 0, i32 15
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, %478
  store i32 %482, i32* %480, align 8
  %483 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %484 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, -1
  br i1 %486, label %487, label %490

487:                                              ; preds = %465
  %488 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %489 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %488, i32 0, i32 15
  store i32 0, i32* %489, align 8
  br label %490

490:                                              ; preds = %487, %465
  %491 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %492 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %491, i32 0, i32 11
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, -1
  br i1 %494, label %495, label %499

495:                                              ; preds = %490
  %496 = load i32, i32* %17, align 4
  %497 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %498 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %497, i32 0, i32 11
  store i32 %496, i32* %498, align 4
  br label %499

499:                                              ; preds = %495, %490
  %500 = load i32, i32* %17, align 4
  %501 = load i32, i32* @ZSCALE, align 4
  %502 = sdiv i32 %500, %501
  %503 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %504 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %503, i32 0, i32 8
  store i32 %502, i32* %504, align 8
  %505 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %506 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %509 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %508, i32 0, i32 14
  store i64 %507, i64* %509, align 8
  br label %510

510:                                              ; preds = %499, %455, %452
  br label %685

511:                                              ; preds = %447, %442, %439, %424
  %512 = load i32, i32* %8, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %684

514:                                              ; preds = %511
  %515 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %516 = load i32, i32* %9, align 4
  %517 = call i32 @CYAPA_TOUCH_X(%struct.cyapa_regs* %515, i32 %516)
  store i32 %517, i32* %15, align 4
  %518 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %519 = load i32, i32* %9, align 4
  %520 = call i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs* %518, i32 %519)
  store i32 %520, i32* %16, align 4
  %521 = load i32, i32* %15, align 4
  store i32 %521, i32* %20, align 4
  %522 = load i32, i32* %16, align 4
  store i32 %522, i32* %21, align 4
  %523 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %524 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %523, i32 0, i32 6
  %525 = load i32, i32* %524, align 8
  %526 = icmp ne i32 %525, -1
  br i1 %526, label %527, label %665

527:                                              ; preds = %514
  %528 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %529 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %528, i32 0, i32 7
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* %13, align 4
  %532 = icmp slt i32 %530, %531
  br i1 %532, label %533, label %665

533:                                              ; preds = %527
  %534 = load i32, i32* %8, align 4
  %535 = icmp sgt i32 %534, 1
  br i1 %535, label %550, label %536

536:                                              ; preds = %533
  %537 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %538 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %537, i32 0, i32 3
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %541 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %540, i32 0, i32 2
  %542 = load i64, i64* %541, align 8
  %543 = sub nsw i64 %539, %542
  %544 = load i64, i64* @cyapa_move_min_ticks, align 8
  %545 = icmp sge i64 %543, %544
  br i1 %545, label %550, label %546

546:                                              ; preds = %536
  %547 = load i32, i32* %6, align 4
  %548 = load i32, i32* @cyapa_norm_freq, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %665

550:                                              ; preds = %546, %536, %533
  %551 = load i32, i32* %15, align 4
  %552 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %553 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %552, i32 0, i32 6
  %554 = load i32, i32* %553, align 8
  %555 = sub nsw i32 %551, %554
  %556 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %557 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %556, i32 0, i32 16
  %558 = load i32, i32* %557, align 4
  %559 = add nsw i32 %558, %555
  store i32 %559, i32* %557, align 4
  %560 = load i32, i32* %16, align 4
  %561 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %562 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %561, i32 0, i32 7
  %563 = load i32, i32* %562, align 4
  %564 = sub nsw i32 %560, %563
  %565 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %566 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %565, i32 0, i32 17
  %567 = load i32, i32* %566, align 8
  %568 = sub nsw i32 %567, %564
  store i32 %568, i32* %566, align 8
  %569 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %570 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %569, i32 0, i32 16
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %573 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %572, i32 0, i32 18
  %574 = load i32, i32* %573, align 4
  %575 = icmp sgt i32 %571, %574
  br i1 %575, label %576, label %582

576:                                              ; preds = %550
  %577 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %578 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %577, i32 0, i32 18
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %581 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %580, i32 0, i32 16
  store i32 %579, i32* %581, align 4
  br label %582

582:                                              ; preds = %576, %550
  %583 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %584 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %583, i32 0, i32 16
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %587 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %586, i32 0, i32 18
  %588 = load i32, i32* %587, align 4
  %589 = sub nsw i32 0, %588
  %590 = icmp slt i32 %585, %589
  br i1 %590, label %591, label %598

591:                                              ; preds = %582
  %592 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %593 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %592, i32 0, i32 18
  %594 = load i32, i32* %593, align 4
  %595 = sub nsw i32 0, %594
  %596 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %597 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %596, i32 0, i32 16
  store i32 %595, i32* %597, align 4
  br label %598

598:                                              ; preds = %591, %582
  %599 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %600 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %599, i32 0, i32 17
  %601 = load i32, i32* %600, align 8
  %602 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %603 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = icmp sgt i32 %601, %604
  br i1 %605, label %606, label %612

606:                                              ; preds = %598
  %607 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %608 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %611 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %610, i32 0, i32 17
  store i32 %609, i32* %611, align 8
  br label %612

612:                                              ; preds = %606, %598
  %613 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %614 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %613, i32 0, i32 17
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %617 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = sub nsw i32 0, %618
  %620 = icmp slt i32 %615, %619
  br i1 %620, label %621, label %628

621:                                              ; preds = %612
  %622 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %623 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = sub nsw i32 0, %624
  %626 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %627 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %626, i32 0, i32 17
  store i32 %625, i32* %627, align 8
  br label %628

628:                                              ; preds = %621, %612
  %629 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %630 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %629, i32 0, i32 17
  %631 = load i32, i32* %630, align 8
  %632 = call i32 @abs(i32 %631) #4
  %633 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %634 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = sdiv i32 %635, 2
  %637 = icmp sgt i32 %632, %636
  br i1 %637, label %648, label %638

638:                                              ; preds = %628
  %639 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %640 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %639, i32 0, i32 16
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @abs(i32 %641) #4
  %643 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %644 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %643, i32 0, i32 18
  %645 = load i32, i32* %644, align 4
  %646 = sdiv i32 %645, 2
  %647 = icmp sgt i32 %642, %646
  br i1 %647, label %648, label %664

648:                                              ; preds = %638, %628
  %649 = load i64, i64* @cyapa_debug, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %659

651:                                              ; preds = %648
  %652 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %653 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %652, i32 0, i32 16
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %656 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %655, i32 0, i32 17
  %657 = load i32, i32* %656, align 8
  %658 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %654, i32 %657)
  br label %659

659:                                              ; preds = %651, %648
  %660 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %661 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %660, i32 0, i32 17
  store i32 0, i32* %661, align 8
  %662 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %663 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %662, i32 0, i32 16
  store i32 0, i32* %663, align 4
  br label %664

664:                                              ; preds = %659, %638
  br label %665

665:                                              ; preds = %664, %546, %527, %514
  %666 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %667 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %666, i32 0, i32 9
  %668 = load i32, i32* %667, align 4
  %669 = icmp eq i32 %668, -1
  br i1 %669, label %670, label %677

670:                                              ; preds = %665
  %671 = load i32, i32* %15, align 4
  %672 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %673 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %672, i32 0, i32 9
  store i32 %671, i32* %673, align 4
  %674 = load i32, i32* %16, align 4
  %675 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %676 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %675, i32 0, i32 10
  store i32 %674, i32* %676, align 8
  br label %677

677:                                              ; preds = %670, %665
  %678 = load i32, i32* %15, align 4
  %679 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %680 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %679, i32 0, i32 6
  store i32 %678, i32* %680, align 8
  %681 = load i32, i32* %16, align 4
  %682 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %683 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %682, i32 0, i32 7
  store i32 %681, i32* %683, align 4
  br label %684

684:                                              ; preds = %677, %511
  br label %685

685:                                              ; preds = %684, %510
  %686 = load i32, i32* @cyapa_enable_tapclick, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %714

688:                                              ; preds = %685
  %689 = load i32, i32* %19, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %714

691:                                              ; preds = %688
  %692 = load i32, i32* %8, align 4
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %714

694:                                              ; preds = %691
  %695 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %696 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %695, i32 0, i32 3
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %699 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %698, i32 0, i32 2
  %700 = load i64, i64* %699, align 8
  %701 = sub nsw i64 %697, %700
  %702 = load i64, i64* @cyapa_tapclick_min_ticks, align 8
  %703 = icmp sge i64 %701, %702
  br i1 %703, label %704, label %714

704:                                              ; preds = %694
  %705 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %706 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %705, i32 0, i32 3
  %707 = load i64, i64* %706, align 8
  %708 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %709 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %708, i32 0, i32 2
  %710 = load i64, i64* %709, align 8
  %711 = sub nsw i64 %707, %710
  %712 = load i64, i64* @cyapa_tapclick_max_ticks, align 8
  %713 = icmp slt i64 %711, %712
  br label %714

714:                                              ; preds = %704, %694, %691, %688, %685
  %715 = phi i1 [ false, %694 ], [ false, %691 ], [ false, %688 ], [ false, %685 ], [ %713, %704 ]
  %716 = zext i1 %715 to i32
  store i32 %716, i32* %23, align 4
  %717 = load %struct.cyapa_regs*, %struct.cyapa_regs** %5, align 8
  %718 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  %721 = and i32 %719, %720
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %726, label %723

723:                                              ; preds = %714
  %724 = load i32, i32* %23, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %798

726:                                              ; preds = %723, %714
  %727 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %728 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %727, i32 0, i32 13
  %729 = load i32, i32* %728, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %735

731:                                              ; preds = %726
  %732 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %733 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %732, i32 0, i32 13
  %734 = load i32, i32* %733, align 4
  store i32 %734, i32* %22, align 4
  br label %797

735:                                              ; preds = %726
  %736 = load i32, i32* %8, align 4
  %737 = icmp eq i32 %736, 1
  br i1 %737, label %738, label %761

738:                                              ; preds = %735
  %739 = load i32, i32* %20, align 4
  %740 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %741 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %740, i32 0, i32 18
  %742 = load i32, i32* %741, align 4
  %743 = mul nsw i32 %742, 2
  %744 = sdiv i32 %743, 3
  %745 = icmp slt i32 %739, %744
  br i1 %745, label %746, label %748

746:                                              ; preds = %738
  %747 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  store i32 %747, i32* %22, align 4
  br label %760

748:                                              ; preds = %738
  %749 = load i32, i32* %21, align 4
  %750 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %751 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = sdiv i32 %752, 2
  %754 = icmp slt i32 %749, %753
  br i1 %754, label %755, label %757

755:                                              ; preds = %748
  %756 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  store i32 %756, i32* %22, align 4
  br label %759

757:                                              ; preds = %748
  %758 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  store i32 %758, i32* %22, align 4
  br label %759

759:                                              ; preds = %757, %755
  br label %760

760:                                              ; preds = %759, %746
  br label %796

761:                                              ; preds = %735
  %762 = load i32, i32* %23, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %793

764:                                              ; preds = %761
  %765 = load i32, i32* %20, align 4
  %766 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %767 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %766, i32 0, i32 18
  %768 = load i32, i32* %767, align 4
  %769 = mul nsw i32 %768, 2
  %770 = sdiv i32 %769, 3
  %771 = icmp slt i32 %765, %770
  br i1 %771, label %775, label %772

772:                                              ; preds = %764
  %773 = load i32, i32* @cyapa_enable_tapclick, align 4
  %774 = icmp slt i32 %773, 2
  br i1 %774, label %775, label %777

775:                                              ; preds = %772, %764
  %776 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  store i32 %776, i32* %22, align 4
  br label %792

777:                                              ; preds = %772
  %778 = load i32, i32* %21, align 4
  %779 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %780 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 8
  %782 = sdiv i32 %781, 2
  %783 = icmp slt i32 %778, %782
  br i1 %783, label %784, label %789

784:                                              ; preds = %777
  %785 = load i32, i32* @cyapa_enable_tapclick, align 4
  %786 = icmp sgt i32 %785, 2
  br i1 %786, label %787, label %789

787:                                              ; preds = %784
  %788 = load i32, i32* @CYAPA_FNGR_MIDDLE, align 4
  store i32 %788, i32* %22, align 4
  br label %791

789:                                              ; preds = %784, %777
  %790 = load i32, i32* @CYAPA_FNGR_RIGHT, align 4
  store i32 %790, i32* %22, align 4
  br label %791

791:                                              ; preds = %789, %787
  br label %792

792:                                              ; preds = %791, %775
  br label %795

793:                                              ; preds = %761
  %794 = load i32, i32* @CYAPA_FNGR_LEFT, align 4
  store i32 %794, i32* %22, align 4
  br label %795

795:                                              ; preds = %793, %792
  br label %796

796:                                              ; preds = %795, %760
  br label %797

797:                                              ; preds = %796, %731
  br label %799

798:                                              ; preds = %723
  store i32 0, i32* %22, align 4
  br label %799

799:                                              ; preds = %798, %797
  %800 = load i32, i32* %22, align 4
  %801 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %802 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %801, i32 0, i32 13
  store i32 %800, i32* %802, align 4
  %803 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %804 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %803, i32 0, i32 16
  %805 = load i32, i32* %804, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %825, label %807

807:                                              ; preds = %799
  %808 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %809 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %808, i32 0, i32 17
  %810 = load i32, i32* %809, align 8
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %825, label %812

812:                                              ; preds = %807
  %813 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %814 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %813, i32 0, i32 15
  %815 = load i32, i32* %814, align 8
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %825, label %817

817:                                              ; preds = %812
  %818 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %819 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %818, i32 0, i32 13
  %820 = load i32, i32* %819, align 4
  %821 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %822 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %821, i32 0, i32 19
  %823 = load i32, i32* %822, align 8
  %824 = icmp ne i32 %820, %823
  br i1 %824, label %825, label %842

825:                                              ; preds = %817, %812, %807, %799
  %826 = load i32, i32* @ticks, align 4
  %827 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %828 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %827, i32 0, i32 20
  store i32 %826, i32* %828, align 4
  %829 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %830 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %829, i32 0, i32 21
  %831 = load i64, i64* %830, align 8
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %833, label %841

833:                                              ; preds = %825
  %834 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %835 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %834, i32 0, i32 23
  %836 = load i64, i64* %835, align 8
  %837 = icmp ne i64 %836, 0
  br i1 %837, label %838, label %841

838:                                              ; preds = %833
  %839 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %840 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %839, i32 0, i32 22
  store i32 1, i32* %840, align 8
  br label %841

841:                                              ; preds = %838, %833, %825
  store i32 0, i32* %12, align 4
  br label %858

842:                                              ; preds = %817
  %843 = load i32, i32* @ticks, align 4
  %844 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %845 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %844, i32 0, i32 20
  %846 = load i32, i32* %845, align 4
  %847 = sub i32 %843, %846
  %848 = load i32, i32* @TIME_TO_IDLE, align 4
  %849 = icmp uge i32 %847, %848
  br i1 %849, label %850, label %856

850:                                              ; preds = %842
  %851 = load i32, i32* @ticks, align 4
  %852 = load i32, i32* @TIME_TO_IDLE, align 4
  %853 = sub i32 %851, %852
  %854 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %855 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %854, i32 0, i32 20
  store i32 %853, i32* %855, align 4
  store i32 1, i32* %12, align 4
  br label %857

856:                                              ; preds = %842
  store i32 0, i32* %12, align 4
  br label %857

857:                                              ; preds = %856, %850
  br label %858

858:                                              ; preds = %857, %841
  %859 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %860 = call i32 @cyapa_notify(%struct.cyapa_softc* %859)
  %861 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %862 = call i32 @cyapa_unlock(%struct.cyapa_softc* %861)
  %863 = load i64, i64* @cyapa_debug, align 8
  %864 = icmp ne i64 %863, 0
  br i1 %864, label %865, label %874

865:                                              ; preds = %858
  %866 = load i32, i32* %12, align 4
  %867 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %868 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %867, i32 0, i32 12
  %869 = load i32, i32* %868, align 8
  %870 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %871 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %870, i32 0, i32 17
  %872 = load i32, i32* %871, align 8
  %873 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %866, i32 %869, i32 %872)
  br label %874

874:                                              ; preds = %865, %858
  %875 = load i32, i32* %12, align 4
  ret i32 %875
}

declare dso_local i32 @CYAPA_FNGR_NUMFINGERS(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @CYAPA_TOUCH_X(%struct.cyapa_regs*, i32) #1

declare dso_local i32 @CYAPA_TOUCH_Y(%struct.cyapa_regs*, i32) #1

declare dso_local i32 @CYAPA_TOUCH_P(%struct.cyapa_regs*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cyapa_lock(%struct.cyapa_softc*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @cyapa_notify(%struct.cyapa_softc*) #1

declare dso_local i32 @cyapa_unlock(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
