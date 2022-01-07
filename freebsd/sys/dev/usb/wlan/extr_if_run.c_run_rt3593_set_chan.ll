; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.run_softc = type { i32*, i32*, i32, i32*, i32, i32, i32 }

@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3070_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3070_TX2_PD = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_RX2_PD = common dso_local global i32 0, align 4
@RT5390_VCOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i32)* @run_rt3593_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3593_set_chan(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %26 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %33 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %40 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %51

43:                                               ; preds = %24
  %44 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %45 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %43
  %53 = phi i32 [ %50, %43 ], [ 0, %51 ]
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 14
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %58 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %59 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @run_bbp_write(%struct.run_softc* %57, i32 25, i32 %60)
  %62 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %63 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %64 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @run_bbp_write(%struct.run_softc* %62, i32 26, i32 %65)
  br label %72

67:                                               ; preds = %52
  %68 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %69 = call i32 @run_bbp_write(%struct.run_softc* %68, i32 25, i32 9)
  %70 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %71 = call i32 @run_bbp_write(%struct.run_softc* %70, i32 26, i32 255)
  br label %72

72:                                               ; preds = %67, %56
  %73 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @run_rt3070_rf_write(%struct.run_softc* %73, i32 8, i32 %79)
  %81 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 15
  %89 = call i32 @run_rt3070_rf_write(%struct.run_softc* %81, i32 9, i32 %88)
  %90 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %91 = call i32 @run_rt3070_rf_read(%struct.run_softc* %90, i32 11, i32* %9)
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, -4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 3
  %101 = or i32 %93, %100
  store i32 %101, i32* %9, align 4
  %102 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @run_rt3070_rf_write(%struct.run_softc* %102, i32 11, i32 %103)
  %105 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %106 = call i32 @run_rt3070_rf_read(%struct.run_softc* %105, i32 11, i32* %9)
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, -77
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp sle i32 %109, 14
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 68, i32 72
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @run_rt3070_rf_write(%struct.run_softc* %115, i32 11, i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = icmp sle i32 %118, 14
  br i1 %119, label %120, label %123

120:                                              ; preds = %72
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 31
  store i32 %122, i32* %9, align 4
  br label %131

123:                                              ; preds = %72
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 24
  %126 = shl i32 %125, 1
  %127 = or i32 64, %126
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, 7
  %130 = or i32 %127, %129
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %123, %120
  %132 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @run_rt3070_rf_write(%struct.run_softc* %132, i32 53, i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = icmp sle i32 %135, 14
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 31
  store i32 %139, i32* %9, align 4
  br label %148

140:                                              ; preds = %131
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 24
  %143 = shl i32 %142, 1
  %144 = or i32 64, %143
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, 7
  %147 = or i32 %144, %146
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %140, %137
  %149 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @run_rt3070_rf_write(%struct.run_softc* %149, i32 55, i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = icmp sle i32 %152, 14
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 31
  store i32 %156, i32* %9, align 4
  br label %165

157:                                              ; preds = %148
  %158 = load i32, i32* %7, align 4
  %159 = and i32 %158, 24
  %160 = shl i32 %159, 1
  %161 = or i32 64, %160
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, 7
  %164 = or i32 %161, %163
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %157, %154
  %166 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @run_rt3070_rf_write(%struct.run_softc* %166, i32 54, i32 %167)
  %169 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %170 = load i32, i32* @RT3070_PLL_PD, align 4
  %171 = or i32 %169, %170
  store i32 %171, i32* %9, align 4
  %172 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %173 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %184

176:                                              ; preds = %165
  %177 = load i32, i32* @RT3070_TX0_PD, align 4
  %178 = load i32, i32* @RT3070_TX1_PD, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @RT3070_TX2_PD, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %190

184:                                              ; preds = %165
  %185 = load i32, i32* @RT3070_TX0_PD, align 4
  %186 = load i32, i32* @RT3070_TX1_PD, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %184, %176
  %191 = load i32, i32* @RT3070_RX0_PD, align 4
  %192 = load i32, i32* @RT3070_RX1_PD, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @RT3070_RX2_PD, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @run_rt3070_rf_write(%struct.run_softc* %198, i32 1, i32 %199)
  %201 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %202 = call i32 @run_adjust_freq_offset(%struct.run_softc* %201)
  %203 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = icmp sle i32 %204, 14
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 160, i32 128
  %208 = call i32 @run_rt3070_rf_write(%struct.run_softc* %203, i32 31, i32 %207)
  %209 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %210 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 32
  %213 = ashr i32 %212, 5
  store i32 %213, i32* %8, align 4
  %214 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %215 = call i32 @run_rt3070_rf_read(%struct.run_softc* %214, i32 30, i32* %9)
  %216 = load i32, i32* %9, align 4
  %217 = and i32 %216, -7
  %218 = load i32, i32* %8, align 4
  %219 = shl i32 %218, 1
  %220 = or i32 %217, %219
  %221 = load i32, i32* %8, align 4
  %222 = shl i32 %221, 2
  %223 = or i32 %220, %222
  store i32 %223, i32* %9, align 4
  %224 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @run_rt3070_rf_write(%struct.run_softc* %224, i32 30, i32 %225)
  %227 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %228 = call i32 @run_rt3070_rf_read(%struct.run_softc* %227, i32 36, i32* %9)
  %229 = load i32, i32* %4, align 4
  %230 = icmp sle i32 %229, 14
  br i1 %230, label %231, label %234

231:                                              ; preds = %190
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %232, 128
  store i32 %233, i32* %9, align 4
  br label %237

234:                                              ; preds = %190
  %235 = load i32, i32* %9, align 4
  %236 = and i32 %235, -129
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @run_rt3070_rf_write(%struct.run_softc* %238, i32 36, i32 %239)
  %241 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %242 = load i32, i32* %4, align 4
  %243 = icmp sle i32 %242, 14
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 60, i32 32
  %246 = call i32 @run_rt3070_rf_write(%struct.run_softc* %241, i32 34, i32 %245)
  %247 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = icmp sle i32 %248, 14
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 26, i32 18
  %252 = call i32 @run_rt3070_rf_write(%struct.run_softc* %247, i32 12, i32 %251)
  %253 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %254 = call i32 @run_rt3070_rf_read(%struct.run_softc* %253, i32 6, i32* %9)
  %255 = load i32, i32* %9, align 4
  %256 = and i32 %255, -193
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %4, align 4
  %258 = icmp sle i32 %257, 14
  br i1 %258, label %259, label %262

259:                                              ; preds = %237
  %260 = load i32, i32* %9, align 4
  %261 = or i32 %260, 64
  store i32 %261, i32* %9, align 4
  br label %272

262:                                              ; preds = %237
  %263 = load i32, i32* %4, align 4
  %264 = icmp sle i32 %263, 128
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %9, align 4
  %267 = or i32 %266, 128
  store i32 %267, i32* %9, align 4
  br label %271

268:                                              ; preds = %262
  %269 = load i32, i32* %9, align 4
  %270 = or i32 %269, 64
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %268, %265
  br label %272

272:                                              ; preds = %271, %259
  %273 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @run_rt3070_rf_write(%struct.run_softc* %273, i32 6, i32 %274)
  %276 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %277 = call i32 @run_rt3070_rf_read(%struct.run_softc* %276, i32 30, i32* %9)
  %278 = load i32, i32* %9, align 4
  %279 = and i32 %278, -25
  %280 = or i32 %279, 16
  store i32 %280, i32* %9, align 4
  %281 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @run_rt3070_rf_write(%struct.run_softc* %281, i32 30, i32 %282)
  %284 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %285 = load i32, i32* %4, align 4
  %286 = icmp sle i32 %285, 14
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i32 211, i32 216
  %289 = call i32 @run_rt3070_rf_write(%struct.run_softc* %284, i32 10, i32 %288)
  %290 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %291 = load i32, i32* %4, align 4
  %292 = icmp sle i32 %291, 14
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i32 18, i32 35
  %295 = call i32 @run_rt3070_rf_write(%struct.run_softc* %290, i32 13, i32 %294)
  %296 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %297 = call i32 @run_rt3070_rf_read(%struct.run_softc* %296, i32 51, i32* %9)
  %298 = load i32, i32* %9, align 4
  %299 = and i32 %298, -4
  %300 = or i32 %299, 1
  store i32 %300, i32* %9, align 4
  %301 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @run_rt3070_rf_write(%struct.run_softc* %301, i32 51, i32 %302)
  %304 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %305 = call i32 @run_rt3070_rf_read(%struct.run_softc* %304, i32 51, i32* %9)
  %306 = load i32, i32* %9, align 4
  %307 = and i32 %306, -29
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %4, align 4
  %309 = icmp sle i32 %308, 14
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 20, i32 16
  %312 = load i32, i32* %9, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %9, align 4
  %314 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @run_rt3070_rf_write(%struct.run_softc* %314, i32 51, i32 %315)
  %317 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %318 = call i32 @run_rt3070_rf_read(%struct.run_softc* %317, i32 51, i32* %9)
  %319 = load i32, i32* %9, align 4
  %320 = and i32 %319, -225
  store i32 %320, i32* %9, align 4
  %321 = load i32, i32* %4, align 4
  %322 = icmp sle i32 %321, 14
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i32 96, i32 64
  %325 = load i32, i32* %9, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %9, align 4
  %327 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @run_rt3070_rf_write(%struct.run_softc* %327, i32 51, i32 %328)
  %330 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %331 = call i32 @run_rt3070_rf_read(%struct.run_softc* %330, i32 49, i32* %9)
  %332 = load i32, i32* %9, align 4
  %333 = and i32 %332, -29
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %4, align 4
  %335 = icmp sle i32 %334, 14
  %336 = zext i1 %335 to i64
  %337 = select i1 %335, i32 12, i32 8
  %338 = load i32, i32* %9, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %9, align 4
  %340 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @run_rt3070_rf_write(%struct.run_softc* %340, i32 49, i32 %341)
  %343 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %344 = call i32 @run_rt3070_rf_read(%struct.run_softc* %343, i32 50, i32* %9)
  %345 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %346 = load i32, i32* %9, align 4
  %347 = and i32 %346, -33
  %348 = call i32 @run_rt3070_rf_write(%struct.run_softc* %345, i32 50, i32 %347)
  %349 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %350 = call i32 @run_rt3070_rf_read(%struct.run_softc* %349, i32 57, i32* %9)
  %351 = load i32, i32* %9, align 4
  %352 = and i32 %351, -253
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* %4, align 4
  %354 = icmp sle i32 %353, 14
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 108, i32 60
  %357 = load i32, i32* %9, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %9, align 4
  %359 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @run_rt3070_rf_write(%struct.run_softc* %359, i32 57, i32 %360)
  %362 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %363 = load i32, i32* %4, align 4
  %364 = icmp sle i32 %363, 14
  %365 = zext i1 %364 to i64
  %366 = select i1 %364, i32 147, i32 155
  %367 = call i32 @run_rt3070_rf_write(%struct.run_softc* %362, i32 44, i32 %366)
  %368 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %369 = load i32, i32* %4, align 4
  %370 = icmp sle i32 %369, 14
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i32 69, i32 5
  %373 = call i32 @run_rt3070_rf_write(%struct.run_softc* %368, i32 52, i32 %372)
  %374 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %375 = call i32 @run_rt3070_rf_read(%struct.run_softc* %374, i32 3, i32* %9)
  %376 = load i32, i32* @RT5390_VCOCAL, align 4
  %377 = xor i32 %376, -1
  %378 = load i32, i32* %9, align 4
  %379 = and i32 %378, %377
  store i32 %379, i32* %9, align 4
  %380 = load i32, i32* %4, align 4
  %381 = icmp sle i32 %380, 14
  br i1 %381, label %382, label %384

382:                                              ; preds = %272
  %383 = load i32, i32* @RT5390_VCOCAL, align 4
  br label %385

384:                                              ; preds = %272
  br label %385

385:                                              ; preds = %384, %382
  %386 = phi i32 [ %383, %382 ], [ 190, %384 ]
  %387 = load i32, i32* %9, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %9, align 4
  %389 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %390 = load i32, i32* %9, align 4
  %391 = call i32 @run_rt3070_rf_write(%struct.run_softc* %389, i32 3, i32 %390)
  %392 = load i32, i32* %4, align 4
  %393 = icmp sle i32 %392, 14
  br i1 %393, label %394, label %395

394:                                              ; preds = %385
  store i32 35, i32* %9, align 4
  br label %406

395:                                              ; preds = %385
  %396 = load i32, i32* %4, align 4
  %397 = icmp sle i32 %396, 64
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 54, i32* %9, align 4
  br label %405

399:                                              ; preds = %395
  %400 = load i32, i32* %4, align 4
  %401 = icmp sle i32 %400, 128
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  store i32 50, i32* %9, align 4
  br label %404

403:                                              ; preds = %399
  store i32 48, i32* %9, align 4
  br label %404

404:                                              ; preds = %403, %402
  br label %405

405:                                              ; preds = %404, %398
  br label %406

406:                                              ; preds = %405, %394
  %407 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %408 = load i32, i32* %9, align 4
  %409 = call i32 @run_rt3070_rf_write(%struct.run_softc* %407, i32 39, i32 %408)
  %410 = load i32, i32* %4, align 4
  %411 = icmp sle i32 %410, 14
  br i1 %411, label %412, label %413

412:                                              ; preds = %406
  store i32 187, i32* %9, align 4
  br label %424

413:                                              ; preds = %406
  %414 = load i32, i32* %4, align 4
  %415 = icmp sle i32 %414, 64
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  store i32 235, i32* %9, align 4
  br label %423

417:                                              ; preds = %413
  %418 = load i32, i32* %4, align 4
  %419 = icmp sle i32 %418, 128
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  store i32 179, i32* %9, align 4
  br label %422

421:                                              ; preds = %417
  store i32 155, i32* %9, align 4
  br label %422

422:                                              ; preds = %421, %420
  br label %423

423:                                              ; preds = %422, %416
  br label %424

424:                                              ; preds = %423, %412
  %425 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %426 = load i32, i32* %9, align 4
  %427 = call i32 @run_rt3070_rf_write(%struct.run_softc* %425, i32 45, i32 %426)
  %428 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %429 = call i32 @run_bbp_write(%struct.run_softc* %428, i32 105, i32 52)
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_adjust_freq_offset(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
