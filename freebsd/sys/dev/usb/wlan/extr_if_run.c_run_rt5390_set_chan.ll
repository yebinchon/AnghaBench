; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.run_softc = type { i32*, i32*, i32, i32 }

@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3070_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_PLL_PD = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT5390_VCOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i64)* @run_rt5390_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt5390_set_chan(%struct.run_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %31 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @run_rt3070_rf_write(%struct.run_softc* %37, i32 8, i32 %43)
  %45 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = call i32 @run_rt3070_rf_write(%struct.run_softc* %45, i32 9, i32 %52)
  %54 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %55 = call i32 @run_rt3070_rf_read(%struct.run_softc* %54, i32 11, i32* %7)
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 3
  %65 = or i32 %57, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @run_rt3070_rf_write(%struct.run_softc* %66, i32 11, i32 %67)
  %69 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %70 = call i32 @run_rt3070_rf_read(%struct.run_softc* %69, i32 49, i32* %7)
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, -64
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 63
  %75 = or i32 %72, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 63
  %78 = icmp sgt i32 %77, 39
  br i1 %78, label %79, label %83

79:                                               ; preds = %22
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -64
  %82 = or i32 %81, 39
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %22
  %84 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @run_rt3070_rf_write(%struct.run_softc* %84, i32 49, i32 %85)
  %87 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %88 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 21394
  br i1 %90, label %91, label %110

91:                                               ; preds = %83
  %92 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %93 = call i32 @run_rt3070_rf_read(%struct.run_softc* %92, i32 50, i32* %7)
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, -64
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 63
  %98 = or i32 %95, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 63
  %101 = icmp sgt i32 %100, 39
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, -64
  %105 = or i32 %104, 39
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %91
  %107 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @run_rt3070_rf_write(%struct.run_softc* %107, i32 50, i32 %108)
  br label %110

110:                                              ; preds = %106, %83
  %111 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %112 = call i32 @run_rt3070_rf_read(%struct.run_softc* %111, i32 1, i32* %7)
  %113 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %114 = load i32, i32* @RT3070_PLL_PD, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @RT3070_RX0_PD, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RT3070_TX0_PD, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %123 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 21394
  br i1 %125, label %126, label %132

126:                                              ; preds = %110
  %127 = load i32, i32* @RT3070_RX1_PD, align 4
  %128 = load i32, i32* @RT3070_TX1_PD, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %126, %110
  %133 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @run_rt3070_rf_write(%struct.run_softc* %133, i32 1, i32 %134)
  %136 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %137 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 21394
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %142 = call i32 @run_rt3070_rf_read(%struct.run_softc* %141, i32 2, i32* %7)
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, 128
  store i32 %144, i32* %7, align 4
  %145 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @run_rt3070_rf_write(%struct.run_softc* %145, i32 2, i32 %146)
  %148 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %149 = call i32 @run_delay(%struct.run_softc* %148, i32 10)
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 127
  store i32 %151, i32* %7, align 4
  %152 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @run_rt3070_rf_write(%struct.run_softc* %152, i32 2, i32 %153)
  br label %155

155:                                              ; preds = %140, %132
  %156 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %157 = call i32 @run_adjust_freq_offset(%struct.run_softc* %156)
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 21394
  br i1 %161, label %162, label %223

162:                                              ; preds = %155
  %163 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %164 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %165, 547
  br i1 %166, label %167, label %213

167:                                              ; preds = %162
  %168 = load i64, i64* %4, align 8
  %169 = icmp sle i64 %168, 4
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 15, i32* %7, align 4
  br label %180

171:                                              ; preds = %167
  %172 = load i64, i64* %4, align 8
  %173 = icmp sge i64 %172, 5
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i64, i64* %4, align 8
  %176 = icmp sle i64 %175, 7
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 14, i32* %7, align 4
  br label %179

178:                                              ; preds = %174, %171
  store i32 13, i32* %7, align 4
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %170
  %181 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @run_rt3070_rf_write(%struct.run_softc* %181, i32 23, i32 %182)
  %184 = load i64, i64* %4, align 8
  %185 = icmp sle i64 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i32 12, i32* %7, align 4
  br label %209

187:                                              ; preds = %180
  %188 = load i64, i64* %4, align 8
  %189 = icmp eq i64 %188, 5
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 11, i32* %7, align 4
  br label %208

191:                                              ; preds = %187
  %192 = load i64, i64* %4, align 8
  %193 = icmp sge i64 %192, 6
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i64, i64* %4, align 8
  %196 = icmp sle i64 %195, 7
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 10, i32* %7, align 4
  br label %207

198:                                              ; preds = %194, %191
  %199 = load i64, i64* %4, align 8
  %200 = icmp sge i64 %199, 8
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i64, i64* %4, align 8
  %203 = icmp sle i64 %202, 10
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 9, i32* %7, align 4
  br label %206

205:                                              ; preds = %201, %198
  store i32 8, i32* %7, align 4
  br label %206

206:                                              ; preds = %205, %204
  br label %207

207:                                              ; preds = %206, %197
  br label %208

208:                                              ; preds = %207, %190
  br label %209

209:                                              ; preds = %208, %186
  %210 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @run_rt3070_rf_write(%struct.run_softc* %210, i32 59, i32 %211)
  br label %222

213:                                              ; preds = %162
  %214 = load i64, i64* %4, align 8
  %215 = icmp sle i64 %214, 11
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 15, i32* %7, align 4
  br label %218

217:                                              ; preds = %213
  store i32 11, i32* %7, align 4
  br label %218

218:                                              ; preds = %217, %216
  %219 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @run_rt3070_rf_write(%struct.run_softc* %219, i32 59, i32 %220)
  br label %222

222:                                              ; preds = %218, %209
  br label %256

223:                                              ; preds = %155
  %224 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %225 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp sge i32 %226, 1282
  br i1 %227, label %228, label %250

228:                                              ; preds = %223
  %229 = load i64, i64* %4, align 8
  %230 = icmp sle i64 %229, 11
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 67, i32* %7, align 4
  br label %233

232:                                              ; preds = %228
  store i32 35, i32* %7, align 4
  br label %233

233:                                              ; preds = %232, %231
  %234 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @run_rt3070_rf_write(%struct.run_softc* %234, i32 55, i32 %235)
  %237 = load i64, i64* %4, align 8
  %238 = icmp sle i64 %237, 11
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  store i32 15, i32* %7, align 4
  br label %246

240:                                              ; preds = %233
  %241 = load i64, i64* %4, align 8
  %242 = icmp eq i64 %241, 12
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 13, i32* %7, align 4
  br label %245

244:                                              ; preds = %240
  store i32 11, i32* %7, align 4
  br label %245

245:                                              ; preds = %244, %243
  br label %246

246:                                              ; preds = %245, %239
  %247 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @run_rt3070_rf_write(%struct.run_softc* %247, i32 59, i32 %248)
  br label %255

250:                                              ; preds = %223
  %251 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %252 = call i32 @run_rt3070_rf_write(%struct.run_softc* %251, i32 55, i32 68)
  %253 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %254 = call i32 @run_rt3070_rf_write(%struct.run_softc* %253, i32 59, i32 143)
  br label %255

255:                                              ; preds = %250, %246
  br label %256

256:                                              ; preds = %255, %222
  %257 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %258 = call i32 @run_rt3070_rf_read(%struct.run_softc* %257, i32 3, i32* %7)
  %259 = load i32, i32* @RT5390_VCOCAL, align 4
  %260 = load i32, i32* %7, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %7, align 4
  %262 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %263 = load i32, i32* %7, align 4
  %264 = call i32 @run_rt3070_rf_write(%struct.run_softc* %262, i32 3, i32 %263)
  ret void
}

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_adjust_freq_offset(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
