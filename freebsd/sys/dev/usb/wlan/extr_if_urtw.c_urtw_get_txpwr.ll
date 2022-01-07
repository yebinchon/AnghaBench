; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_txpwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_txpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i32*, i32*, i32 }

@URTW_EPROM_TXPW_BASE = common dso_local global i32 0, align 4
@URTW_EPROM_TXPW0 = common dso_local global i32 0, align 4
@URTW_EPROM_TXPW1 = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_EPROM_TXPW2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_get_txpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_get_txpwr(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = load i32, i32* @URTW_EPROM_TXPW_BASE, align 4
  %9 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %7, i32 %8, i32* %5)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %284

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 15
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %17 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 4
  %20 = and i32 %19, 15
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %22 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %73, %13
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %28 = load i32, i32* @URTW_EPROM_TXPW0, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %27, i32 %30, i32* %5)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %284

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 15
  %38 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %39 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 3840
  %46 = ashr i32 %45, 8
  %47 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %48 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 240
  %56 = ashr i32 %55, 4
  %57 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %58 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 61440
  %65 = ashr i32 %64, 12
  %66 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %67 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %35
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %23

78:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %133, %78
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %138

82:                                               ; preds = %79
  %83 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %84 = load i32, i32* @URTW_EPROM_TXPW1, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %83, i32 %86, i32* %5)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %284

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 15
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 6
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, 3840
  %103 = ashr i32 %102, 8
  %104 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %105 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 6
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32 %103, i32* %111, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 240
  %114 = ashr i32 %113, 4
  %115 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %116 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 6
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 61440
  %124 = ashr i32 %123, 12
  %125 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %126 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 6
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 %124, i32* %132, align 4
  br label %133

133:                                              ; preds = %91
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %79

138:                                              ; preds = %79
  %139 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %140 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @URTW_RTL8187B, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %218

145:                                              ; preds = %138
  %146 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %147 = load i32, i32* @URTW_EPROM_TXPW2, align 4
  %148 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %146, i32 %147, i32* %5)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %284

152:                                              ; preds = %145
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 15
  %155 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %156 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 11
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, 240
  %161 = ashr i32 %160, 4
  %162 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %163 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 11
  store i32 %161, i32* %165, align 4
  %166 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %167 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %166, i32 10, i32* %5)
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %6, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %152
  br label %284

171:                                              ; preds = %152
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, 15
  %174 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %175 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 12
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 240
  %180 = ashr i32 %179, 4
  %181 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %182 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 12
  store i32 %180, i32* %184, align 4
  %185 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %186 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %185, i32 28, i32* %5)
  store i64 %186, i64* %6, align 8
  %187 = load i64, i64* %6, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %171
  br label %284

190:                                              ; preds = %171
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, 15
  %193 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %194 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 13
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, 3840
  %199 = ashr i32 %198, 8
  %200 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %201 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 14
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* %5, align 4
  %205 = and i32 %204, 240
  %206 = ashr i32 %205, 4
  %207 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %208 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 13
  store i32 %206, i32* %210, align 4
  %211 = load i32, i32* %5, align 4
  %212 = and i32 %211, 61440
  %213 = ashr i32 %212, 12
  %214 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %215 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 14
  store i32 %213, i32* %217, align 4
  br label %283

218:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %277, %218
  %220 = load i32, i32* %3, align 4
  %221 = icmp slt i32 %220, 4
  br i1 %221, label %222, label %282

222:                                              ; preds = %219
  %223 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %224 = load i32, i32* @URTW_EPROM_TXPW2, align 4
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %224, %225
  %227 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %223, i32 %226, i32* %5)
  store i64 %227, i64* %6, align 8
  %228 = load i64, i64* %6, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %284

231:                                              ; preds = %222
  %232 = load i32, i32* %5, align 4
  %233 = and i32 %232, 15
  %234 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %235 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %3, align 4
  %238 = add nsw i32 %237, 6
  %239 = add nsw i32 %238, 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  store i32 %233, i32* %241, align 4
  %242 = load i32, i32* %5, align 4
  %243 = and i32 %242, 3840
  %244 = ashr i32 %243, 8
  %245 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %246 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %3, align 4
  %249 = add nsw i32 %248, 6
  %250 = add nsw i32 %249, 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  store i32 %244, i32* %253, align 4
  %254 = load i32, i32* %5, align 4
  %255 = and i32 %254, 240
  %256 = ashr i32 %255, 4
  %257 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %258 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 6
  %262 = add nsw i32 %261, 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  store i32 %256, i32* %264, align 4
  %265 = load i32, i32* %5, align 4
  %266 = and i32 %265, 61440
  %267 = ashr i32 %266, 12
  %268 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %269 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = add nsw i32 %271, 6
  %273 = add nsw i32 %272, 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %270, i64 %275
  store i32 %267, i32* %276, align 4
  br label %277

277:                                              ; preds = %231
  %278 = load i32, i32* %3, align 4
  %279 = add nsw i32 %278, 2
  store i32 %279, i32* %3, align 4
  %280 = load i32, i32* %4, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %4, align 4
  br label %219

282:                                              ; preds = %219
  br label %283

283:                                              ; preds = %282, %190
  br label %284

284:                                              ; preds = %283, %230, %189, %170, %151, %90, %34, %12
  %285 = load i64, i64* %6, align 8
  ret i64 %285
}

declare dso_local i64 @urtw_eprom_read32(%struct.urtw_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
