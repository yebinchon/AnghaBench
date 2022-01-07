; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/apply/extr_apply.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/apply/extr_apply.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"a:d0123456789\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"illegal magic character specification\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"only one -# argument may be specified\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"strdup() failed\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %c%d\00", align 1
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@_SC_ARG_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"exec \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"sbuf\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"expecting additional argument%s after \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [4 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 37, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  br label %23

23:                                               ; preds = %60, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %58 [
    i32 97, label %30
    i32 100, label %49
    i32 48, label %50
    i32 49, label %50
    i32 50, label %50
    i32 51, label %50
    i32 52, label %50
    i32 53, label %50
    i32 54, label %50
    i32 55, label %50
    i32 56, label %50
    i32 57, label %50
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** @optarg, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %30
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i8*, i8** @optarg, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %60

49:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %60

50:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @optopt, align 4
  %57 = sub nsw i32 %56, 48
  store i32 %57, i32* %13, align 4
  br label %60

58:                                               ; preds = %28
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %55, %49, %44
  br label %23

61:                                               ; preds = %23
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %61
  store i32 0, i32* %12, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %19, align 8
  br label %78

78:                                               ; preds = %105, %74
  %79 = load i8*, i8** %19, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %78
  %84 = load i8*, i8** %19, align 8
  %85 = call i64 @ISMAGICNO(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i8*, i8** %19, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 48
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i8*, i8** %19, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %97, %87
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104
  %106 = load i8*, i8** %19, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %19, align 8
  br label %78

108:                                              ; preds = %78
  store i8* null, i8** %18, align 8
  store i8* null, i8** %20, align 8
  %109 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %109, i8** %22, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %22, align 8
  %114 = call i8* @strdup(i8* %113)
  br label %118

115:                                              ; preds = %108
  %116 = load i8*, i8** @_PATH_BSHELL, align 8
  %117 = call i8* @strdup(i8* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i8* [ %114, %112 ], [ %117, %115 ]
  store i8* %119, i8** %20, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i8*, i8** %20, align 8
  %126 = call i8* @strrchr(i8* %125, i8 signext 47)
  store i8* %126, i8** %21, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %21, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  br label %134

132:                                              ; preds = %124
  %133 = load i8*, i8** %20, align 8
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i8* [ %131, %129 ], [ %133, %132 ]
  store i8* %135, i8** %18, align 8
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %183

138:                                              ; preds = %134
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, 27
  %145 = add i64 %144, 1
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %15, align 8
  %147 = call i8* @malloc(i64 %146)
  store i8* %147, i8** %17, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = call i32 @err(i32 1, i8* null)
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i8*, i8** %17, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %15, align 8
  %157 = call i32 @strlcpy(i8* %152, i8* %155, i64 %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 1, i32* %13, align 4
  br label %161

161:                                              ; preds = %160, %151
  store i32 1, i32* %10, align 4
  br label %162

162:                                              ; preds = %175, %161
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @snprintf(i8* %167, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @strlcat(i8* %171, i8* %172, i64 %173)
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %162

178:                                              ; preds = %162
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 1, i32* %13, align 4
  br label %182

182:                                              ; preds = %181, %178
  br label %193

183:                                              ; preds = %134
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @strdup(i8* %186)
  store i8* %187, i8** %17, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 @err(i32 1, i8* null)
  br label %191

191:                                              ; preds = %189, %183
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %13, align 4
  br label %193

193:                                              ; preds = %191, %182
  %194 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %195 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 1024, i32 %194)
  store %struct.sbuf* %195, %struct.sbuf** %6, align 8
  %196 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %197 = icmp eq %struct.sbuf* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 @err(i32 1, i8* null)
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* @_SC_ARG_MAX, align 4
  %202 = call i64 @sysconf(i32 %201)
  store i64 %202, i64* %7, align 8
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %281, %200
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %289

207:                                              ; preds = %203
  %208 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %209 = call i32 @sbuf_clear(%struct.sbuf* %208)
  %210 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %211 = call i32 @sbuf_cat(%struct.sbuf* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %212 = load i8*, i8** %17, align 8
  store i8* %212, i8** %19, align 8
  br label %213

213:                                              ; preds = %259, %207
  %214 = load i8*, i8** %19, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %262

218:                                              ; preds = %213
  %219 = load i8*, i8** %19, align 8
  %220 = call i64 @ISMAGICNO(i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %218
  %223 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %224 = load i8**, i8*** %5, align 8
  %225 = load i8*, i8** %19, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %19, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = sub nsw i32 %229, 48
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %224, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @sbuf_cat(%struct.sbuf* %223, i8* %233)
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %239

236:                                              ; preds = %222
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = call i32 @errc(i32 1, i32 %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %222
  br label %250

240:                                              ; preds = %218
  %241 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load i8, i8* %242, align 1
  %244 = call i32 @sbuf_putc(%struct.sbuf* %241, i8 signext %243)
  %245 = icmp eq i32 %244, -1
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = call i32 @errc(i32 1, i32 %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %240
  br label %250

250:                                              ; preds = %249, %239
  %251 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %252 = call i64 @sbuf_len(%struct.sbuf* %251)
  %253 = load i64, i64* %7, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i32, i32* @E2BIG, align 4
  %257 = call i32 @errc(i32 1, i32 %256, i8* null)
  br label %258

258:                                              ; preds = %255, %250
  br label %259

259:                                              ; preds = %258
  %260 = load i8*, i8** %19, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %19, align 8
  br label %213

262:                                              ; preds = %213
  %263 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %264 = call i32 @sbuf_finish(%struct.sbuf* %263)
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %269 = call i8* @sbuf_data(%struct.sbuf* %268)
  %270 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %269)
  br label %280

271:                                              ; preds = %262
  %272 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %273 = call i8* @sbuf_data(%struct.sbuf* %272)
  %274 = load i8*, i8** %20, align 8
  %275 = load i8*, i8** %18, align 8
  %276 = call i64 @exec_shell(i8* %273, i8* %274, i8* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 1, i32* %14, align 4
  br label %279

279:                                              ; preds = %278, %271
  br label %280

280:                                              ; preds = %279, %267
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %4, align 4
  %284 = sub nsw i32 %283, %282
  store i32 %284, i32* %4, align 4
  %285 = load i32, i32* %13, align 4
  %286 = load i8**, i8*** %5, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8*, i8** %286, i64 %287
  store i8** %288, i8*** %5, align 8
  br label %203

289:                                              ; preds = %203
  %290 = load i32, i32* %4, align 4
  %291 = icmp ne i32 %290, 1
  br i1 %291, label %292, label %306

292:                                              ; preds = %289
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %4, align 4
  %295 = sub nsw i32 %293, %294
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %299 = load i8**, i8*** %5, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %299, i64 %302
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %298, i8* %304)
  br label %306

306:                                              ; preds = %292, %289
  %307 = load i8*, i8** %17, align 8
  %308 = call i32 @free(i8* %307)
  %309 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %310 = call i32 @sbuf_delete(%struct.sbuf* %309)
  %311 = load i8*, i8** %20, align 8
  %312 = call i32 @free(i8* %311)
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @exit(i32 %313) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @ISMAGICNO(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @exec_shell(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
