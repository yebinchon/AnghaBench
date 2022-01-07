; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bsdiff/bspatch/extr_bspatch.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bsdiff/bspatch/extr_bspatch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen(%s)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@dirfd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@newfile = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@exit_cleanup = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enter security sandbox\00", align 1
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_UNLINKAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"cap_rights_limit() failed, could not restrict capabilities\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Corrupt patch\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fread(%s)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"BSDIFF40\00", align 1
@OFF_MAX = common dso_local global i32 0, align 4
@SSIZE_MAX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"fclose(%s)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"fseeko(%s, %jd)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"BZ2_bzReadOpen, bz2err = %d\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BZ_OK = common dso_local global i32 0, align 4
@BZ_STREAM_END = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca [8 x i8], align 1
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca [3 x i64], align 16
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %38 = load i32, i32* @HEADER_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %24, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %25, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %2
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %50, i32** %6, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %61, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32* @fopen(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %72, i32** %8, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %83, i32** %9, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %85, %79
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @O_RDONLY, align 4
  %95 = load i32, i32* @O_BINARY, align 4
  %96 = or i32 %94, %95
  %97 = call i32 (i8*, i32, ...) @open(i8* %93, i32 %96, i32 0)
  store i32 %97, i32* %19, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %90
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @strdup(i8* %107)
  store i8* %108, i8** %14, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %104
  %111 = load i8*, i8** %14, align 8
  %112 = call i8* @dirname(i8* %111)
  store i8* %112, i8** %13, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* @O_DIRECTORY, align 4
  %117 = call i32 (i8*, i32, ...) @open(i8* %115, i32 %116)
  store i32 %117, i32* @dirfd, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114, %110, %104
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i8*, i8** %14, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32* @basename(i8* %129)
  store i32* %130, i32** @newfile, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %124
  %135 = load i32, i32* @dirfd, align 4
  %136 = load i32*, i32** @newfile, align 8
  %137 = load i32, i32* @O_CREAT, align 4
  %138 = load i32, i32* @O_TRUNC, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @O_WRONLY, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @O_BINARY, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @openat(i32 %135, i32* %136, i32 %143, i32 438)
  store i32 %144, i32* %18, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %146, %134
  %152 = load i32, i32* @exit_cleanup, align 4
  %153 = call i32 @atexit(i32 %152)
  %154 = call i64 (...) @cap_enter()
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %151
  %159 = load i32, i32* @CAP_READ, align 4
  %160 = load i32, i32* @CAP_FSTAT, align 4
  %161 = load i32, i32* @CAP_SEEK, align 4
  %162 = call i32 (i32*, i32, ...) @cap_rights_init(i32* %36, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* @CAP_WRITE, align 4
  %164 = call i32 (i32*, i32, ...) @cap_rights_init(i32* %37, i32 %163)
  %165 = load i32, i32* @CAP_UNLINKAT, align 4
  %166 = call i32 (i32*, i32, ...) @cap_rights_init(i32* %35, i32 %165)
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @fileno(i32* %167)
  %169 = call i64 @cap_rights_limit(i32 %168, i32* %36)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %158
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @fileno(i32* %172)
  %174 = call i64 @cap_rights_limit(i32 %173, i32* %36)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %198, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @fileno(i32* %177)
  %179 = call i64 @cap_rights_limit(i32 %178, i32* %36)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %198, label %181

181:                                              ; preds = %176
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @fileno(i32* %182)
  %184 = call i64 @cap_rights_limit(i32 %183, i32* %36)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %19, align 4
  %188 = call i64 @cap_rights_limit(i32 %187, i32* %36)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %18, align 4
  %192 = call i64 @cap_rights_limit(i32 %191, i32* %37)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* @dirfd, align 4
  %196 = call i64 @cap_rights_limit(i32 %195, i32* %35)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194, %190, %186, %181, %176, %171, %158
  %199 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %194
  %201 = load i32, i32* @HEADER_SIZE, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @fread(i8* %41, i32 1, i32 %201, i32* %202)
  %204 = load i32, i32* @HEADER_SIZE, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %200
  %207 = load i32*, i32** %6, align 8
  %208 = call i64 @feof(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i8**, i8*** %5, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 3
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %212, %200
  %218 = call i64 @memcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %217
  %223 = getelementptr inbounds i8, i8* %41, i64 8
  %224 = call i64 @offtin(i8* %223)
  store i64 %224, i64* %22, align 8
  %225 = getelementptr inbounds i8, i8* %41, i64 16
  %226 = call i64 @offtin(i8* %225)
  store i64 %226, i64* %23, align 8
  %227 = getelementptr inbounds i8, i8* %41, i64 24
  %228 = call i64 @offtin(i8* %227)
  store i64 %228, i64* %21, align 8
  %229 = load i64, i64* %22, align 8
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %258, label %231

231:                                              ; preds = %222
  %232 = load i64, i64* %22, align 8
  %233 = load i32, i32* @OFF_MAX, align 4
  %234 = load i32, i32* @HEADER_SIZE, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = icmp sgt i64 %232, %236
  br i1 %237, label %258, label %238

238:                                              ; preds = %231
  %239 = load i64, i64* %23, align 8
  %240 = icmp slt i64 %239, 0
  br i1 %240, label %258, label %241

241:                                              ; preds = %238
  %242 = load i64, i64* %22, align 8
  %243 = load i32, i32* @HEADER_SIZE, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = load i32, i32* @OFF_MAX, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* %23, align 8
  %249 = sub nsw i64 %247, %248
  %250 = icmp sgt i64 %245, %249
  br i1 %250, label %258, label %251

251:                                              ; preds = %241
  %252 = load i64, i64* %21, align 8
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = load i64, i64* %21, align 8
  %256 = load i64, i64* @SSIZE_MAX, align 8
  %257 = icmp sgt i64 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254, %251, %241, %238, %231, %222
  %259 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %260

260:                                              ; preds = %258, %254
  %261 = load i32*, i32** %6, align 8
  %262 = call i64 @fclose(i32* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load i8**, i8*** %5, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 3
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %264, %260
  %270 = load i32, i32* @HEADER_SIZE, align 4
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %34, align 8
  %272 = load i32*, i32** %7, align 8
  %273 = load i64, i64* %34, align 8
  %274 = load i32, i32* @SEEK_SET, align 4
  %275 = call i64 @fseeko(i32* %272, i64 %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %269
  %278 = load i8**, i8*** %5, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 3
  %280 = load i8*, i8** %279, align 8
  %281 = load i64, i64* %34, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %280, i32 %282)
  br label %284

284:                                              ; preds = %277, %269
  %285 = load i32*, i32** %7, align 8
  %286 = call i32* @BZ2_bzReadOpen(i32* %15, i32* %285, i32 0, i32 0, i32* null, i32 0)
  store i32* %286, i32** %10, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load i32, i32* %15, align 4
  %290 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %288, %284
  %292 = load i64, i64* %34, align 8
  %293 = load i64, i64* %22, align 8
  %294 = call i64 @add_off_t(i64 %292, i64 %293)
  store i64 %294, i64* %34, align 8
  %295 = load i32*, i32** %8, align 8
  %296 = load i64, i64* %34, align 8
  %297 = load i32, i32* @SEEK_SET, align 4
  %298 = call i64 @fseeko(i32* %295, i64 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %291
  %301 = load i8**, i8*** %5, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 3
  %303 = load i8*, i8** %302, align 8
  %304 = load i64, i64* %34, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %303, i32 %305)
  br label %307

307:                                              ; preds = %300, %291
  %308 = load i32*, i32** %8, align 8
  %309 = call i32* @BZ2_bzReadOpen(i32* %16, i32* %308, i32 0, i32 0, i32* null, i32 0)
  store i32* %309, i32** %11, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i32, i32* %16, align 4
  %313 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %311, %307
  %315 = load i64, i64* %34, align 8
  %316 = load i64, i64* %23, align 8
  %317 = call i64 @add_off_t(i64 %315, i64 %316)
  store i64 %317, i64* %34, align 8
  %318 = load i32*, i32** %9, align 8
  %319 = load i64, i64* %34, align 8
  %320 = load i32, i32* @SEEK_SET, align 4
  %321 = call i64 @fseeko(i32* %318, i64 %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %314
  %324 = load i8**, i8*** %5, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 3
  %326 = load i8*, i8** %325, align 8
  %327 = load i64, i64* %34, align 8
  %328 = trunc i64 %327 to i32
  %329 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %326, i32 %328)
  br label %330

330:                                              ; preds = %323, %314
  %331 = load i32*, i32** %9, align 8
  %332 = call i32* @BZ2_bzReadOpen(i32* %17, i32* %331, i32 0, i32 0, i32* null, i32 0)
  store i32* %332, i32** %12, align 8
  %333 = icmp eq i32* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load i32, i32* %17, align 4
  %336 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %335)
  br label %337

337:                                              ; preds = %334, %330
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* @SEEK_END, align 4
  %340 = call i64 @lseek(i32 %338, i32 0, i32 %339)
  store i64 %340, i64* %20, align 8
  %341 = icmp eq i64 %340, -1
  br i1 %341, label %366, label %342

342:                                              ; preds = %337
  %343 = load i64, i64* %20, align 8
  %344 = load i64, i64* @SSIZE_MAX, align 8
  %345 = icmp sgt i64 %343, %344
  br i1 %345, label %366, label %346

346:                                              ; preds = %342
  %347 = load i64, i64* %20, align 8
  %348 = call i8* @malloc(i64 %347)
  store i8* %348, i8** %27, align 8
  %349 = icmp eq i8* %348, null
  br i1 %349, label %366, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* @SEEK_SET, align 4
  %353 = call i64 @lseek(i32 %351, i32 0, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %366, label %355

355:                                              ; preds = %350
  %356 = load i32, i32* %19, align 4
  %357 = load i8*, i8** %27, align 8
  %358 = load i64, i64* %20, align 8
  %359 = call i64 @read(i32 %356, i8* %357, i64 %358)
  %360 = load i64, i64* %20, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %366, label %362

362:                                              ; preds = %355
  %363 = load i32, i32* %19, align 4
  %364 = call i32 @close(i32 %363)
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %366, label %371

366:                                              ; preds = %362, %355, %350, %346, %342, %337
  %367 = load i8**, i8*** %5, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 1
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %369)
  br label %371

371:                                              ; preds = %366, %362
  %372 = load i64, i64* %21, align 8
  %373 = call i8* @malloc(i64 %372)
  store i8* %373, i8** %28, align 8
  %374 = icmp eq i8* %373, null
  br i1 %374, label %375, label %377

375:                                              ; preds = %371
  %376 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %377

377:                                              ; preds = %375, %371
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  br label %378

378:                                              ; preds = %533, %377
  %379 = load i64, i64* %30, align 8
  %380 = load i64, i64* %21, align 8
  %381 = icmp slt i64 %379, %380
  br i1 %381, label %382, label %542

382:                                              ; preds = %378
  store i64 0, i64* %32, align 8
  br label %383

383:                                              ; preds = %407, %382
  %384 = load i64, i64* %32, align 8
  %385 = icmp sle i64 %384, 2
  br i1 %385, label %386, label %410

386:                                              ; preds = %383
  %387 = load i32*, i32** %10, align 8
  %388 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0
  %389 = call i64 @BZ2_bzRead(i32* %15, i32* %387, i8* %388, i64 8)
  store i64 %389, i64* %33, align 8
  %390 = load i64, i64* %33, align 8
  %391 = icmp slt i64 %390, 8
  br i1 %391, label %400, label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* @BZ_OK, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %396, label %402

396:                                              ; preds = %392
  %397 = load i32, i32* %15, align 4
  %398 = load i32, i32* @BZ_STREAM_END, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %396, %386
  %401 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %402

402:                                              ; preds = %400, %396, %392
  %403 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0
  %404 = call i64 @offtin(i8* %403)
  %405 = load i64, i64* %32, align 8
  %406 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 %405
  store i64 %404, i64* %406, align 8
  br label %407

407:                                              ; preds = %402
  %408 = load i64, i64* %32, align 8
  %409 = add nsw i64 %408, 1
  store i64 %409, i64* %32, align 8
  br label %383

410:                                              ; preds = %383
  %411 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %412 = load i64, i64* %411, align 16
  %413 = icmp slt i64 %412, 0
  br i1 %413, label %428, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %416 = load i64, i64* %415, align 16
  %417 = load i64, i64* @INT_MAX, align 8
  %418 = icmp sgt i64 %416, %417
  br i1 %418, label %428, label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %421 = load i64, i64* %420, align 8
  %422 = icmp slt i64 %421, 0
  br i1 %422, label %428, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @INT_MAX, align 8
  %427 = icmp sgt i64 %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %423, %419, %414, %410
  %429 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %430

430:                                              ; preds = %428, %423
  %431 = load i64, i64* %30, align 8
  %432 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %433 = load i64, i64* %432, align 16
  %434 = call i64 @add_off_t(i64 %431, i64 %433)
  %435 = load i64, i64* %21, align 8
  %436 = icmp sgt i64 %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %430
  %438 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %439

439:                                              ; preds = %437, %430
  %440 = load i32*, i32** %11, align 8
  %441 = load i8*, i8** %28, align 8
  %442 = load i64, i64* %30, align 8
  %443 = getelementptr inbounds i8, i8* %441, i64 %442
  %444 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %445 = load i64, i64* %444, align 16
  %446 = call i64 @BZ2_bzRead(i32* %16, i32* %440, i8* %443, i64 %445)
  store i64 %446, i64* %33, align 8
  %447 = load i64, i64* %33, align 8
  %448 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %449 = load i64, i64* %448, align 16
  %450 = icmp slt i64 %447, %449
  br i1 %450, label %459, label %451

451:                                              ; preds = %439
  %452 = load i32, i32* %16, align 4
  %453 = load i32, i32* @BZ_OK, align 4
  %454 = icmp ne i32 %452, %453
  br i1 %454, label %455, label %461

455:                                              ; preds = %451
  %456 = load i32, i32* %16, align 4
  %457 = load i32, i32* @BZ_STREAM_END, align 4
  %458 = icmp ne i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455, %439
  %460 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %461

461:                                              ; preds = %459, %455, %451
  store i64 0, i64* %32, align 8
  br label %462

462:                                              ; preds = %491, %461
  %463 = load i64, i64* %32, align 8
  %464 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %465 = load i64, i64* %464, align 16
  %466 = icmp slt i64 %463, %465
  br i1 %466, label %467, label %494

467:                                              ; preds = %462
  %468 = load i64, i64* %29, align 8
  %469 = load i64, i64* %32, align 8
  %470 = call i64 @add_off_t(i64 %468, i64 %469)
  %471 = load i64, i64* %20, align 8
  %472 = icmp slt i64 %470, %471
  br i1 %472, label %473, label %490

473:                                              ; preds = %467
  %474 = load i8*, i8** %27, align 8
  %475 = load i64, i64* %29, align 8
  %476 = load i64, i64* %32, align 8
  %477 = add nsw i64 %475, %476
  %478 = getelementptr inbounds i8, i8* %474, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = load i8*, i8** %28, align 8
  %482 = load i64, i64* %30, align 8
  %483 = load i64, i64* %32, align 8
  %484 = add nsw i64 %482, %483
  %485 = getelementptr inbounds i8, i8* %481, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = add nsw i32 %487, %480
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %485, align 1
  br label %490

490:                                              ; preds = %473, %467
  br label %491

491:                                              ; preds = %490
  %492 = load i64, i64* %32, align 8
  %493 = add nsw i64 %492, 1
  store i64 %493, i64* %32, align 8
  br label %462

494:                                              ; preds = %462
  %495 = load i64, i64* %30, align 8
  %496 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %497 = load i64, i64* %496, align 16
  %498 = call i64 @add_off_t(i64 %495, i64 %497)
  store i64 %498, i64* %30, align 8
  %499 = load i64, i64* %29, align 8
  %500 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 0
  %501 = load i64, i64* %500, align 16
  %502 = call i64 @add_off_t(i64 %499, i64 %501)
  store i64 %502, i64* %29, align 8
  %503 = load i64, i64* %30, align 8
  %504 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %505 = load i64, i64* %504, align 8
  %506 = call i64 @add_off_t(i64 %503, i64 %505)
  %507 = load i64, i64* %21, align 8
  %508 = icmp sgt i64 %506, %507
  br i1 %508, label %509, label %511

509:                                              ; preds = %494
  %510 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %511

511:                                              ; preds = %509, %494
  %512 = load i32*, i32** %12, align 8
  %513 = load i8*, i8** %28, align 8
  %514 = load i64, i64* %30, align 8
  %515 = getelementptr inbounds i8, i8* %513, i64 %514
  %516 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %517 = load i64, i64* %516, align 8
  %518 = call i64 @BZ2_bzRead(i32* %17, i32* %512, i8* %515, i64 %517)
  store i64 %518, i64* %33, align 8
  %519 = load i64, i64* %33, align 8
  %520 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %521 = load i64, i64* %520, align 8
  %522 = icmp slt i64 %519, %521
  br i1 %522, label %531, label %523

523:                                              ; preds = %511
  %524 = load i32, i32* %17, align 4
  %525 = load i32, i32* @BZ_OK, align 4
  %526 = icmp ne i32 %524, %525
  br i1 %526, label %527, label %533

527:                                              ; preds = %523
  %528 = load i32, i32* %17, align 4
  %529 = load i32, i32* @BZ_STREAM_END, align 4
  %530 = icmp ne i32 %528, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %527, %511
  %532 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %533

533:                                              ; preds = %531, %527, %523
  %534 = load i64, i64* %30, align 8
  %535 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 1
  %536 = load i64, i64* %535, align 8
  %537 = call i64 @add_off_t(i64 %534, i64 %536)
  store i64 %537, i64* %30, align 8
  %538 = load i64, i64* %29, align 8
  %539 = getelementptr inbounds [3 x i64], [3 x i64]* %31, i64 0, i64 2
  %540 = load i64, i64* %539, align 16
  %541 = call i64 @add_off_t(i64 %538, i64 %540)
  store i64 %541, i64* %29, align 8
  br label %378

542:                                              ; preds = %378
  %543 = load i32*, i32** %10, align 8
  %544 = call i32 @BZ2_bzReadClose(i32* %15, i32* %543)
  %545 = load i32*, i32** %11, align 8
  %546 = call i32 @BZ2_bzReadClose(i32* %16, i32* %545)
  %547 = load i32*, i32** %12, align 8
  %548 = call i32 @BZ2_bzReadClose(i32* %17, i32* %547)
  %549 = load i32*, i32** %7, align 8
  %550 = call i64 @fclose(i32* %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %560, label %552

552:                                              ; preds = %542
  %553 = load i32*, i32** %8, align 8
  %554 = call i64 @fclose(i32* %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %560, label %556

556:                                              ; preds = %552
  %557 = load i32*, i32** %9, align 8
  %558 = call i64 @fclose(i32* %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %565

560:                                              ; preds = %556, %552, %542
  %561 = load i8**, i8*** %5, align 8
  %562 = getelementptr inbounds i8*, i8** %561, i64 3
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %563)
  br label %565

565:                                              ; preds = %560, %556
  %566 = load i32, i32* %18, align 4
  %567 = load i8*, i8** %28, align 8
  %568 = load i64, i64* %21, align 8
  %569 = call i64 @write(i32 %566, i8* %567, i64 %568)
  %570 = load i64, i64* %21, align 8
  %571 = icmp ne i64 %569, %570
  br i1 %571, label %576, label %572

572:                                              ; preds = %565
  %573 = load i32, i32* %18, align 4
  %574 = call i32 @close(i32 %573)
  %575 = icmp eq i32 %574, -1
  br i1 %575, label %576, label %581

576:                                              ; preds = %572, %565
  %577 = load i8**, i8*** %5, align 8
  %578 = getelementptr inbounds i8*, i8** %577, i64 2
  %579 = load i8*, i8** %578, align 8
  %580 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %579)
  br label %581

581:                                              ; preds = %576, %572
  store i32* null, i32** @newfile, align 8
  %582 = load i8*, i8** %28, align 8
  %583 = call i32 @free(i8* %582)
  %584 = load i8*, i8** %27, align 8
  %585 = call i32 @free(i8* %584)
  store i32 0, i32* %3, align 4
  %586 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %586)
  %587 = load i32, i32* %3, align 4
  ret i32 %587
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @basename(i8*) #2

declare dso_local i32 @openat(i32, i32*, i32, i32) #2

declare dso_local i32 @atexit(i32) #2

declare dso_local i64 @cap_enter(...) #2

declare dso_local i32 @cap_rights_init(i32*, i32, ...) #2

declare dso_local i64 @cap_rights_limit(i32, i32*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @offtin(i8*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i64 @fseeko(i32*, i64, i32) #2

declare dso_local i32* @BZ2_bzReadOpen(i32*, i32*, i32, i32, i32*, i32) #2

declare dso_local i64 @add_off_t(i64, i64) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @read(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @BZ2_bzRead(i32*, i32*, i8*, i64) #2

declare dso_local i32 @BZ2_bzReadClose(i32*, i32*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
