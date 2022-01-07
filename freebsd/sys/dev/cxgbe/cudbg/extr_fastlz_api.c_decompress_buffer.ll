; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_decompress_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_decompress_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i64, i64 }

@CUDBG_MIN_COMPR_LEN = common dso_local global i32 0, align 4
@CUDBG_BLOCK_SIZE = common dso_local global i32 0, align 4
@CUDBG_STATUS_SMALL_BUFF = common dso_local global i32 0, align 4
@CUDBG_STATUS_CHKSUM_MISSMATCH = common dso_local global i32 0, align 4
@CUDBG_STATUS_DECOMPRESS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_buffer(%struct.cudbg_buffer* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cudbg_buffer*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_buffer, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  %25 = load i32, i32* @CUDBG_MIN_COMPR_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %20, align 8
  %29 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %33 = mul nsw i32 2, %32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @CUDBG_STATUS_SMALL_BUFF, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

37:                                               ; preds = %2
  %38 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %39 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %38, i64 %40, %struct.cudbg_buffer* %6)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %292

45:                                               ; preds = %37
  %46 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %47 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %46, i64 %48, %struct.cudbg_buffer* %7)
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* %23, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %289

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %6, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %8, align 8
  %57 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %284, %53
  %61 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %65 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %285

70:                                               ; preds = %60
  %71 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %72 = call i32 @read_chunk_header(%struct.cudbg_buffer* %71, i32* %21, i32* %22, i64* %12, i64* %13, i64* %14)
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %285

76:                                               ; preds = %70
  %77 = load i32, i32* %21, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %135

79:                                               ; preds = %76
  %80 = load i64, i64* %12, align 8
  %81 = icmp ugt i64 %80, 10
  br i1 %81, label %82, label %135

82:                                               ; preds = %79
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %82
  %88 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %89 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %96 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %95, i32 0, i32 1
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @read_from_buf(i64 %90, i64 %94, i64* %96, i8* %28, i64 %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

102:                                              ; preds = %87
  %103 = load i64, i64* %12, align 8
  %104 = call i64 @update_adler32(i64 1, i8* %28, i64 %103)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @CUDBG_STATUS_CHKSUM_MISSMATCH, align 4
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

110:                                              ; preds = %102
  %111 = call i64 @readU32(i8* %28)
  store i64 %111, i64* %20, align 8
  %112 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %113 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %20, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %110
  %119 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %120 = mul nsw i32 2, %119
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %20, align 8
  %123 = add nsw i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %126 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 16
  %129 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %130 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* @CUDBG_STATUS_SMALL_BUFF, align 4
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

134:                                              ; preds = %110
  store i64 0, i64* %16, align 8
  br label %135

135:                                              ; preds = %134, %82, %79, %76
  %136 = load i64, i64* %12, align 8
  %137 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ugt i64 %136, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %142 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %141)
  %143 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %144 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %6, %struct.cudbg_buffer* %143)
  %145 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %145, i64 %146, %struct.cudbg_buffer* %6)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %292

151:                                              ; preds = %140
  %152 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %152, i64 %153, %struct.cudbg_buffer* %7)
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %289

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %6, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i8*
  store i8* %161, i8** %8, align 8
  %162 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %9, align 8
  br label %165

165:                                              ; preds = %158, %135
  %166 = load i32, i32* %21, align 4
  %167 = icmp eq i32 %166, 17
  br i1 %167, label %168, label %284

168:                                              ; preds = %165
  %169 = load i64, i64* %20, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %284

171:                                              ; preds = %168
  %172 = load i32, i32* %22, align 4
  switch i32 %172, label %282 [
    i32 0, label %173
    i32 1, label %228
  ]

173:                                              ; preds = %171
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %16, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %16, align 8
  %177 = load i64, i64* %12, align 8
  store i64 %177, i64* %18, align 8
  store i64 1, i64* %15, align 8
  br label %178

178:                                              ; preds = %227, %173
  %179 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %18, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %185 = sext i32 %184 to i64
  br label %188

186:                                              ; preds = %178
  %187 = load i64, i64* %18, align 8
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i64 [ %185, %183 ], [ %187, %186 ]
  store i64 %189, i64* %17, align 8
  %190 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %191 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %194 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %198 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %197, i32 0, i32 1
  %199 = load i64, i64* %17, align 8
  %200 = call i64 @read_from_buf(i64 %192, i64 %196, i64* %198, i8* %28, i64 %199)
  store i64 %200, i64* %19, align 8
  %201 = load i64, i64* %19, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

204:                                              ; preds = %188
  %205 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %206 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %209 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %213 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %212, i32 0, i32 1
  %214 = load i64, i64* %19, align 8
  %215 = call i32 @write_to_buf(i64 %207, i64 %211, i64* %213, i8* %28, i64 %214)
  %216 = load i64, i64* %15, align 8
  %217 = load i64, i64* %19, align 8
  %218 = call i64 @update_adler32(i64 %216, i8* %28, i64 %217)
  store i64 %218, i64* %15, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %18, align 8
  %221 = sub i64 %220, %219
  store i64 %221, i64* %18, align 8
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* %13, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %204
  %226 = load i32, i32* @CUDBG_STATUS_CHKSUM_MISSMATCH, align 4
  store i32 %226, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

227:                                              ; preds = %204
  br label %178

228:                                              ; preds = %171
  %229 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %230 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %233 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %237 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %236, i32 0, i32 1
  %238 = load i8*, i8** %8, align 8
  %239 = load i64, i64* %12, align 8
  %240 = call i64 @read_from_buf(i64 %231, i64 %235, i64* %237, i8* %238, i64 %239)
  store i64 %240, i64* %19, align 8
  %241 = load i64, i64* %19, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

244:                                              ; preds = %228
  %245 = load i8*, i8** %8, align 8
  %246 = load i64, i64* %12, align 8
  %247 = call i64 @update_adler32(i64 1, i8* %245, i64 %246)
  store i64 %247, i64* %15, align 8
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* %16, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %16, align 8
  %251 = load i64, i64* %15, align 8
  %252 = load i64, i64* %13, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %244
  %255 = load i32, i32* @CUDBG_STATUS_CHKSUM_MISSMATCH, align 4
  store i32 %255, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

256:                                              ; preds = %244
  %257 = load i8*, i8** %8, align 8
  %258 = load i64, i64* %12, align 8
  %259 = load i8*, i8** %9, align 8
  %260 = load i64, i64* %14, align 8
  %261 = call i64 @fastlz_decompress(i8* %257, i64 %258, i8* %259, i64 %260)
  store i64 %261, i64* %18, align 8
  %262 = load i64, i64* %18, align 8
  %263 = load i64, i64* %14, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = load i32, i32* @CUDBG_STATUS_DECOMPRESS_FAIL, align 4
  store i32 %266, i32* %23, align 4
  br label %286

267:                                              ; preds = %256
  %268 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %269 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %272 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %276 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %275, i32 0, i32 1
  %277 = load i8*, i8** %9, align 8
  %278 = load i64, i64* %14, align 8
  %279 = call i32 @write_to_buf(i64 %270, i64 %274, i64* %276, i8* %277, i64 %278)
  br label %280

280:                                              ; preds = %267
  br label %281

281:                                              ; preds = %280
  br label %283

282:                                              ; preds = %171
  br label %283

283:                                              ; preds = %282, %281
  br label %284

284:                                              ; preds = %283, %168, %165
  br label %60

285:                                              ; preds = %75, %69
  br label %286

286:                                              ; preds = %285, %265
  %287 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %288 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %287)
  br label %289

289:                                              ; preds = %286, %157, %52
  %290 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %291 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %6, %struct.cudbg_buffer* %290)
  br label %292

292:                                              ; preds = %289, %150, %44
  %293 = load i32, i32* %23, align 4
  store i32 %293, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %294

294:                                              ; preds = %292, %254, %243, %225, %203, %118, %108, %101, %35
  %295 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %295)
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i64, %struct.cudbg_buffer*) #2

declare dso_local i32 @read_chunk_header(%struct.cudbg_buffer*, i32*, i32*, i64*, i64*, i64*) #2

declare dso_local i64 @read_from_buf(i64, i64, i64*, i8*, i64) #2

declare dso_local i64 @update_adler32(i64, i8*, i64) #2

declare dso_local i64 @readU32(i8*) #2

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

declare dso_local i32 @write_to_buf(i64, i64, i64*, i8*, i64) #2

declare dso_local i64 @fastlz_decompress(i8*, i64, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
