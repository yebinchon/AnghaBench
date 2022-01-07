; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_put_icb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_put_icb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_put_icb(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ISP_IS_SBUS(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 27
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 26
  %18 = call i32 @ISP_IOXPUT_8(i32* %12, i32 %15, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 27
  %25 = call i32 @ISP_IOXPUT_8(i32* %19, i32 %22, i32* %24)
  br label %41

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 27
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 27
  %33 = call i32 @ISP_IOXPUT_8(i32* %27, i32 %30, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 26
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 26
  %40 = call i32 @ISP_IOXPUT_8(i32* %34, i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %26, %11
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 25
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 25
  %48 = call i32 @ISP_IOXPUT_16(i32* %42, i32 %45, i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 24
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 24
  %55 = call i32 @ISP_IOXPUT_16(i32* %49, i32 %52, i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 23
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 23
  %62 = call i32 @ISP_IOXPUT_16(i32* %56, i32 %59, i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 22
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 22
  %69 = call i32 @ISP_IOXPUT_16(i32* %63, i32 %66, i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @ISP_IS_SBUS(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %41
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 21
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 20
  %80 = call i32 @ISP_IOXPUT_8(i32* %74, i32 %77, i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 21
  %87 = call i32 @ISP_IOXPUT_8(i32* %81, i32 %84, i32* %86)
  br label %103

88:                                               ; preds = %41
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 21
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 21
  %95 = call i32 @ISP_IOXPUT_8(i32* %89, i32 %92, i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 20
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 20
  %102 = call i32 @ISP_IOXPUT_8(i32* %96, i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %88, %73
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %123, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 19
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 19
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @ISP_IOXPUT_8(i32* %108, i32 %115, i32* %121)
  br label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %104

126:                                              ; preds = %104
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 18
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 18
  %133 = call i32 @ISP_IOXPUT_16(i32* %127, i32 %130, i32* %132)
  %134 = load i32*, i32** %4, align 8
  %135 = call i64 @ISP_IS_SBUS(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %126
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 16
  %144 = call i32 @ISP_IOXPUT_8(i32* %138, i32 %141, i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 16
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 17
  %151 = call i32 @ISP_IOXPUT_8(i32* %145, i32 %148, i32* %150)
  br label %167

152:                                              ; preds = %126
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 17
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 17
  %159 = call i32 @ISP_IOXPUT_8(i32* %153, i32 %156, i32* %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 16
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 16
  %166 = call i32 @ISP_IOXPUT_8(i32* %160, i32 %163, i32* %165)
  br label %167

167:                                              ; preds = %152, %137
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i32, i32* %7, align 4
  %170 = icmp slt i32 %169, 8
  br i1 %170, label %171, label %190

171:                                              ; preds = %168
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 15
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 15
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @ISP_IOXPUT_8(i32* %172, i32 %179, i32* %185)
  br label %187

187:                                              ; preds = %171
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %168

190:                                              ; preds = %168
  %191 = load i32*, i32** %4, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 14
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 14
  %197 = call i32 @ISP_IOXPUT_16(i32* %191, i32 %194, i32* %196)
  %198 = load i32*, i32** %4, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 13
  %204 = call i32 @ISP_IOXPUT_16(i32* %198, i32 %201, i32* %203)
  %205 = load i32*, i32** %4, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 12
  %211 = call i32 @ISP_IOXPUT_16(i32* %205, i32 %208, i32* %210)
  %212 = load i32*, i32** %4, align 8
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 11
  %218 = call i32 @ISP_IOXPUT_16(i32* %212, i32 %215, i32* %217)
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %238, %190
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %220, 4
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  %223 = load i32*, i32** %4, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 10
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 10
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = call i32 @ISP_IOXPUT_16(i32* %223, i32 %230, i32* %236)
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
  %244 = icmp slt i32 %243, 4
  br i1 %244, label %245, label %264

245:                                              ; preds = %242
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 9
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = call i32 @ISP_IOXPUT_16(i32* %246, i32 %253, i32* %259)
  br label %261

261:                                              ; preds = %245
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %242

264:                                              ; preds = %242
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 8
  %271 = call i32 @ISP_IOXPUT_16(i32* %265, i32 %268, i32* %270)
  %272 = load i32*, i32** %4, align 8
  %273 = call i64 @ISP_IS_SBUS(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %264
  %276 = load i32*, i32** %4, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 6
  %282 = call i32 @ISP_IOXPUT_8(i32* %276, i32 %279, i32* %281)
  %283 = load i32*, i32** %4, align 8
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 7
  %289 = call i32 @ISP_IOXPUT_8(i32* %283, i32 %286, i32* %288)
  br label %305

290:                                              ; preds = %264
  %291 = load i32*, i32** %4, align 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 7
  %297 = call i32 @ISP_IOXPUT_8(i32* %291, i32 %294, i32* %296)
  %298 = load i32*, i32** %4, align 8
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 6
  %304 = call i32 @ISP_IOXPUT_8(i32* %298, i32 %301, i32* %303)
  br label %305

305:                                              ; preds = %290, %275
  %306 = load i32*, i32** %4, align 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 5
  %312 = call i32 @ISP_IOXPUT_16(i32* %306, i32 %309, i32* %311)
  %313 = load i32*, i32** %4, align 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 4
  %319 = call i32 @ISP_IOXPUT_16(i32* %313, i32 %316, i32* %318)
  %320 = load i32*, i32** %4, align 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 3
  %326 = call i32 @ISP_IOXPUT_16(i32* %320, i32 %323, i32* %325)
  %327 = load i32*, i32** %4, align 8
  %328 = call i64 @ISP_IS_SBUS(i32* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %305
  %331 = load i32*, i32** %4, align 8
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = call i32 @ISP_IOXPUT_8(i32* %331, i32 %334, i32* %336)
  %338 = load i32*, i32** %4, align 8
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 2
  %344 = call i32 @ISP_IOXPUT_8(i32* %338, i32 %341, i32* %343)
  br label %360

345:                                              ; preds = %305
  %346 = load i32*, i32** %4, align 8
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 2
  %352 = call i32 @ISP_IOXPUT_8(i32* %346, i32 %349, i32* %351)
  %353 = load i32*, i32** %4, align 8
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  %359 = call i32 @ISP_IOXPUT_8(i32* %353, i32 %356, i32* %358)
  br label %360

360:                                              ; preds = %345, %330
  %361 = load i32*, i32** %4, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = call i32 @ISP_IOXPUT_16(i32* %361, i32 %364, i32* %366)
  ret void
}

declare dso_local i64 @ISP_IS_SBUS(i32*) #1

declare dso_local i32 @ISP_IOXPUT_8(i32*, i32, i32*) #1

declare dso_local i32 @ISP_IOXPUT_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
