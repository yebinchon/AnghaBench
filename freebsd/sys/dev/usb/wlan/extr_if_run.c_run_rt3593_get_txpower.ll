; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_get_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3593_get_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32*, i32*, i32* }

@RT3593_EEPROM_PWR2GHZ_BASE1 = common dso_local global i32 0, align 4
@RT2860_EEPROM_PWR2GHZ_BASE1 = common dso_local global i32 0, align 4
@RT3593_EEPROM_PWR2GHZ_BASE2 = common dso_local global i32 0, align 4
@RT2860_EEPROM_PWR2GHZ_BASE2 = common dso_local global i32 0, align 4
@RT3593_EEPROM_PWR2GHZ_BASE3 = common dso_local global i32 0, align 4
@RT3593_EEPROM_PWR5GHZ_BASE1 = common dso_local global i32 0, align 4
@RT3593_EEPROM_PWR5GHZ_BASE2 = common dso_local global i32 0, align 4
@RT3593_EEPROM_PWR5GHZ_BASE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt3593_get_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3593_get_txpower(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %126, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 14
  br i1 %8, label %9, label %129

9:                                                ; preds = %6
  %10 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %11 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @RT3593_EEPROM_PWR2GHZ_BASE1, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @RT2860_EEPROM_PWR2GHZ_BASE1, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %3, align 4
  %20 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = call i32 @run_srom_read(%struct.run_softc* %20, i32 %24, i32* %4)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %32 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 0
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %44 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %49, align 4
  %50 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %51 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %18
  %55 = load i32, i32* @RT3593_EEPROM_PWR2GHZ_BASE2, align 4
  br label %58

56:                                               ; preds = %18
  %57 = load i32, i32* @RT2860_EEPROM_PWR2GHZ_BASE2, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %3, align 4
  %60 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %61, %63
  %65 = call i32 @run_srom_read(%struct.run_softc* %60, i32 %64, i32* %4)
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %72 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %84 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %125

94:                                               ; preds = %58
  %95 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %96 = load i32, i32* @RT3593_EEPROM_PWR2GHZ_BASE3, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %96, %98
  %100 = call i32 @run_srom_read(%struct.run_softc* %95, i32 %99, i32* %4)
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, 255
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %107 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 0
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %119 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %94, %58
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %5, align 4
  br label %6

129:                                              ; preds = %6
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %188, %129
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 14
  br i1 %132, label %133, label %191

133:                                              ; preds = %130
  %134 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %135 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 31
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %144 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 5, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %133
  %150 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %151 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 31
  br i1 %157, label %158, label %165

158:                                              ; preds = %149
  %159 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %160 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 5, i32* %164, align 4
  br label %165

165:                                              ; preds = %158, %149
  %166 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %167 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %172 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %177, 31
  br i1 %178, label %179, label %186

179:                                              ; preds = %170
  %180 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %181 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 5, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %170
  br label %187

187:                                              ; preds = %186, %165
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %130

191:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %292, %191
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 40
  br i1 %194, label %195, label %295

195:                                              ; preds = %192
  %196 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %197 = load i32, i32* @RT3593_EEPROM_PWR5GHZ_BASE1, align 4
  %198 = load i32, i32* %5, align 4
  %199 = sdiv i32 %198, 2
  %200 = add nsw i32 %197, %199
  %201 = call i32 @run_srom_read(%struct.run_softc* %196, i32 %200, i32* %4)
  %202 = load i32, i32* %4, align 4
  %203 = and i32 %202, 255
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %208 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 14
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %206, i32* %213, align 4
  %214 = load i32, i32* %4, align 4
  %215 = ashr i32 %214, 8
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %220 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 15
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 %218, i32* %225, align 4
  %226 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %227 = load i32, i32* @RT3593_EEPROM_PWR5GHZ_BASE2, align 4
  %228 = load i32, i32* %5, align 4
  %229 = sdiv i32 %228, 2
  %230 = add nsw i32 %227, %229
  %231 = call i32 @run_srom_read(%struct.run_softc* %226, i32 %230, i32* %4)
  %232 = load i32, i32* %4, align 4
  %233 = and i32 %232, 255
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %238 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 14
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %236, i32* %243, align 4
  %244 = load i32, i32* %4, align 4
  %245 = ashr i32 %244, 8
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %250 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 15
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %248, i32* %255, align 4
  %256 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %257 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %291

260:                                              ; preds = %195
  %261 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %262 = load i32, i32* @RT3593_EEPROM_PWR5GHZ_BASE3, align 4
  %263 = load i32, i32* %5, align 4
  %264 = sdiv i32 %263, 2
  %265 = add nsw i32 %262, %264
  %266 = call i32 @run_srom_read(%struct.run_softc* %261, i32 %265, i32* %4)
  %267 = load i32, i32* %4, align 4
  %268 = and i32 %267, 255
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %273 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = add nsw i32 %275, 14
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %271, i32* %278, align 4
  %279 = load i32, i32* %4, align 4
  %280 = ashr i32 %279, 8
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = ptrtoint i8* %282 to i32
  %284 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %285 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %287, 15
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  store i32 %283, i32* %290, align 4
  br label %291

291:                                              ; preds = %260, %195
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 2
  store i32 %294, i32* %5, align 4
  br label %192

295:                                              ; preds = %192
  ret void
}

declare dso_local i32 @run_srom_read(%struct.run_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
