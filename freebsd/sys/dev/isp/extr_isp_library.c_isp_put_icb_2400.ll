; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_put_icb_2400.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_put_icb_2400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_put_icb_2400(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 34
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 34
  %14 = call i32 @ISP_IOXPUT_16(i32* %8, i32 %11, i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 33
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 33
  %21 = call i32 @ISP_IOXPUT_16(i32* %15, i32 %18, i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 32
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 32
  %28 = call i32 @ISP_IOXPUT_16(i32* %22, i32 %25, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 31
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 31
  %35 = call i32 @ISP_IOXPUT_16(i32* %29, i32 %32, i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 30
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 30
  %42 = call i32 @ISP_IOXPUT_16(i32* %36, i32 %39, i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 29
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 29
  %49 = call i32 @ISP_IOXPUT_16(i32* %43, i32 %46, i32* %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %69, %3
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 28
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 28
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @ISP_IOXPUT_8(i32* %54, i32 %61, i32* %67)
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 27
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 27
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @ISP_IOXPUT_8(i32* %77, i32 %84, i32* %90)
  br label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %73

95:                                               ; preds = %73
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 26
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 26
  %102 = call i32 @ISP_IOXPUT_16(i32* %96, i32 %99, i32* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 25
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 25
  %109 = call i32 @ISP_IOXPUT_16(i32* %103, i32 %106, i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 24
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 24
  %116 = call i32 @ISP_IOXPUT_16(i32* %110, i32 %113, i32* %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 23
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 23
  %123 = call i32 @ISP_IOXPUT_16(i32* %117, i32 %120, i32* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 22
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 22
  %130 = call i32 @ISP_IOXPUT_16(i32* %124, i32 %127, i32* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 21
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 21
  %137 = call i32 @ISP_IOXPUT_16(i32* %131, i32 %134, i32* %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 20
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 20
  %144 = call i32 @ISP_IOXPUT_16(i32* %138, i32 %141, i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 19
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 19
  %151 = call i32 @ISP_IOXPUT_16(i32* %145, i32 %148, i32* %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %171, %95
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %174

155:                                              ; preds = %152
  %156 = load i32*, i32** %4, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 18
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 18
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i32 @ISP_IOXPUT_16(i32* %156, i32 %163, i32* %169)
  br label %171

171:                                              ; preds = %155
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %152

174:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %194, %174
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 4
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 17
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 17
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i32 @ISP_IOXPUT_16(i32* %179, i32 %186, i32* %192)
  br label %194

194:                                              ; preds = %178
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %175

197:                                              ; preds = %175
  store i32 0, i32* %7, align 4
  br label %198

198:                                              ; preds = %217, %197
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load i32*, i32** %4, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 16
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 16
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32 @ISP_IOXPUT_16(i32* %202, i32 %209, i32* %215)
  br label %217

217:                                              ; preds = %201
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %198

220:                                              ; preds = %198
  %221 = load i32*, i32** %4, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 15
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 15
  %227 = call i32 @ISP_IOXPUT_16(i32* %221, i32 %224, i32* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 14
  %234 = call i32 @ISP_IOXPUT_16(i32* %228, i32 %231, i32* %233)
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %254, %220
  %236 = load i32, i32* %7, align 4
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %238, label %257

238:                                              ; preds = %235
  %239 = load i32*, i32** %4, align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 13
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 13
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = call i32 @ISP_IOXPUT_16(i32* %239, i32 %246, i32* %252)
  br label %254

254:                                              ; preds = %238
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %7, align 4
  br label %235

257:                                              ; preds = %235
  %258 = load i32*, i32** %4, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 12
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 12
  %264 = call i32 @ISP_IOXPUT_16(i32* %258, i32 %261, i32* %263)
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 11
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 11
  %271 = call i32 @ISP_IOXPUT_16(i32* %265, i32 %268, i32* %270)
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %291, %257
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 4
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = load i32*, i32** %4, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 10
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 10
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = call i32 @ISP_IOXPUT_16(i32* %276, i32 %283, i32* %289)
  br label %291

291:                                              ; preds = %275
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %272

294:                                              ; preds = %272
  %295 = load i32*, i32** %4, align 8
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 9
  %301 = call i32 @ISP_IOXPUT_16(i32* %295, i32 %298, i32* %300)
  %302 = load i32*, i32** %4, align 8
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 8
  %308 = call i32 @ISP_IOXPUT_16(i32* %302, i32 %305, i32* %307)
  %309 = load i32*, i32** %4, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 7
  %315 = call i32 @ISP_IOXPUT_32(i32* %309, i32 %312, i32* %314)
  %316 = load i32*, i32** %4, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 6
  %322 = call i32 @ISP_IOXPUT_32(i32* %316, i32 %319, i32* %321)
  %323 = load i32*, i32** %4, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 5
  %329 = call i32 @ISP_IOXPUT_32(i32* %323, i32 %326, i32* %328)
  %330 = load i32*, i32** %4, align 8
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 4
  %336 = call i32 @ISP_IOXPUT_16(i32* %330, i32 %333, i32* %335)
  store i32 0, i32* %7, align 4
  br label %337

337:                                              ; preds = %356, %294
  %338 = load i32, i32* %7, align 4
  %339 = icmp slt i32 %338, 3
  br i1 %339, label %340, label %359

340:                                              ; preds = %337
  %341 = load i32*, i32** %4, align 8
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 3
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %7, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 3
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = call i32 @ISP_IOXPUT_16(i32* %341, i32 %348, i32* %354)
  br label %356

356:                                              ; preds = %340
  %357 = load i32, i32* %7, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %7, align 4
  br label %337

359:                                              ; preds = %337
  store i32 0, i32* %7, align 4
  br label %360

360:                                              ; preds = %379, %359
  %361 = load i32, i32* %7, align 4
  %362 = icmp slt i32 %361, 3
  br i1 %362, label %363, label %382

363:                                              ; preds = %360
  %364 = load i32*, i32** %4, align 8
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %7, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = call i32 @ISP_IOXPUT_16(i32* %364, i32 %371, i32* %377)
  br label %379

379:                                              ; preds = %363
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  br label %360

382:                                              ; preds = %360
  %383 = load i32*, i32** %4, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 1
  %389 = call i32 @ISP_IOXPUT_16(i32* %383, i32 %386, i32* %388)
  store i32 0, i32* %7, align 4
  br label %390

390:                                              ; preds = %409, %382
  %391 = load i32, i32* %7, align 4
  %392 = icmp slt i32 %391, 4
  br i1 %392, label %393, label %412

393:                                              ; preds = %390
  %394 = load i32*, i32** %4, align 8
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = call i32 @ISP_IOXPUT_16(i32* %394, i32 %401, i32* %407)
  br label %409

409:                                              ; preds = %393
  %410 = load i32, i32* %7, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %7, align 4
  br label %390

412:                                              ; preds = %390
  ret void
}

declare dso_local i32 @ISP_IOXPUT_16(i32*, i32, i32*) #1

declare dso_local i32 @ISP_IOXPUT_8(i32*, i32, i32*) #1

declare dso_local i32 @ISP_IOXPUT_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
