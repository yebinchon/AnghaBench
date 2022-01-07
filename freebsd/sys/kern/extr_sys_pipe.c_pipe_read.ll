; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.pipe* }
%struct.pipe = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@amountpipekva = common dso_local global i32 0, align 4
@maxpipekva = common dso_local global i32 0, align 4
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@SMALL_PIPE_SIZE = common dso_local global i64 0, align 8
@piperesizeallowed = common dso_local global i32 0, align 4
@PIPE_WANTW = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PIPE_WANTR = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"piperd\00", align 1
@PIPE_WANT = common dso_local global i32 0, align 4
@MINPIPESIZE = common dso_local global i64 0, align 8
@PIPE_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @pipe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.pipe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.pipe*, %struct.pipe** %16, align 8
  store %struct.pipe* %17, %struct.pipe** %11, align 8
  %18 = load %struct.pipe*, %struct.pipe** %11, align 8
  %19 = call i32 @PIPE_LOCK(%struct.pipe* %18)
  %20 = load %struct.pipe*, %struct.pipe** %11, align 8
  %21 = getelementptr inbounds %struct.pipe, %struct.pipe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.pipe*, %struct.pipe** %11, align 8
  %25 = call i32 @pipelock(%struct.pipe* %24, i32 1)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %321

29:                                               ; preds = %5
  %30 = load i32, i32* @amountpipekva, align 4
  %31 = load i32, i32* @maxpipekva, align 4
  %32 = mul nsw i32 3, %31
  %33 = sdiv i32 %32, 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.pipe*, %struct.pipe** %11, align 8
  %37 = getelementptr inbounds %struct.pipe, %struct.pipe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PIPE_DIRECTW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %35
  %43 = load %struct.pipe*, %struct.pipe** %11, align 8
  %44 = getelementptr inbounds %struct.pipe, %struct.pipe* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SMALL_PIPE_SIZE, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.pipe*, %struct.pipe** %11, align 8
  %51 = getelementptr inbounds %struct.pipe, %struct.pipe* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMALL_PIPE_SIZE, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* @piperesizeallowed, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.pipe*, %struct.pipe** %11, align 8
  %61 = call i32 @PIPE_UNLOCK(%struct.pipe* %60)
  %62 = load %struct.pipe*, %struct.pipe** %11, align 8
  %63 = load i64, i64* @SMALL_PIPE_SIZE, align 8
  %64 = call i32 @pipespace(%struct.pipe* %62, i64 %63)
  %65 = load %struct.pipe*, %struct.pipe** %11, align 8
  %66 = call i32 @PIPE_LOCK(%struct.pipe* %65)
  br label %67

67:                                               ; preds = %59, %56, %49, %42, %35
  br label %68

68:                                               ; preds = %67, %29
  br label %69

69:                                               ; preds = %310, %68
  %70 = load %struct.uio*, %struct.uio** %7, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %311

74:                                               ; preds = %69
  %75 = load %struct.pipe*, %struct.pipe** %11, align 8
  %76 = getelementptr inbounds %struct.pipe, %struct.pipe* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %181

80:                                               ; preds = %74
  %81 = load %struct.pipe*, %struct.pipe** %11, align 8
  %82 = getelementptr inbounds %struct.pipe, %struct.pipe* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.pipe*, %struct.pipe** %11, align 8
  %86 = getelementptr inbounds %struct.pipe, %struct.pipe* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %84, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.pipe*, %struct.pipe** %11, align 8
  %95 = getelementptr inbounds %struct.pipe, %struct.pipe* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %93, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %80
  %100 = load %struct.pipe*, %struct.pipe** %11, align 8
  %101 = getelementptr inbounds %struct.pipe, %struct.pipe* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %99, %80
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.uio*, %struct.uio** %7, align 8
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.uio*, %struct.uio** %7, align 8
  %113 = getelementptr inbounds %struct.uio, %struct.uio* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.pipe*, %struct.pipe** %11, align 8
  %117 = call i32 @PIPE_UNLOCK(%struct.pipe* %116)
  %118 = load %struct.pipe*, %struct.pipe** %11, align 8
  %119 = getelementptr inbounds %struct.pipe, %struct.pipe* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.pipe*, %struct.pipe** %11, align 8
  %123 = getelementptr inbounds %struct.pipe, %struct.pipe* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.uio*, %struct.uio** %7, align 8
  %130 = call i32 @uiomove(i32* %127, i32 %128, %struct.uio* %129)
  store i32 %130, i32* %12, align 4
  %131 = load %struct.pipe*, %struct.pipe** %11, align 8
  %132 = call i32 @PIPE_LOCK(%struct.pipe* %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %115
  br label %311

136:                                              ; preds = %115
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.pipe*, %struct.pipe** %11, align 8
  %139 = getelementptr inbounds %struct.pipe, %struct.pipe* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %137
  store i32 %142, i32* %140, align 8
  %143 = load %struct.pipe*, %struct.pipe** %11, align 8
  %144 = getelementptr inbounds %struct.pipe, %struct.pipe* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load %struct.pipe*, %struct.pipe** %11, align 8
  %149 = getelementptr inbounds %struct.pipe, %struct.pipe* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %147, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load %struct.pipe*, %struct.pipe** %11, align 8
  %155 = getelementptr inbounds %struct.pipe, %struct.pipe* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %136
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.pipe*, %struct.pipe** %11, align 8
  %161 = getelementptr inbounds %struct.pipe, %struct.pipe* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, %159
  store i64 %164, i64* %162, align 8
  %165 = load %struct.pipe*, %struct.pipe** %11, align 8
  %166 = getelementptr inbounds %struct.pipe, %struct.pipe* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %157
  %171 = load %struct.pipe*, %struct.pipe** %11, align 8
  %172 = getelementptr inbounds %struct.pipe, %struct.pipe* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  %174 = load %struct.pipe*, %struct.pipe** %11, align 8
  %175 = getelementptr inbounds %struct.pipe, %struct.pipe* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %170, %157
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %13, align 4
  br label %310

181:                                              ; preds = %74
  %182 = load %struct.pipe*, %struct.pipe** %11, align 8
  %183 = getelementptr inbounds %struct.pipe, %struct.pipe* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %247

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.uio*, %struct.uio** %7, align 8
  %190 = getelementptr inbounds %struct.uio, %struct.uio* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct.uio*, %struct.uio** %7, align 8
  %195 = getelementptr inbounds %struct.uio, %struct.uio* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %14, align 4
  br label %197

197:                                              ; preds = %193, %187
  %198 = load %struct.pipe*, %struct.pipe** %11, align 8
  %199 = call i32 @PIPE_UNLOCK(%struct.pipe* %198)
  %200 = load %struct.pipe*, %struct.pipe** %11, align 8
  %201 = getelementptr inbounds %struct.pipe, %struct.pipe* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.pipe*, %struct.pipe** %11, align 8
  %205 = getelementptr inbounds %struct.pipe, %struct.pipe* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.uio*, %struct.uio** %7, align 8
  %210 = call i32 @uiomove_fromphys(i32 %203, i32 %207, i32 %208, %struct.uio* %209)
  store i32 %210, i32* %12, align 4
  %211 = load %struct.pipe*, %struct.pipe** %11, align 8
  %212 = call i32 @PIPE_LOCK(%struct.pipe* %211)
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %197
  br label %311

216:                                              ; preds = %197
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.pipe*, %struct.pipe** %11, align 8
  %222 = getelementptr inbounds %struct.pipe, %struct.pipe* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %220
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.pipe*, %struct.pipe** %11, align 8
  %228 = getelementptr inbounds %struct.pipe, %struct.pipe* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, %226
  store i32 %231, i32* %229, align 4
  %232 = load %struct.pipe*, %struct.pipe** %11, align 8
  %233 = getelementptr inbounds %struct.pipe, %struct.pipe* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %216
  %238 = load i32, i32* @PIPE_WANTW, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.pipe*, %struct.pipe** %11, align 8
  %241 = getelementptr inbounds %struct.pipe, %struct.pipe* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load %struct.pipe*, %struct.pipe** %11, align 8
  %245 = call i32 @wakeup(%struct.pipe* %244)
  br label %246

246:                                              ; preds = %237, %216
  br label %309

247:                                              ; preds = %181
  %248 = load %struct.pipe*, %struct.pipe** %11, align 8
  %249 = getelementptr inbounds %struct.pipe, %struct.pipe* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @PIPE_EOF, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %311

255:                                              ; preds = %247
  %256 = load %struct.pipe*, %struct.pipe** %11, align 8
  %257 = getelementptr inbounds %struct.pipe, %struct.pipe* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @PIPE_WANTW, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %255
  %263 = load i32, i32* @PIPE_WANTW, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.pipe*, %struct.pipe** %11, align 8
  %266 = getelementptr inbounds %struct.pipe, %struct.pipe* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load %struct.pipe*, %struct.pipe** %11, align 8
  %270 = call i32 @wakeup(%struct.pipe* %269)
  br label %271

271:                                              ; preds = %262, %255
  %272 = load i32, i32* %13, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %311

275:                                              ; preds = %271
  %276 = load %struct.pipe*, %struct.pipe** %11, align 8
  %277 = call i32 @pipeunlock(%struct.pipe* %276)
  %278 = load %struct.file*, %struct.file** %6, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @FNONBLOCK, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %275
  %285 = load i32, i32* @EAGAIN, align 4
  store i32 %285, i32* %12, align 4
  br label %304

286:                                              ; preds = %275
  %287 = load i32, i32* @PIPE_WANTR, align 4
  %288 = load %struct.pipe*, %struct.pipe** %11, align 8
  %289 = getelementptr inbounds %struct.pipe, %struct.pipe* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.pipe*, %struct.pipe** %11, align 8
  %293 = load %struct.pipe*, %struct.pipe** %11, align 8
  %294 = call i32 @PIPE_MTX(%struct.pipe* %293)
  %295 = load i32, i32* @PRIBIO, align 4
  %296 = load i32, i32* @PCATCH, align 4
  %297 = or i32 %295, %296
  %298 = call i32 @msleep(%struct.pipe* %292, i32 %294, i32 %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %298, i32* %12, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %286
  %301 = load %struct.pipe*, %struct.pipe** %11, align 8
  %302 = call i32 @pipelock(%struct.pipe* %301, i32 1)
  store i32 %302, i32* %12, align 4
  br label %303

303:                                              ; preds = %300, %286
  br label %304

304:                                              ; preds = %303, %284
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %321

308:                                              ; preds = %304
  br label %309

309:                                              ; preds = %308, %246
  br label %310

310:                                              ; preds = %309, %177
  br label %69

311:                                              ; preds = %274, %254, %215, %135, %69
  %312 = load %struct.pipe*, %struct.pipe** %11, align 8
  %313 = call i32 @pipeunlock(%struct.pipe* %312)
  %314 = load i32, i32* %12, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load %struct.pipe*, %struct.pipe** %11, align 8
  %318 = getelementptr inbounds %struct.pipe, %struct.pipe* %317, i32 0, i32 3
  %319 = call i32 @vfs_timestamp(i32* %318)
  br label %320

320:                                              ; preds = %316, %311
  br label %321

321:                                              ; preds = %320, %307, %28
  %322 = load %struct.pipe*, %struct.pipe** %11, align 8
  %323 = getelementptr inbounds %struct.pipe, %struct.pipe* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %324, -1
  store i64 %325, i64* %323, align 8
  %326 = load %struct.pipe*, %struct.pipe** %11, align 8
  %327 = getelementptr inbounds %struct.pipe, %struct.pipe* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %348

330:                                              ; preds = %321
  %331 = load %struct.pipe*, %struct.pipe** %11, align 8
  %332 = getelementptr inbounds %struct.pipe, %struct.pipe* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @PIPE_WANT, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %330
  %338 = load i32, i32* @PIPE_WANT, align 4
  %339 = load i32, i32* @PIPE_WANTW, align 4
  %340 = or i32 %338, %339
  %341 = xor i32 %340, -1
  %342 = load %struct.pipe*, %struct.pipe** %11, align 8
  %343 = getelementptr inbounds %struct.pipe, %struct.pipe* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load %struct.pipe*, %struct.pipe** %11, align 8
  %347 = call i32 @wakeup(%struct.pipe* %346)
  br label %373

348:                                              ; preds = %330, %321
  %349 = load %struct.pipe*, %struct.pipe** %11, align 8
  %350 = getelementptr inbounds %struct.pipe, %struct.pipe* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @MINPIPESIZE, align 8
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %355, label %372

355:                                              ; preds = %348
  %356 = load %struct.pipe*, %struct.pipe** %11, align 8
  %357 = getelementptr inbounds %struct.pipe, %struct.pipe* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @PIPE_WANTW, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %355
  %363 = load i32, i32* @PIPE_WANTW, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct.pipe*, %struct.pipe** %11, align 8
  %366 = getelementptr inbounds %struct.pipe, %struct.pipe* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.pipe*, %struct.pipe** %11, align 8
  %370 = call i32 @wakeup(%struct.pipe* %369)
  br label %371

371:                                              ; preds = %362, %355
  br label %372

372:                                              ; preds = %371, %348
  br label %373

373:                                              ; preds = %372, %337
  %374 = load %struct.pipe*, %struct.pipe** %11, align 8
  %375 = getelementptr inbounds %struct.pipe, %struct.pipe* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.pipe*, %struct.pipe** %11, align 8
  %379 = getelementptr inbounds %struct.pipe, %struct.pipe* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = sub nsw i64 %377, %381
  %383 = load i64, i64* @PIPE_BUF, align 8
  %384 = icmp sge i64 %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %373
  %386 = load %struct.pipe*, %struct.pipe** %11, align 8
  %387 = call i32 @pipeselwakeup(%struct.pipe* %386)
  br label %388

388:                                              ; preds = %385, %373
  %389 = load %struct.pipe*, %struct.pipe** %11, align 8
  %390 = call i32 @PIPE_UNLOCK(%struct.pipe* %389)
  %391 = load i32, i32* %12, align 4
  ret i32 %391
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @pipelock(%struct.pipe*, i32) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @pipespace(%struct.pipe*, i64) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @uiomove_fromphys(i32, i32, i32, %struct.uio*) #1

declare dso_local i32 @wakeup(%struct.pipe*) #1

declare dso_local i32 @pipeunlock(%struct.pipe*) #1

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @pipeselwakeup(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
