; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_plasma_saver.c_plasma_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_plasma_saver.c_plasma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@scrh = common dso_local global i32 0, align 4
@scrw = common dso_local global i32 0, align 4
@FOCI = common dso_local global i32 0, align 4
@plasma_foci = common dso_local global %struct.TYPE_2__* null, align 8
@banksize = common dso_local global i32 0, align 4
@vid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @plasma_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plasma_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @vidd_set_win_org(i32* %13, i32 0)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %101, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @scrh, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %95, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @scrw, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FOCI, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %30, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %38, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = call i32 @ItoFP16(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @fp16_sqrt(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 4
  %59 = call i32 @fp16_cos(i32 %58)
  %60 = call i32 @fp16_sub(i32 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %29
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ItoFP16(i32 127)
  %67 = call i32 @fp16_mul(i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @FOCI, align 4
  %70 = call i32 @ItoFP16(i32 %69)
  %71 = call i32 @fp16_div(i32 %68, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ItoFP16(i32 127)
  %74 = call i32 @fp16_add(i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @banksize, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %64
  %79 = load i32, i32* @banksize, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @banksize, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @vidd_set_win_org(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %64
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @FP16toI(i32 %89)
  %91 = load i32*, i32** @vid, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %20

100:                                              ; preds = %20
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %15

104:                                              ; preds = %15
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %278, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @FOCI, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %281

109:                                              ; preds = %105
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, %115
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ult i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %109
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 0, %136
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %139 = load i32, i32* %12, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  store i32 %137, i32* %142, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %144 = load i32, i32* %12, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 0, %148
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 4
  br label %193

155:                                              ; preds = %109
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %157 = load i32, i32* %12, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @scrw, align 4
  %163 = icmp uge i32 %161, %162
  br i1 %163, label %164, label %192

164:                                              ; preds = %155
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %166 = load i32, i32* %12, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 0, %170
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %173 = load i32, i32* %12, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* @scrw, align 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %179 = load i32, i32* %12, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @scrw, align 4
  %185 = sub i32 %183, %184
  %186 = sub i32 %177, %185
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %188 = load i32, i32* %12, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 4
  br label %192

192:                                              ; preds = %164, %155
  br label %193

193:                                              ; preds = %192, %130
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %195 = load i32, i32* %12, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %201 = load i32, i32* %12, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add i32 %205, %199
  store i32 %206, i32* %204, align 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %208 = load i32, i32* %12, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ult i32 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %193
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %216 = load i32, i32* %12, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = sub i32 0, %220
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %223 = load i32, i32* %12, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  store i32 %221, i32* %226, align 4
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %228 = load i32, i32* %12, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sub i32 0, %232
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %235 = load i32, i32* %12, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  store i32 %233, i32* %238, align 4
  br label %277

239:                                              ; preds = %193
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %241 = load i32, i32* %12, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @scrh, align 4
  %247 = icmp uge i32 %245, %246
  br i1 %247, label %248, label %276

248:                                              ; preds = %239
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %250 = load i32, i32* %12, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = sub i32 0, %254
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %257 = load i32, i32* %12, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  store i32 %255, i32* %260, align 4
  %261 = load i32, i32* @scrh, align 4
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %263 = load i32, i32* %12, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @scrh, align 4
  %269 = sub i32 %267, %268
  %270 = sub i32 %261, %269
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plasma_foci, align 8
  %272 = load i32, i32* %12, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  store i32 %270, i32* %275, align 4
  br label %276

276:                                              ; preds = %248, %239
  br label %277

277:                                              ; preds = %276, %214
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %12, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %105

281:                                              ; preds = %105
  ret void
}

declare dso_local i32 @vidd_set_win_org(i32*, i32) #1

declare dso_local i32 @ItoFP16(i32) #1

declare dso_local i32 @fp16_sqrt(i32) #1

declare dso_local i32 @fp16_sub(i32, i32) #1

declare dso_local i32 @fp16_cos(i32) #1

declare dso_local i32 @fp16_mul(i32, i32) #1

declare dso_local i32 @fp16_div(i32, i32) #1

declare dso_local i32 @fp16_add(i32, i32) #1

declare dso_local i32 @FP16toI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
