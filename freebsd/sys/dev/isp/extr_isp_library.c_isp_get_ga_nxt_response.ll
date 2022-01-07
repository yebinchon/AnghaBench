; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_ga_nxt_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_get_ga_nxt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_get_ga_nxt_response(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 15
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 15
  %13 = call i32 @isp_get_ct_hdr(i32* %8, i32* %10, i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 14
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ISP_IOZGET_8(i32* %14, i32* %16, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 13
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 13
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ISP_IOZGET_8(i32* %25, i32* %31, i32 %38)
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 12
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 12
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ISP_IOZGET_8(i32* %48, i32* %54, i32 %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 11
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ISP_IOZGET_8(i32* %67, i32* %69, i32 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %93, %66
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 255
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 10
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 10
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ISP_IOZGET_8(i32* %78, i32* %84, i32 %91)
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %74

96:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 8
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 9
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 9
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ISP_IOZGET_8(i32* %101, i32* %107, i32 %114)
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %97

119:                                              ; preds = %97
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ISP_IOZGET_8(i32* %120, i32* %122, i32 %125)
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %146, %119
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 255
  br i1 %129, label %130, label %149

130:                                              ; preds = %127
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ISP_IOZGET_8(i32* %131, i32* %137, i32 %144)
  br label %146

146:                                              ; preds = %130
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %127

149:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %169, %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ISP_IOZGET_8(i32* %154, i32* %160, i32 %167)
  br label %169

169:                                              ; preds = %153
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %150

172:                                              ; preds = %150
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %192, %172
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 16
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ISP_IOZGET_8(i32* %177, i32* %183, i32 %190)
  br label %192

192:                                              ; preds = %176
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %173

195:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %215, %195
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %218

199:                                              ; preds = %196
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ISP_IOZGET_8(i32* %200, i32* %206, i32 %213)
  br label %215

215:                                              ; preds = %199
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %196

218:                                              ; preds = %196
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %238, %218
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %220, 32
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  %223 = load i32*, i32** %4, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ISP_IOZGET_8(i32* %223, i32* %229, i32 %236)
  br label %238

238:                                              ; preds = %222
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %7, align 4
  br label %219

241:                                              ; preds = %219
  store i32 0, i32* %7, align 4
  br label %242

242:                                              ; preds = %261, %241
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 8
  br i1 %244, label %245, label %264

245:                                              ; preds = %242
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ISP_IOZGET_8(i32* %246, i32* %252, i32 %259)
  br label %261

261:                                              ; preds = %245
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %242

264:                                              ; preds = %242
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @ISP_IOZGET_8(i32* %265, i32* %267, i32 %270)
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %291, %264
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 3
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = load i32*, i32** %4, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @ISP_IOZGET_8(i32* %276, i32* %282, i32 %289)
  br label %291

291:                                              ; preds = %275
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %272

294:                                              ; preds = %272
  ret void
}

declare dso_local i32 @isp_get_ct_hdr(i32*, i32*, i32*) #1

declare dso_local i32 @ISP_IOZGET_8(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
