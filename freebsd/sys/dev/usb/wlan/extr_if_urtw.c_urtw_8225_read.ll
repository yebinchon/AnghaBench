; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_RF_PINS_OUTPUT = common dso_local global i32 0, align 4
@URTW_RF_PINS_ENABLE = common dso_local global i32 0, align 4
@URTW_RF_PINS_SELECT = common dso_local global i32 0, align 4
@URTW_RF_PINS_MAGIC4 = common dso_local global i32 0, align 4
@URTW_BB_HOST_BANG_EN = common dso_local global i32 0, align 4
@URTW_BB_HOST_BANG_CLK = common dso_local global i32 0, align 4
@URTW_BB_HOST_BANG_RW = common dso_local global i32 0, align 4
@URTW_RF_PINS_INPUT = common dso_local global i32 0, align 4
@URTW_RF_PINS_OUTPUT_MAGIC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32, i32*)* @urtw_8225_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8225_read(%struct.urtw_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
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
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 12, i32* %9, align 4
  store i32 6, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 31
  %21 = shl i32 %20, 27
  store i32 %21, i32* %15, align 4
  store i32 -2147483648, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %23 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %24 = call i32 @urtw_read16_m(%struct.urtw_softc* %22, i32 %23, i32* %11)
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %26 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %27 = call i32 @urtw_read16_m(%struct.urtw_softc* %25, i32 %26, i32* %12)
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %29 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %30 = call i32 @urtw_read16_m(%struct.urtw_softc* %28, i32 %29, i32* %13)
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %32 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @URTW_RF_PINS_MAGIC4, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @urtw_write16_m(%struct.urtw_softc* %31, i32 %32, i32 %35)
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %38 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @URTW_RF_PINS_MAGIC4, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @urtw_write16_m(%struct.urtw_softc* %37, i32 %38, i32 %41)
  %43 = load i32, i32* @URTW_RF_PINS_MAGIC4, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %48 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @URTW_BB_HOST_BANG_EN, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @urtw_write16_m(%struct.urtw_softc* %47, i32 %48, i32 %51)
  %53 = call i32 @DELAY(i32 5)
  %54 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %55 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @urtw_write16_m(%struct.urtw_softc* %54, i32 %55, i32 %56)
  %58 = call i32 @DELAY(i32 5)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %133, %3
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sdiv i32 %61, 2
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %138

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %8, align 4
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %72 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @urtw_write16_m(%struct.urtw_softc* %71, i32 %72, i32 %75)
  %77 = call i32 @DELAY(i32 2)
  %78 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %79 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @urtw_write16_m(%struct.urtw_softc* %78, i32 %79, i32 %84)
  %86 = call i32 @DELAY(i32 2)
  %87 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %88 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @urtw_write16_m(%struct.urtw_softc* %87, i32 %88, i32 %93)
  %95 = call i32 @DELAY(i32 2)
  %96 = load i32, i32* %16, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %64
  br label %138

101:                                              ; preds = %64
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  store i32 %107, i32* %8, align 4
  %108 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %109 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @urtw_write16_m(%struct.urtw_softc* %108, i32 %109, i32 %114)
  %116 = call i32 @DELAY(i32 2)
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %118 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @urtw_write16_m(%struct.urtw_softc* %117, i32 %118, i32 %123)
  %125 = call i32 @DELAY(i32 2)
  %126 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %127 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @urtw_write16_m(%struct.urtw_softc* %126, i32 %127, i32 %130)
  %132 = call i32 @DELAY(i32 1)
  br label %133

133:                                              ; preds = %101
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %16, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %59

138:                                              ; preds = %100, %59
  %139 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %140 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @urtw_write16_m(%struct.urtw_softc* %139, i32 %140, i32 %147)
  %149 = call i32 @DELAY(i32 2)
  %150 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %151 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @urtw_write16_m(%struct.urtw_softc* %150, i32 %151, i32 %156)
  %158 = call i32 @DELAY(i32 2)
  %159 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %160 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @urtw_write16_m(%struct.urtw_softc* %159, i32 %160, i32 %163)
  %165 = call i32 @DELAY(i32 2)
  store i32 2048, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %226, %138
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %231

170:                                              ; preds = %166
  %171 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %172 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @urtw_write16_m(%struct.urtw_softc* %171, i32 %172, i32 %175)
  %177 = call i32 @DELAY(i32 2)
  %178 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %179 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @urtw_write16_m(%struct.urtw_softc* %178, i32 %179, i32 %184)
  %186 = call i32 @DELAY(i32 2)
  %187 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %188 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @urtw_write16_m(%struct.urtw_softc* %187, i32 %188, i32 %193)
  %195 = call i32 @DELAY(i32 2)
  %196 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %197 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @urtw_write16_m(%struct.urtw_softc* %196, i32 %197, i32 %202)
  %204 = call i32 @DELAY(i32 2)
  %205 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %206 = load i32, i32* @URTW_RF_PINS_INPUT, align 4
  %207 = call i32 @urtw_read16_m(%struct.urtw_softc* %205, i32 %206, i32* %14)
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @URTW_BB_HOST_BANG_CLK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %170
  %213 = load i32, i32* %16, align 4
  br label %215

214:                                              ; preds = %170
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ]
  %217 = load i32, i32* %17, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %17, align 4
  %219 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %220 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @urtw_write16_m(%struct.urtw_softc* %219, i32 %220, i32 %223)
  %225 = call i32 @DELAY(i32 2)
  br label %226

226:                                              ; preds = %215
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %16, align 4
  %230 = ashr i32 %229, 1
  store i32 %230, i32* %16, align 4
  br label %166

231:                                              ; preds = %166
  %232 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %233 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @URTW_BB_HOST_BANG_EN, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @URTW_BB_HOST_BANG_RW, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @urtw_write16_m(%struct.urtw_softc* %232, i32 %233, i32 %238)
  %240 = call i32 @DELAY(i32 2)
  %241 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %242 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @urtw_write16_m(%struct.urtw_softc* %241, i32 %242, i32 %243)
  %245 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %246 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @urtw_write16_m(%struct.urtw_softc* %245, i32 %246, i32 %247)
  %249 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %250 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %251 = load i32, i32* @URTW_RF_PINS_OUTPUT_MAGIC1, align 4
  %252 = call i32 @urtw_write16_m(%struct.urtw_softc* %249, i32 %250, i32 %251)
  %253 = load i32*, i32** %6, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %231
  %256 = load i32, i32* %17, align 4
  %257 = load i32*, i32** %6, align 8
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %231
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %18, align 4
  ret i32 %260
}

declare dso_local i32 @urtw_read16_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
