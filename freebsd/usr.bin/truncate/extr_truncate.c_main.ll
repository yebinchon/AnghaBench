; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truncate/extr_truncate.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truncate/extr_truncate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"cr:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid size argument `%s'\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %16, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %102, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %103

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %100 [
    i32 99, label %32
    i32 114, label %33
    i32 115, label %35
  ]

32:                                               ; preds = %30
  store i32 1, i32* %18, align 4
  br label %102

33:                                               ; preds = %30
  store i32 1, i32* %21, align 4
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %24, align 8
  br label %102

35:                                               ; preds = %30
  %36 = load i8*, i8** @optarg, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35
  store i32 1, i32* %19, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i8*, i8** @optarg, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46
  store i32 1, i32* %20, align 4
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** @optarg, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  br label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** @optarg, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i8* [ %66, %64 ], [ %68, %67 ]
  %71 = call i32 @expand_number(i8* %70, i32* %13)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %69
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @errx(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i8*, i8** @optarg, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 45
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** @optarg, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %95

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 0, %93
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i64 [ %94, %91 ], [ %97, %95 ]
  store i64 %99, i64* %10, align 8
  store i32 1, i32* %22, align 4
  br label %102

100:                                              ; preds = %30
  %101 = call i32 (...) @usage()
  br label %102

102:                                              ; preds = %100, %98, %33, %32
  br label %25

103:                                              ; preds = %25
  %104 = load i64, i64* @optind, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 %104
  store i8** %106, i8*** %5, align 8
  %107 = load i64, i64* @optind, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %116, %103
  %120 = call i32 (...) @usage()
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i8*, i8** %24, align 8
  %126 = call i32 @stat(i8* %125, %struct.stat* %6)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* @EXIT_FAILURE, align 4
  %130 = load i8*, i8** %24, align 8
  %131 = call i32 @err(i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %11, align 8
  br label %146

135:                                              ; preds = %121
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138, %135
  %142 = load i64, i64* %10, align 8
  store i64 %142, i64* %9, align 8
  br label %145

143:                                              ; preds = %138
  %144 = load i64, i64* %10, align 8
  store i64 %144, i64* %11, align 8
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @O_WRONLY, align 4
  store i32 %150, i32* %17, align 4
  br label %155

151:                                              ; preds = %146
  %152 = load i32, i32* @O_WRONLY, align 4
  %153 = load i32, i32* @O_CREAT, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %151, %149
  %156 = load i32, i32* @S_IRUSR, align 4
  %157 = load i32, i32* @S_IWUSR, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @S_IRGRP, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @S_IROTH, align 4
  %162 = or i32 %160, %161
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %295, %290, %228, %213, %197, %189, %155
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %5, align 8
  %166 = load i8*, i8** %164, align 8
  store i8* %166, i8** %23, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %296

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @close(i32 %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i8*, i8** %23, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @open(i8* %175, i32 %176, i32 %177)
  store i32 %178, i32* %16, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load i64, i64* @errno, align 8
  %182 = load i64, i64* @ENOENT, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %184, %180
  br label %163

190:                                              ; preds = %174
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %221

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @fstat(i32 %194, %struct.stat* %6)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i8*, i8** %23, align 8
  %199 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %15, align 4
  br label %163

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %9, align 8
  %206 = add nsw i64 %204, %205
  store i64 %206, i64* %8, align 8
  %207 = load i64, i64* %8, align 8
  %208 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %9, align 8
  %211 = add nsw i64 %209, %210
  %212 = icmp slt i64 %207, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %202
  %214 = load i64, i64* @EFBIG, align 8
  store i64 %214, i64* @errno, align 8
  %215 = load i8*, i8** %23, align 8
  %216 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %163

219:                                              ; preds = %202
  %220 = load i64, i64* %8, align 8
  store i64 %220, i64* %11, align 8
  br label %221

221:                                              ; preds = %219, %190
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %281

224:                                              ; preds = %221
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @fstat(i32 %225, %struct.stat* %6)
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i8*, i8** %23, align 8
  %230 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %229)
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  br label %163

233:                                              ; preds = %224
  %234 = load i64, i64* %9, align 8
  store i64 %234, i64* %10, align 8
  %235 = load i64, i64* %10, align 8
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i64, i64* %10, align 8
  %239 = sub nsw i64 0, %238
  store i64 %239, i64* %10, align 8
  br label %240

240:                                              ; preds = %237, %233
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %10, align 8
  %244 = srem i64 %242, %243
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %277

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %10, align 8
  %250 = sdiv i64 %248, %249
  store i64 %250, i64* %12, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load i64, i64* %10, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load i64, i64* %9, align 8
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i64, i64* %12, align 8
  %259 = add nsw i64 %258, -1
  store i64 %259, i64* %12, align 8
  br label %267

260:                                              ; preds = %254, %246
  %261 = load i64, i64* %9, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i64, i64* %12, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %12, align 8
  br label %266

266:                                              ; preds = %263, %260
  br label %267

267:                                              ; preds = %266, %257
  %268 = load i64, i64* %12, align 8
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %273

271:                                              ; preds = %267
  %272 = load i64, i64* %12, align 8
  br label %273

273:                                              ; preds = %271, %270
  %274 = phi i64 [ 0, %270 ], [ %272, %271 ]
  %275 = load i64, i64* %10, align 8
  %276 = mul nsw i64 %274, %275
  store i64 %276, i64* %11, align 8
  br label %280

277:                                              ; preds = %240
  %278 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %11, align 8
  br label %280

280:                                              ; preds = %277, %273
  br label %281

281:                                              ; preds = %280, %221
  %282 = load i64, i64* %11, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i64 0, i64* %11, align 8
  br label %285

285:                                              ; preds = %284, %281
  %286 = load i32, i32* %16, align 4
  %287 = load i64, i64* %11, align 8
  %288 = call i32 @ftruncate(i32 %286, i64 %287)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load i8*, i8** %23, align 8
  %292 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %291)
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %15, align 4
  br label %163

295:                                              ; preds = %285
  br label %163

296:                                              ; preds = %163
  %297 = load i32, i32* %16, align 4
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @close(i32 %300)
  br label %302

302:                                              ; preds = %299, %296
  %303 = load i32, i32* %15, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = load i32, i32* @EXIT_FAILURE, align 4
  br label %309

307:                                              ; preds = %302
  %308 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i32 [ %306, %305 ], [ %308, %307 ]
  ret i32 %310
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @expand_number(i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @ftruncate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
