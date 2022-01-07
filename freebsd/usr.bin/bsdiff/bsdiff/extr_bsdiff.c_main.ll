; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bsdiff/bsdiff/extr_bsdiff.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bsdiff/bsdiff/extr_bsdiff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SSIZE_MAX = common dso_local global i32 0, align 4
@SIZE_T_MAX = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"divsufsort\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BSDIFF40\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fwrite(%s)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"BZ2_bzWriteOpen, bz2err = %d\00", align 1
@BZ_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"BZ2_bzWrite, bz2err = %d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"BZ2_bzWriteClose, bz2err = %d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ftello\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"fseeko\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca [8 x i64], align 16
  %34 = alloca [32 x i64], align 16
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %2
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = load i32, i32* @O_BINARY, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* %45, i32 %48, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SEEK_END, align 4
  %54 = call i64 @lseek(i32 %52, i32 0, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %51, %42
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SSIZE_MAX, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* @SIZE_T_MAX, align 4
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 4
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @OFF_MAX, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %66, %62
  %78 = load i32, i32* @EFBIG, align 4
  store i32 %78, i32* @errno, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i64* @malloc(i32 %85)
  store i64* %86, i64** %7, align 8
  %87 = icmp eq i64* %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i64 @lseek(i32 %89, i32 0, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = load i64*, i64** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @read(i32 %94, i64* %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @close(i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %93, %88, %83
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i64* @malloc(i32 %114)
  store i64* %115, i64** %11, align 8
  %116 = icmp eq i64* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %119

119:                                              ; preds = %117, %109
  %120 = load i64*, i64** %7, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @divsufsort(i64* %120, i64* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @O_RDONLY, align 4
  %132 = load i32, i32* @O_BINARY, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @open(i8* %130, i32 %133, i32 0)
  store i32 %134, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @SEEK_END, align 4
  %139 = call i64 @lseek(i32 %137, i32 0, i32 %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %147

142:                                              ; preds = %136, %127
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %142, %136
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @SSIZE_MAX, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @SIZE_T_MAX, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @OFF_MAX, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155, %151, %147
  %160 = load i32, i32* @EFBIG, align 4
  store i32 %160, i32* @errno, align 4
  %161 = load i8**, i8*** %5, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 2
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %159, %155
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i64* @malloc(i32 %167)
  store i64* %168, i64** %8, align 8
  %169 = icmp eq i64* %168, null
  br i1 %169, label %186, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @SEEK_SET, align 4
  %173 = call i64 @lseek(i32 %171, i32 0, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %6, align 4
  %177 = load i64*, i64** %8, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @read(i32 %176, i64* %177, i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @close(i32 %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %182, %175, %170, %165
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %186, %182
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i64* @malloc(i32 %193)
  store i64* %194, i64** %31, align 8
  %195 = icmp eq i64* %194, null
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  %199 = call i64* @malloc(i32 %198)
  store i64* %199, i64** %32, align 8
  %200 = icmp eq i64* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %196, %191
  %202 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %203

203:                                              ; preds = %201, %196
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i32* @fopen(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %207, i32** %35, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %209, %203
  %215 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %216 = call i32 @memcpy(i64* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %217 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %218 = getelementptr inbounds i64, i64* %217, i64 8
  %219 = call i32 @offtout(i32 0, i64* %218)
  %220 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %221 = getelementptr inbounds i64, i64* %220, i64 16
  %222 = call i32 @offtout(i32 0, i64* %221)
  %223 = load i32, i32* %10, align 4
  %224 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %225 = getelementptr inbounds i64, i64* %224, i64 24
  %226 = call i32 @offtout(i32 %223, i64* %225)
  %227 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %228 = load i32*, i32** %35, align 8
  %229 = call i32 @fwrite(i64* %227, i32 32, i32 1, i32* %228)
  %230 = icmp ne i32 %229, 1
  br i1 %230, label %231, label %236

231:                                              ; preds = %214
  %232 = load i8**, i8*** %5, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 3
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %231, %214
  %237 = load i32*, i32** %35, align 8
  %238 = call i32* @BZ2_bzWriteOpen(i32* %37, i32* %237, i32 9, i32 0, i32 0)
  store i32* %238, i32** %36, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* %37, align 4
  %242 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %240, %236
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %244

244:                                              ; preds = %678, %243
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %679

248:                                              ; preds = %244
  store i32 0, i32* %18, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %12, align 4
  store i32 %251, i32* %19, align 4
  br label %252

252:                                              ; preds = %339, %248
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %342

256:                                              ; preds = %252
  %257 = load i64*, i64** %11, align 8
  %258 = load i64*, i64** %7, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i64*, i64** %8, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 %264, %265
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @search(i64* %257, i64* %258, i32 %259, i64* %263, i32 %266, i32 0, i32 %267, i32* %13)
  store i32 %268, i32* %14, align 4
  br label %269

269:                                              ; preds = %299, %256
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %271, %272
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %302

275:                                              ; preds = %269
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32, i32* %9, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %298

281:                                              ; preds = %275
  %282 = load i64*, i64** %7, align 8
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %282, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64*, i64** %8, align 8
  %290 = load i32, i32* %19, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %288, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %281
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  br label %298

298:                                              ; preds = %295, %281, %275
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %19, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %19, align 4
  br label %269

302:                                              ; preds = %269
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %18, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i32, i32* %14, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %306, %302
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %18, align 4
  %312 = add nsw i32 %311, 8
  %313 = icmp sgt i32 %310, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %309, %306
  br label %342

315:                                              ; preds = %309
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %316, %317
  %319 = load i32, i32* %9, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %338

321:                                              ; preds = %315
  %322 = load i64*, i64** %7, align 8
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %17, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %322, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = load i64*, i64** %8, align 8
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = icmp eq i64 %328, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %321
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %18, align 4
  br label %338

338:                                              ; preds = %335, %321, %315
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %12, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %12, align 4
  br label %252

342:                                              ; preds = %314, %252
  %343 = load i32, i32* %14, align 4
  %344 = load i32, i32* %18, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %10, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %678

350:                                              ; preds = %346, %342
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %28, align 4
  br label %351

351:                                              ; preds = %399, %350
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* %28, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %12, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %363

357:                                              ; preds = %351
  %358 = load i32, i32* %16, align 4
  %359 = load i32, i32* %28, align 4
  %360 = add nsw i32 %358, %359
  %361 = load i32, i32* %9, align 4
  %362 = icmp slt i32 %360, %361
  br label %363

363:                                              ; preds = %357, %351
  %364 = phi i1 [ false, %351 ], [ %362, %357 ]
  br i1 %364, label %365, label %400

365:                                              ; preds = %363
  %366 = load i64*, i64** %7, align 8
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* %28, align 4
  %369 = add nsw i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %366, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = load i64*, i64** %8, align 8
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %28, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %373, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = icmp eq i64 %372, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %365
  %382 = load i32, i32* %20, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %20, align 4
  br label %384

384:                                              ; preds = %381, %365
  %385 = load i32, i32* %28, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %28, align 4
  %387 = load i32, i32* %20, align 4
  %388 = mul nsw i32 %387, 2
  %389 = load i32, i32* %28, align 4
  %390 = sub nsw i32 %388, %389
  %391 = load i32, i32* %21, align 4
  %392 = mul nsw i32 %391, 2
  %393 = load i32, i32* %22, align 4
  %394 = sub nsw i32 %392, %393
  %395 = icmp sgt i32 %390, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %384
  %397 = load i32, i32* %20, align 4
  store i32 %397, i32* %21, align 4
  %398 = load i32, i32* %28, align 4
  store i32 %398, i32* %22, align 4
  br label %399

399:                                              ; preds = %396, %384
  br label %351

400:                                              ; preds = %363
  store i32 0, i32* %24, align 4
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %10, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %454

404:                                              ; preds = %400
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  store i32 1, i32* %28, align 4
  br label %405

405:                                              ; preds = %450, %404
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* %28, align 4
  %409 = add nsw i32 %407, %408
  %410 = icmp sge i32 %406, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = load i32, i32* %13, align 4
  %413 = load i32, i32* %28, align 4
  %414 = icmp sge i32 %412, %413
  br label %415

415:                                              ; preds = %411, %405
  %416 = phi i1 [ false, %405 ], [ %414, %411 ]
  br i1 %416, label %417, label %453

417:                                              ; preds = %415
  %418 = load i64*, i64** %7, align 8
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* %28, align 4
  %421 = sub nsw i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %418, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i64*, i64** %8, align 8
  %426 = load i32, i32* %12, align 4
  %427 = load i32, i32* %28, align 4
  %428 = sub nsw i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64, i64* %425, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = icmp eq i64 %424, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %417
  %434 = load i32, i32* %20, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %20, align 4
  br label %436

436:                                              ; preds = %433, %417
  %437 = load i32, i32* %20, align 4
  %438 = mul nsw i32 %437, 2
  %439 = load i32, i32* %28, align 4
  %440 = sub nsw i32 %438, %439
  %441 = load i32, i32* %23, align 4
  %442 = mul nsw i32 %441, 2
  %443 = load i32, i32* %24, align 4
  %444 = sub nsw i32 %442, %443
  %445 = icmp sgt i32 %440, %444
  br i1 %445, label %446, label %449

446:                                              ; preds = %436
  %447 = load i32, i32* %20, align 4
  store i32 %447, i32* %23, align 4
  %448 = load i32, i32* %28, align 4
  store i32 %448, i32* %24, align 4
  br label %449

449:                                              ; preds = %446, %436
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %28, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %28, align 4
  br label %405

453:                                              ; preds = %415
  br label %454

454:                                              ; preds = %453, %400
  %455 = load i32, i32* %15, align 4
  %456 = load i32, i32* %22, align 4
  %457 = add nsw i32 %455, %456
  %458 = load i32, i32* %12, align 4
  %459 = load i32, i32* %24, align 4
  %460 = sub nsw i32 %458, %459
  %461 = icmp sgt i32 %457, %460
  br i1 %461, label %462, label %545

462:                                              ; preds = %454
  %463 = load i32, i32* %15, align 4
  %464 = load i32, i32* %22, align 4
  %465 = add nsw i32 %463, %464
  %466 = load i32, i32* %12, align 4
  %467 = load i32, i32* %24, align 4
  %468 = sub nsw i32 %466, %467
  %469 = sub nsw i32 %465, %468
  store i32 %469, i32* %25, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %470

470:                                              ; preds = %533, %462
  %471 = load i32, i32* %28, align 4
  %472 = load i32, i32* %25, align 4
  %473 = icmp slt i32 %471, %472
  br i1 %473, label %474, label %536

474:                                              ; preds = %470
  %475 = load i64*, i64** %8, align 8
  %476 = load i32, i32* %15, align 4
  %477 = load i32, i32* %22, align 4
  %478 = add nsw i32 %476, %477
  %479 = load i32, i32* %25, align 4
  %480 = sub nsw i32 %478, %479
  %481 = load i32, i32* %28, align 4
  %482 = add nsw i32 %480, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i64, i64* %475, i64 %483
  %485 = load i64, i64* %484, align 8
  %486 = load i64*, i64** %7, align 8
  %487 = load i32, i32* %16, align 4
  %488 = load i32, i32* %22, align 4
  %489 = add nsw i32 %487, %488
  %490 = load i32, i32* %25, align 4
  %491 = sub nsw i32 %489, %490
  %492 = load i32, i32* %28, align 4
  %493 = add nsw i32 %491, %492
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i64, i64* %486, i64 %494
  %496 = load i64, i64* %495, align 8
  %497 = icmp eq i64 %485, %496
  br i1 %497, label %498, label %501

498:                                              ; preds = %474
  %499 = load i32, i32* %20, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %20, align 4
  br label %501

501:                                              ; preds = %498, %474
  %502 = load i64*, i64** %8, align 8
  %503 = load i32, i32* %12, align 4
  %504 = load i32, i32* %24, align 4
  %505 = sub nsw i32 %503, %504
  %506 = load i32, i32* %28, align 4
  %507 = add nsw i32 %505, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i64, i64* %502, i64 %508
  %510 = load i64, i64* %509, align 8
  %511 = load i64*, i64** %7, align 8
  %512 = load i32, i32* %13, align 4
  %513 = load i32, i32* %24, align 4
  %514 = sub nsw i32 %512, %513
  %515 = load i32, i32* %28, align 4
  %516 = add nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %511, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = icmp eq i64 %510, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %501
  %522 = load i32, i32* %20, align 4
  %523 = add nsw i32 %522, -1
  store i32 %523, i32* %20, align 4
  br label %524

524:                                              ; preds = %521, %501
  %525 = load i32, i32* %20, align 4
  %526 = load i32, i32* %26, align 4
  %527 = icmp sgt i32 %525, %526
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  %529 = load i32, i32* %20, align 4
  store i32 %529, i32* %26, align 4
  %530 = load i32, i32* %28, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %27, align 4
  br label %532

532:                                              ; preds = %528, %524
  br label %533

533:                                              ; preds = %532
  %534 = load i32, i32* %28, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %28, align 4
  br label %470

536:                                              ; preds = %470
  %537 = load i32, i32* %27, align 4
  %538 = load i32, i32* %25, align 4
  %539 = sub nsw i32 %537, %538
  %540 = load i32, i32* %22, align 4
  %541 = add nsw i32 %540, %539
  store i32 %541, i32* %22, align 4
  %542 = load i32, i32* %27, align 4
  %543 = load i32, i32* %24, align 4
  %544 = sub nsw i32 %543, %542
  store i32 %544, i32* %24, align 4
  br label %545

545:                                              ; preds = %536, %454
  store i32 0, i32* %28, align 4
  br label %546

546:                                              ; preds = %572, %545
  %547 = load i32, i32* %28, align 4
  %548 = load i32, i32* %22, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %575

550:                                              ; preds = %546
  %551 = load i64*, i64** %8, align 8
  %552 = load i32, i32* %15, align 4
  %553 = load i32, i32* %28, align 4
  %554 = add nsw i32 %552, %553
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i64, i64* %551, i64 %555
  %557 = load i64, i64* %556, align 8
  %558 = load i64*, i64** %7, align 8
  %559 = load i32, i32* %16, align 4
  %560 = load i32, i32* %28, align 4
  %561 = add nsw i32 %559, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i64, i64* %558, i64 %562
  %564 = load i64, i64* %563, align 8
  %565 = sub nsw i64 %557, %564
  %566 = load i64*, i64** %31, align 8
  %567 = load i32, i32* %29, align 4
  %568 = load i32, i32* %28, align 4
  %569 = add nsw i32 %567, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i64, i64* %566, i64 %570
  store i64 %565, i64* %571, align 8
  br label %572

572:                                              ; preds = %550
  %573 = load i32, i32* %28, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %28, align 4
  br label %546

575:                                              ; preds = %546
  store i32 0, i32* %28, align 4
  br label %576

576:                                              ; preds = %602, %575
  %577 = load i32, i32* %28, align 4
  %578 = load i32, i32* %12, align 4
  %579 = load i32, i32* %24, align 4
  %580 = sub nsw i32 %578, %579
  %581 = load i32, i32* %15, align 4
  %582 = load i32, i32* %22, align 4
  %583 = add nsw i32 %581, %582
  %584 = sub nsw i32 %580, %583
  %585 = icmp slt i32 %577, %584
  br i1 %585, label %586, label %605

586:                                              ; preds = %576
  %587 = load i64*, i64** %8, align 8
  %588 = load i32, i32* %15, align 4
  %589 = load i32, i32* %22, align 4
  %590 = add nsw i32 %588, %589
  %591 = load i32, i32* %28, align 4
  %592 = add nsw i32 %590, %591
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i64, i64* %587, i64 %593
  %595 = load i64, i64* %594, align 8
  %596 = load i64*, i64** %32, align 8
  %597 = load i32, i32* %30, align 4
  %598 = load i32, i32* %28, align 4
  %599 = add nsw i32 %597, %598
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i64, i64* %596, i64 %600
  store i64 %595, i64* %601, align 8
  br label %602

602:                                              ; preds = %586
  %603 = load i32, i32* %28, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %28, align 4
  br label %576

605:                                              ; preds = %576
  %606 = load i32, i32* %22, align 4
  %607 = load i32, i32* %29, align 4
  %608 = add nsw i32 %607, %606
  store i32 %608, i32* %29, align 4
  %609 = load i32, i32* %12, align 4
  %610 = load i32, i32* %24, align 4
  %611 = sub nsw i32 %609, %610
  %612 = load i32, i32* %15, align 4
  %613 = load i32, i32* %22, align 4
  %614 = add nsw i32 %612, %613
  %615 = sub nsw i32 %611, %614
  %616 = load i32, i32* %30, align 4
  %617 = add nsw i32 %616, %615
  store i32 %617, i32* %30, align 4
  %618 = load i32, i32* %22, align 4
  %619 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %620 = call i32 @offtout(i32 %618, i64* %619)
  %621 = load i32*, i32** %36, align 8
  %622 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %623 = call i32 @BZ2_bzWrite(i32* %37, i32* %621, i64* %622, i32 8)
  %624 = load i32, i32* %37, align 4
  %625 = load i32, i32* @BZ_OK, align 4
  %626 = icmp ne i32 %624, %625
  br i1 %626, label %627, label %630

627:                                              ; preds = %605
  %628 = load i32, i32* %37, align 4
  %629 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %628)
  br label %630

630:                                              ; preds = %627, %605
  %631 = load i32, i32* %12, align 4
  %632 = load i32, i32* %24, align 4
  %633 = sub nsw i32 %631, %632
  %634 = load i32, i32* %15, align 4
  %635 = load i32, i32* %22, align 4
  %636 = add nsw i32 %634, %635
  %637 = sub nsw i32 %633, %636
  %638 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %639 = call i32 @offtout(i32 %637, i64* %638)
  %640 = load i32*, i32** %36, align 8
  %641 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %642 = call i32 @BZ2_bzWrite(i32* %37, i32* %640, i64* %641, i32 8)
  %643 = load i32, i32* %37, align 4
  %644 = load i32, i32* @BZ_OK, align 4
  %645 = icmp ne i32 %643, %644
  br i1 %645, label %646, label %649

646:                                              ; preds = %630
  %647 = load i32, i32* %37, align 4
  %648 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %647)
  br label %649

649:                                              ; preds = %646, %630
  %650 = load i32, i32* %13, align 4
  %651 = load i32, i32* %24, align 4
  %652 = sub nsw i32 %650, %651
  %653 = load i32, i32* %16, align 4
  %654 = load i32, i32* %22, align 4
  %655 = add nsw i32 %653, %654
  %656 = sub nsw i32 %652, %655
  %657 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %658 = call i32 @offtout(i32 %656, i64* %657)
  %659 = load i32*, i32** %36, align 8
  %660 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %661 = call i32 @BZ2_bzWrite(i32* %37, i32* %659, i64* %660, i32 8)
  %662 = load i32, i32* %37, align 4
  %663 = load i32, i32* @BZ_OK, align 4
  %664 = icmp ne i32 %662, %663
  br i1 %664, label %665, label %668

665:                                              ; preds = %649
  %666 = load i32, i32* %37, align 4
  %667 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %666)
  br label %668

668:                                              ; preds = %665, %649
  %669 = load i32, i32* %12, align 4
  %670 = load i32, i32* %24, align 4
  %671 = sub nsw i32 %669, %670
  store i32 %671, i32* %15, align 4
  %672 = load i32, i32* %13, align 4
  %673 = load i32, i32* %24, align 4
  %674 = sub nsw i32 %672, %673
  store i32 %674, i32* %16, align 4
  %675 = load i32, i32* %13, align 4
  %676 = load i32, i32* %12, align 4
  %677 = sub nsw i32 %675, %676
  store i32 %677, i32* %17, align 4
  br label %678

678:                                              ; preds = %668, %346
  br label %244

679:                                              ; preds = %244
  %680 = load i32*, i32** %36, align 8
  %681 = call i32 @BZ2_bzWriteClose(i32* %37, i32* %680, i32 0, i32* null, i32* null)
  %682 = load i32, i32* %37, align 4
  %683 = load i32, i32* @BZ_OK, align 4
  %684 = icmp ne i32 %682, %683
  br i1 %684, label %685, label %688

685:                                              ; preds = %679
  %686 = load i32, i32* %37, align 4
  %687 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %686)
  br label %688

688:                                              ; preds = %685, %679
  %689 = load i32*, i32** %35, align 8
  %690 = call i32 @ftello(i32* %689)
  store i32 %690, i32* %14, align 4
  %691 = icmp eq i32 %690, -1
  br i1 %691, label %692, label %694

692:                                              ; preds = %688
  %693 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %694

694:                                              ; preds = %692, %688
  %695 = load i32, i32* %14, align 4
  %696 = sub nsw i32 %695, 32
  %697 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %698 = getelementptr inbounds i64, i64* %697, i64 8
  %699 = call i32 @offtout(i32 %696, i64* %698)
  %700 = load i32*, i32** %35, align 8
  %701 = call i32* @BZ2_bzWriteOpen(i32* %37, i32* %700, i32 9, i32 0, i32 0)
  store i32* %701, i32** %36, align 8
  %702 = icmp eq i32* %701, null
  br i1 %702, label %703, label %706

703:                                              ; preds = %694
  %704 = load i32, i32* %37, align 4
  %705 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %704)
  br label %706

706:                                              ; preds = %703, %694
  %707 = load i32*, i32** %36, align 8
  %708 = load i64*, i64** %31, align 8
  %709 = load i32, i32* %29, align 4
  %710 = call i32 @BZ2_bzWrite(i32* %37, i32* %707, i64* %708, i32 %709)
  %711 = load i32, i32* %37, align 4
  %712 = load i32, i32* @BZ_OK, align 4
  %713 = icmp ne i32 %711, %712
  br i1 %713, label %714, label %717

714:                                              ; preds = %706
  %715 = load i32, i32* %37, align 4
  %716 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %715)
  br label %717

717:                                              ; preds = %714, %706
  %718 = load i32*, i32** %36, align 8
  %719 = call i32 @BZ2_bzWriteClose(i32* %37, i32* %718, i32 0, i32* null, i32* null)
  %720 = load i32, i32* %37, align 4
  %721 = load i32, i32* @BZ_OK, align 4
  %722 = icmp ne i32 %720, %721
  br i1 %722, label %723, label %726

723:                                              ; preds = %717
  %724 = load i32, i32* %37, align 4
  %725 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %724)
  br label %726

726:                                              ; preds = %723, %717
  %727 = load i32*, i32** %35, align 8
  %728 = call i32 @ftello(i32* %727)
  store i32 %728, i32* %10, align 4
  %729 = icmp eq i32 %728, -1
  br i1 %729, label %730, label %732

730:                                              ; preds = %726
  %731 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %732

732:                                              ; preds = %730, %726
  %733 = load i32, i32* %10, align 4
  %734 = load i32, i32* %14, align 4
  %735 = sub nsw i32 %733, %734
  %736 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %737 = getelementptr inbounds i64, i64* %736, i64 16
  %738 = call i32 @offtout(i32 %735, i64* %737)
  %739 = load i32*, i32** %35, align 8
  %740 = call i32* @BZ2_bzWriteOpen(i32* %37, i32* %739, i32 9, i32 0, i32 0)
  store i32* %740, i32** %36, align 8
  %741 = icmp eq i32* %740, null
  br i1 %741, label %742, label %745

742:                                              ; preds = %732
  %743 = load i32, i32* %37, align 4
  %744 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %743)
  br label %745

745:                                              ; preds = %742, %732
  %746 = load i32*, i32** %36, align 8
  %747 = load i64*, i64** %32, align 8
  %748 = load i32, i32* %30, align 4
  %749 = call i32 @BZ2_bzWrite(i32* %37, i32* %746, i64* %747, i32 %748)
  %750 = load i32, i32* %37, align 4
  %751 = load i32, i32* @BZ_OK, align 4
  %752 = icmp ne i32 %750, %751
  br i1 %752, label %753, label %756

753:                                              ; preds = %745
  %754 = load i32, i32* %37, align 4
  %755 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %754)
  br label %756

756:                                              ; preds = %753, %745
  %757 = load i32*, i32** %36, align 8
  %758 = call i32 @BZ2_bzWriteClose(i32* %37, i32* %757, i32 0, i32* null, i32* null)
  %759 = load i32, i32* %37, align 4
  %760 = load i32, i32* @BZ_OK, align 4
  %761 = icmp ne i32 %759, %760
  br i1 %761, label %762, label %765

762:                                              ; preds = %756
  %763 = load i32, i32* %37, align 4
  %764 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %763)
  br label %765

765:                                              ; preds = %762, %756
  %766 = load i32*, i32** %35, align 8
  %767 = load i32, i32* @SEEK_SET, align 4
  %768 = call i64 @fseeko(i32* %766, i32 0, i32 %767)
  %769 = icmp ne i64 %768, 0
  br i1 %769, label %770, label %772

770:                                              ; preds = %765
  %771 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %772

772:                                              ; preds = %770, %765
  %773 = getelementptr inbounds [32 x i64], [32 x i64]* %34, i64 0, i64 0
  %774 = load i32*, i32** %35, align 8
  %775 = call i32 @fwrite(i64* %773, i32 32, i32 1, i32* %774)
  %776 = icmp ne i32 %775, 1
  br i1 %776, label %777, label %782

777:                                              ; preds = %772
  %778 = load i8**, i8*** %5, align 8
  %779 = getelementptr inbounds i8*, i8** %778, i64 3
  %780 = load i8*, i8** %779, align 8
  %781 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %780)
  br label %782

782:                                              ; preds = %777, %772
  %783 = load i32*, i32** %35, align 8
  %784 = call i64 @fclose(i32* %783)
  %785 = icmp ne i64 %784, 0
  br i1 %785, label %786, label %788

786:                                              ; preds = %782
  %787 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %788

788:                                              ; preds = %786, %782
  %789 = load i64*, i64** %31, align 8
  %790 = call i32 @free(i64* %789)
  %791 = load i64*, i64** %32, align 8
  %792 = call i32 @free(i64* %791)
  %793 = load i64*, i64** %11, align 8
  %794 = call i32 @free(i64* %793)
  %795 = load i64*, i64** %7, align 8
  %796 = call i32 @free(i64* %795)
  %797 = load i64*, i64** %8, align 8
  %798 = call i32 @free(i64* %797)
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @divsufsort(i64*, i64*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @offtout(i32, i64*) #1

declare dso_local i32 @fwrite(i64*, i32, i32, i32*) #1

declare dso_local i32* @BZ2_bzWriteOpen(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @search(i64*, i64*, i32, i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @BZ2_bzWrite(i32*, i32*, i64*, i32) #1

declare dso_local i32 @BZ2_bzWriteClose(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ftello(i32*) #1

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
