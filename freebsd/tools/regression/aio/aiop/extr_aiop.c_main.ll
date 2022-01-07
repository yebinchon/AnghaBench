; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/aio/aiop/extr_aiop.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/aio/aiop/extr_aiop.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }
%struct.aiocb = type { i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [70 x i8] c"Usage: %s <file> <io size> <number of runs> <concurrency> <ro|wo|rw>\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"the I/O size must be >0\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"the number of runs must be >0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"AIO concurrency must be >0\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@IOT_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@IOT_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"the I/O type needs to be \22ro\22, \22rw\22, or \22wo\22!\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fstat failed\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"unknown file type\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"path provided too small\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"File: %s; File size %jd bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Runtime: %.2f seconds, \00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Op rate: %.2f ops/sec, \00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Avg transfer rate: %.2f bytes/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.aiocb*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.aiocb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timeval, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 5
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @IOT_READ, align 4
  store i32 %69, i32* %23, align 4
  br label %92

70:                                               ; preds = %62
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 5
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @IOT_READ, align 4
  %78 = load i32, i32* @IOT_WRITE, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %23, align 4
  br label %91

80:                                               ; preds = %70
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @IOT_WRITE, align 4
  store i32 %87, i32* %23, align 4
  br label %90

88:                                               ; preds = %80
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* @IOT_READ, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* @O_RDONLY, align 4
  %99 = load i32, i32* @O_DIRECT, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @open(i8* %97, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %119

102:                                              ; preds = %92
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* @IOT_WRITE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* @O_WRONLY, align 4
  %109 = load i32, i32* @O_DIRECT, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @open(i8* %107, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %118

112:                                              ; preds = %102
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* @O_RDWR, align 4
  %115 = load i32, i32* @O_DIRECT, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @open(i8* %113, i32 %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @fstat(i32 %125, %struct.stat* %7)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @S_ISREG(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  br label %154

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @S_ISBLK(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @S_ISCHR(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @disk_getsize(i32 %149)
  store i32 %150, i32* %14, align 4
  br label %153

151:                                              ; preds = %143
  %152 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %153, %135
  %155 = load i32, i32* %14, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i8*, i8** %10, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %160, i32 %161)
  %163 = load i32, i32* %11, align 4
  %164 = call i8* @calloc(i32 %163, i32 4)
  %165 = bitcast i8* %164 to %struct.aiocb*
  store %struct.aiocb* %165, %struct.aiocb** %8, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i8* @calloc(i32 %166, i32 8)
  %168 = bitcast i8* %167 to i8**
  store i8** %168, i8*** %9, align 8
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %183, %159
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i8* @calloc(i32 1, i32 %177)
  %179 = load i8**, i8*** %9, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  store i8* %178, i8** %182, align 8
  br label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %169

186:                                              ; preds = %169
  %187 = call i32 @gettimeofday(%struct.timeval* %19, i32* null)
  store i32 0, i32* %17, align 4
  br label %188

188:                                              ; preds = %216, %186
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %219

192:                                              ; preds = %188
  %193 = call i32 (...) @random()
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %12, align 4
  %196 = sdiv i32 %194, %195
  %197 = srem i32 %193, %196
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %15, align 4
  %200 = mul nsw i32 %199, %198
  store i32 %200, i32* %15, align 4
  %201 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %201, i64 %203
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @choose_aio(i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i8**, i8*** %9, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @set_aio(%struct.aiocb* %204, i32 %206, i32 %207, i32 %208, i32 %209, i8* %214)
  br label %216

216:                                              ; preds = %192
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %17, align 4
  br label %188

219:                                              ; preds = %188
  store i32 0, i32* %17, align 4
  br label %220

220:                                              ; preds = %265, %219
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %268

224:                                              ; preds = %220
  %225 = call i32 @aio_waitcomplete(%struct.aiocb** %16, i32* null)
  %226 = load %struct.aiocb*, %struct.aiocb** %16, align 8
  %227 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %228 = ptrtoint %struct.aiocb* %226 to i64
  %229 = ptrtoint %struct.aiocb* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 4
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp slt i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load i32, i32* %18, align 4
  %239 = icmp sge i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = call i32 (...) @random()
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %12, align 4
  %245 = sdiv i32 %243, %244
  %246 = srem i32 %242, %245
  store i32 %246, i32* %15, align 4
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %15, align 4
  %249 = mul nsw i32 %248, %247
  store i32 %249, i32* %15, align 4
  %250 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %250, i64 %252
  %254 = load i32, i32* %23, align 4
  %255 = call i32 @choose_aio(i32 %254)
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load i8**, i8*** %9, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @set_aio(%struct.aiocb* %253, i32 %255, i32 %256, i32 %257, i32 %258, i8* %263)
  br label %265

265:                                              ; preds = %224
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %220

268:                                              ; preds = %220
  %269 = call i32 @gettimeofday(%struct.timeval* %20, i32* null)
  %270 = call i32 @timersub(%struct.timeval* %20, %struct.timeval* %19, %struct.timeval* %21)
  %271 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = sitofp i64 %272 to float
  %274 = fpext float %273 to double
  %275 = fdiv double %274, 1.000000e+06
  %276 = fptrunc double %275 to float
  store float %276, float* %22, align 4
  %277 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = sitofp i64 %278 to float
  %280 = load float, float* %22, align 4
  %281 = fadd float %280, %279
  store float %281, float* %22, align 4
  %282 = load float, float* %22, align 4
  %283 = fpext float %282 to double
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), double %283)
  %285 = load i32, i32* %13, align 4
  %286 = sitofp i32 %285 to float
  %287 = load float, float* %22, align 4
  %288 = fdiv float %286, %287
  %289 = fpext float %288 to double
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), double %289)
  %291 = load i32, i32* %13, align 4
  %292 = sitofp i32 %291 to float
  %293 = load i32, i32* %12, align 4
  %294 = sitofp i32 %293 to float
  %295 = fmul float %292, %294
  %296 = load float, float* %22, align 4
  %297 = fdiv float %295, %296
  %298 = fpext float %297 to double
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), double %298)
  %300 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @disk_getsize(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @set_aio(%struct.aiocb*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @choose_aio(i32) #1

declare dso_local i32 @aio_waitcomplete(%struct.aiocb**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
