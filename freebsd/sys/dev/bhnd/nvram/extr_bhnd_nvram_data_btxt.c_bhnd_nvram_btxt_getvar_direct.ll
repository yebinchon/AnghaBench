; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_getvar_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_getvar_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"buf position invalid (%zu > %zu)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buf length invalid (%zu > %zu\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"offset overrun\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"empty buffer!\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"cannot parse value for '%s' (exceeds %zu byte limit)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"value buf overrun\00", align 1
@BHND_NVRAM_TYPE_STRING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i8*, i8*, i64*, i32)* @bhnd_nvram_btxt_getvar_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_getvar_direct(%struct.bhnd_nvram_io* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %28 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %27)
  store i64 %28, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 131, i32* %13, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %31

31:                                               ; preds = %320, %5
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %17, align 8
  %34 = sub i64 %32, %33
  %35 = load i64, i64* %14, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %321

37:                                               ; preds = %31
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ule i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %16, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @BHND_NV_ASSERT(i32 %41, i8* %44)
  %46 = load i64, i64* %16, align 8
  %47 = icmp ule i64 %46, 512
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %16, align 8
  %50 = call i32 @BHND_NV_ASSERT(i32 %48, i8* inttoptr (i64 512 to i8*))
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %17, align 8
  %53 = sub i64 %51, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %37
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ult i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BHND_NV_ASSERT(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub i64 %61, %62
  %64 = call i64 @bhnd_nv_ummin(i32 512, i64 %63)
  store i64 %64, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %65 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %65, i64 %66, i8* %67, i64 %68)
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %21, align 4
  store i32 %73, i32* %6, align 4
  br label %323

74:                                               ; preds = %55
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %74, %37
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %320 [
    i32 131, label %80
    i32 133, label %120
    i32 132, label %154
    i32 130, label %170
    i32 128, label %200
    i32 129, label %287
  ]

80:                                               ; preds = %78
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp ult i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @BHND_NV_ASSERT(i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %19, align 8
  br label %86

86:                                               ; preds = %98, %80
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @bhnd_nv_isspace(i8 signext %93)
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i64, i64* %17, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %17, align 8
  br label %86

101:                                              ; preds = %96
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* %16, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 131, i32* %13, align 4
  br label %119

106:                                              ; preds = %101
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %16, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 35
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 130, i32* %13, align 4
  br label %118

117:                                              ; preds = %110, %106
  store i32 133, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %116
  br label %119

119:                                              ; preds = %118, %105
  br label %320

120:                                              ; preds = %78
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %19, align 8
  %123 = sub i64 %121, %122
  store i64 %123, i64* %23, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %17, align 8
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %23, align 8
  %129 = call i64 @bhnd_nv_ummin(i32 %127, i64 %128)
  store i64 %129, i64* %22, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %19, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %134 = load i64, i64* %17, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i64, i64* %22, align 8
  %137 = call i32 @strncmp(i8* %132, i8* %135, i64 %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %120
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %19, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %19, align 8
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %17, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %17, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* %18, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  store i32 132, i32* %13, align 4
  br label %151

150:                                              ; preds = %139
  store i32 133, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %149
  br label %153

152:                                              ; preds = %120
  store i32 130, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %151
  br label %320

154:                                              ; preds = %78
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %16, align 8
  %157 = icmp ult i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @BHND_NV_ASSERT(i32 %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i64, i64* %17, align 8
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 61
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load i64, i64* %17, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %17, align 8
  store i32 128, i32* %13, align 4
  br label %169

168:                                              ; preds = %154
  store i32 130, i32* %13, align 4
  br label %169

169:                                              ; preds = %168, %165
  br label %320

170:                                              ; preds = %78
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %172 = load i64, i64* %17, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i64, i64* %16, align 8
  %175 = load i64, i64* %17, align 8
  %176 = sub i64 %174, %175
  %177 = call i8* @memchr(i8* %173, i8 signext 10, i64 %176)
  store i8* %177, i8** %24, align 8
  %178 = load i8*, i8** %24, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %170
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %182 = load i64, i64* %17, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* %17, align 8
  %186 = sub i64 %184, %185
  %187 = call i8* @memchr(i8* %183, i8 signext 13, i64 %186)
  store i8* %187, i8** %24, align 8
  br label %188

188:                                              ; preds = %180, %170
  %189 = load i8*, i8** %24, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  store i32 131, i32* %13, align 4
  %192 = load i8*, i8** %24, align 8
  %193 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  store i64 %196, i64* %17, align 8
  br label %199

197:                                              ; preds = %188
  store i32 130, i32* %13, align 4
  %198 = load i64, i64* %16, align 8
  store i64 %198, i64* %17, align 8
  br label %199

199:                                              ; preds = %197, %191
  br label %320

200:                                              ; preds = %78
  %201 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %202 = load i64, i64* %17, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* %17, align 8
  %206 = sub i64 %204, %205
  %207 = call i8* @memchr(i8* %203, i8 signext 10, i64 %206)
  store i8* %207, i8** %25, align 8
  %208 = load i8*, i8** %25, align 8
  %209 = icmp eq i8* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %200
  %211 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i64, i64* %16, align 8
  %215 = load i64, i64* %17, align 8
  %216 = sub i64 %214, %215
  %217 = call i8* @memchr(i8* %213, i8 signext 13, i64 %216)
  store i8* %217, i8** %25, align 8
  br label %218

218:                                              ; preds = %210, %200
  %219 = load i8*, i8** %25, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i8*, i8** %25, align 8
  %223 = load i64, i64* %17, align 8
  %224 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %223
  %225 = ptrtoint i8* %222 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  store i64 %227, i64* %20, align 8
  store i32 129, i32* %13, align 4
  br label %286

228:                                              ; preds = %218
  %229 = load i8*, i8** %25, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i64, i64* %15, align 8
  %233 = load i64, i64* %14, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i64, i64* %16, align 8
  %237 = load i64, i64* %17, align 8
  %238 = sub i64 %236, %237
  store i64 %238, i64* %20, align 8
  store i32 129, i32* %13, align 4
  br label %285

239:                                              ; preds = %231, %228
  %240 = load i8*, i8** %25, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %280

242:                                              ; preds = %239
  %243 = load i64, i64* %17, align 8
  %244 = icmp ugt i64 %243, 0
  br i1 %244, label %245, label %280

245:                                              ; preds = %242
  %246 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %247 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %248 = load i64, i64* %17, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i64, i64* %16, align 8
  %251 = load i64, i64* %17, align 8
  %252 = sub i64 %250, %251
  %253 = call i32 @memmove(i8* %246, i8* %249, i64 %252)
  %254 = load i64, i64* %17, align 8
  store i64 %254, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %255 = load i64, i64* %16, align 8
  %256 = sub i64 512, %255
  %257 = trunc i64 %256 to i32
  %258 = load i64, i64* %14, align 8
  %259 = load i64, i64* %15, align 8
  %260 = sub i64 %258, %259
  %261 = call i64 @bhnd_nv_ummin(i32 %257, i64 %260)
  store i64 %261, i64* %26, align 8
  %262 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %263 = load i64, i64* %15, align 8
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %265 = load i64, i64* %16, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = load i64, i64* %26, align 8
  %268 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %262, i64 %263, i8* %266, i64 %267)
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %21, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %245
  %272 = load i32, i32* %21, align 4
  store i32 %272, i32* %6, align 4
  br label %323

273:                                              ; preds = %245
  %274 = load i64, i64* %26, align 8
  %275 = load i64, i64* %15, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %15, align 8
  %277 = load i64, i64* %26, align 8
  %278 = load i64, i64* %16, align 8
  %279 = add i64 %278, %277
  store i64 %279, i64* %16, align 8
  br label %284

280:                                              ; preds = %242, %239
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %281, i32 512)
  %283 = load i32, i32* @ENXIO, align 4
  store i32 %283, i32* %6, align 4
  br label %323

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284, %235
  br label %286

286:                                              ; preds = %285, %221
  br label %320

287:                                              ; preds = %78
  %288 = load i64, i64* %20, align 8
  %289 = load i64, i64* %16, align 8
  %290 = icmp ule i64 %288, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 @BHND_NV_ASSERT(i32 %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %293

293:                                              ; preds = %307, %287
  %294 = load i64, i64* %20, align 8
  %295 = icmp ugt i64 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  %297 = load i64, i64* %17, align 8
  %298 = load i64, i64* %20, align 8
  %299 = add i64 %297, %298
  %300 = sub i64 %299, 1
  %301 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = call i32 @bhnd_nv_isspace(i8 signext %302)
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %296, %293
  %306 = phi i1 [ false, %293 ], [ %304, %296 ]
  br i1 %306, label %307, label %310

307:                                              ; preds = %305
  %308 = load i64, i64* %20, align 8
  %309 = add i64 %308, -1
  store i64 %309, i64* %20, align 8
  br label %293

310:                                              ; preds = %305
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %312 = load i64, i64* %17, align 8
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  %314 = load i64, i64* %20, align 8
  %315 = load i32, i32* @BHND_NVRAM_TYPE_STRING, align 4
  %316 = load i8*, i8** %9, align 8
  %317 = load i64*, i64** %10, align 8
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @bhnd_nvram_value_coerce(i8* %313, i64 %314, i32 %315, i8* %316, i64* %317, i32 %318)
  store i32 %319, i32* %6, align 4
  br label %323

320:                                              ; preds = %78, %286, %199, %169, %153, %119
  br label %31

321:                                              ; preds = %31
  %322 = load i32, i32* @ENOENT, align 4
  store i32 %322, i32* %6, align 4
  br label %323

323:                                              ; preds = %321, %310, %280, %271, %72
  %324 = load i32, i32* %6, align 4
  ret i32 %324
}

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i64 @bhnd_nv_ummin(i32, i64) #1

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i64, i8*, i64) #1

declare dso_local i32 @bhnd_nv_isspace(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, i32) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i8*, i64, i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
