; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/syscall_timing/extr_syscall_timing.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/syscall_timing/extr_syscall_timing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i32, i32 (i32, i32, i8*)*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.timespec = type { i64, i64 }

@alarm_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"i:l:p:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@tests_count = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.test* null, align 8
@FLAG_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"/tmp/syscall_timing.XXXXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s/testfile\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Clock resolution: %ju.%09ju\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"test\09loop\09time\09iterations\09periteration\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@ts_end = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ts_start = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"%s\09%ju\09\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%ju.%09ju\09%ju\09\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"0.%09ju\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"cannot rmdir %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.test*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* @alarm_timeout, align 4
  store i32 0, i32* %19, align 4
  store i32 10, i32* %21, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  br label %24

24:                                               ; preds = %87, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %13, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %88

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  switch i32 %30, label %85 [
    i32 105, label %31
    i32 108, label %46
    i32 112, label %64
    i32 115, label %66
    i32 63, label %84
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i64 @strtol(i8* %32, i8** %12, i32 10)
  store i64 %33, i64* %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %11, align 8
  %40 = icmp slt i64 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %31
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %19, align 4
  br label %87

46:                                               ; preds = %29
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i64 @strtol(i8* %47, i8** %12, i32 10)
  store i64 %48, i64* %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = icmp sgt i64 %57, 100000
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53, %46
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %21, align 4
  br label %87

64:                                               ; preds = %29
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** %8, align 8
  br label %87

66:                                               ; preds = %29
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i64 @strtol(i8* %67, i8** %12, i32 10)
  store i64 %68, i64* %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %11, align 8
  %75 = icmp slt i64 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = icmp sgt i64 %77, 3600
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %73, %66
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @alarm_timeout, align 4
  br label %87

84:                                               ; preds = %29
  br label %85

85:                                               ; preds = %29, %84
  %86 = call i32 (...) @usage()
  br label %87

87:                                               ; preds = %85, %81, %64, %61, %43
  br label %24

88:                                               ; preds = %24
  %89 = load i64, i64* @optind, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  %94 = load i64, i64* @optind, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 %94
  store i8** %96, i8*** %5, align 8
  %97 = load i32, i32* %19, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load i32, i32* @alarm_timeout, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (...) @usage()
  br label %104

104:                                              ; preds = %102, %99, %88
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @UINT64_MAX, align 4
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* %21, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 1, i32* %21, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (...) @usage()
  br label %118

118:                                              ; preds = %116, %113
  store i32 0, i32* %17, align 4
  br label %119

119:                                              ; preds = %188, %118
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %191

123:                                              ; preds = %119
  store %struct.test* null, %struct.test** %7, align 8
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %148, %123
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @tests_count, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.test*, %struct.test** @tests, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.test, %struct.test* %134, i64 %136
  %138 = getelementptr inbounds %struct.test, %struct.test* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %133, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %128
  %143 = load %struct.test*, %struct.test** @tests, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.test, %struct.test* %143, i64 %145
  store %struct.test* %146, %struct.test** %7, align 8
  br label %147

147:                                              ; preds = %142, %128
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %124

151:                                              ; preds = %124
  %152 = load %struct.test*, %struct.test** %7, align 8
  %153 = icmp eq %struct.test* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (...) @usage()
  br label %156

156:                                              ; preds = %154, %151
  %157 = load %struct.test*, %struct.test** %7, align 8
  %158 = getelementptr inbounds %struct.test, %struct.test* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @FLAG_PATH, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %156
  %164 = load i8*, i8** %8, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = call i8* @strdup(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i8* %167, i8** %9, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %166
  %173 = load i8*, i8** %9, align 8
  %174 = call i8* @mkdtemp(i8* %173)
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  br label %187

187:                                              ; preds = %186, %163, %156
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %119

191:                                              ; preds = %119
  %192 = load i32, i32* @CLOCK_REALTIME, align 4
  %193 = call i32 @clock_getres(i32 %192, %struct.timespec* %6)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %203)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %206

206:                                              ; preds = %319, %191
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %322

210:                                              ; preds = %206
  store %struct.test* null, %struct.test** %7, align 8
  store i32 0, i32* %16, align 4
  br label %211

211:                                              ; preds = %235, %210
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @tests_count, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %211
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.test*, %struct.test** @tests, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.test, %struct.test* %221, i64 %223
  %225 = getelementptr inbounds %struct.test, %struct.test* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strcmp(i8* %220, i8* %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %215
  %230 = load %struct.test*, %struct.test** @tests, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.test, %struct.test* %230, i64 %232
  store %struct.test* %233, %struct.test** %7, align 8
  br label %234

234:                                              ; preds = %229, %215
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %211

238:                                              ; preds = %211
  %239 = load i8*, i8** %10, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %268

241:                                              ; preds = %238
  %242 = load i8*, i8** %10, align 8
  %243 = load i32, i32* @O_WRONLY, align 4
  %244 = load i32, i32* @O_CREAT, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @open(i8* %242, i32 %245, i32 448)
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %249, %241
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @ftruncate(i32 %253, i32 1000000)
  store i32 %254, i32* %15, align 4
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %252
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @close(i32 %260)
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %259
  %267 = load i8*, i8** %10, align 8
  store i8* %267, i8** %8, align 8
  br label %268

268:                                              ; preds = %266, %238
  %269 = load %struct.test*, %struct.test** %7, align 8
  %270 = getelementptr inbounds %struct.test, %struct.test* %269, i32 0, i32 2
  %271 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.test*, %struct.test** %7, align 8
  %274 = getelementptr inbounds %struct.test, %struct.test* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = load i8*, i8** %8, align 8
  %277 = call i32 %271(i32 %272, i32 %275, i8* %276)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %278

278:                                              ; preds = %315, %268
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %21, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %318

282:                                              ; preds = %278
  %283 = load %struct.test*, %struct.test** %7, align 8
  %284 = getelementptr inbounds %struct.test, %struct.test* %283, i32 0, i32 2
  %285 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = load %struct.test*, %struct.test** %7, align 8
  %288 = getelementptr inbounds %struct.test, %struct.test* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load i8*, i8** %8, align 8
  %291 = call i32 %285(i32 %286, i32 %289, i8* %290)
  store i32 %291, i32* %22, align 4
  %292 = call i32 @timespecsub(%struct.TYPE_4__* @ts_end, i32* @ts_start, %struct.TYPE_4__* @ts_end)
  %293 = load %struct.test*, %struct.test** %7, align 8
  %294 = getelementptr inbounds %struct.test, %struct.test* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %20, align 4
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %295, i32 %296)
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts_end, i32 0, i32 0), align 8
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts_end, i32 0, i32 1), align 8
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* %22, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %298, i32 %300, i32 %301)
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts_end, i32 0, i32 0), align 8
  %304 = mul nsw i32 %303, 1000000000
  store i32 %304, i32* %23, align 4
  %305 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts_end, i32 0, i32 1), align 8
  %306 = load i32, i32* %23, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %23, align 4
  %310 = load i32, i32* %22, align 4
  %311 = load i32, i32* %23, align 4
  %312 = sdiv i32 %311, %310
  store i32 %312, i32* %23, align 4
  %313 = load i32, i32* %23, align 4
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %282
  %316 = load i32, i32* %20, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %20, align 4
  br label %278

318:                                              ; preds = %278
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %17, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %17, align 4
  br label %206

322:                                              ; preds = %206
  %323 = load i8*, i8** %10, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %346

325:                                              ; preds = %322
  %326 = load i8*, i8** %10, align 8
  %327 = call i32 @unlink(i8* %326)
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %15, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load i64, i64* @errno, align 8
  %332 = load i64, i64* @ENOENT, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load i8*, i8** %10, align 8
  %336 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %335)
  br label %337

337:                                              ; preds = %334, %330, %325
  %338 = load i8*, i8** %9, align 8
  %339 = call i32 @rmdir(i8* %338)
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* %15, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %337
  %343 = load i8*, i8** %9, align 8
  %344 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %343)
  br label %345

345:                                              ; preds = %342, %337
  br label %346

346:                                              ; preds = %345, %322
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @mkdtemp(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @clock_getres(i32, %struct.timespec*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @timespecsub(%struct.TYPE_4__*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
