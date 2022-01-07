; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.pipe* }
%struct.pipe = type { i64, i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.uio = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PIPE_ACTIVE = common dso_local global i64 0, align 8
@PIPE_EOF = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SMALL_PIPE_SIZE = common dso_local global i32 0, align 4
@piperesizeallowed = common dso_local global i32 0, align 4
@amountpipekva = common dso_local global i32 0, align 4
@maxpipekva = common dso_local global i32 0, align 4
@BIG_PIPE_SIZE = common dso_local global i32 0, align 4
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i64 0, align 8
@PIPE_MINDIRECT = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@PIPE_WANTR = common dso_local global i32 0, align 4
@PIPE_WANTW = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pipbww\00", align 1
@PIPE_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Pipe buffer wraparound disappeared\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Expected wraparound bad\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Pipe buffer overflow\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pipewr\00", align 1
@PIPE_WANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @pipe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pipe*, align 8
  %16 = alloca %struct.pipe*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.file*, %struct.file** %7, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load %struct.pipe*, %struct.pipe** %21, align 8
  store %struct.pipe* %22, %struct.pipe** %16, align 8
  %23 = load %struct.pipe*, %struct.pipe** %16, align 8
  %24 = call %struct.pipe* @PIPE_PEER(%struct.pipe* %23)
  store %struct.pipe* %24, %struct.pipe** %15, align 8
  %25 = load %struct.pipe*, %struct.pipe** %16, align 8
  %26 = call i32 @PIPE_LOCK(%struct.pipe* %25)
  %27 = load %struct.pipe*, %struct.pipe** %15, align 8
  %28 = call i32 @pipelock(%struct.pipe* %27, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.pipe*, %struct.pipe** %16, align 8
  %33 = call i32 @PIPE_UNLOCK(%struct.pipe* %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %566

35:                                               ; preds = %5
  %36 = load %struct.pipe*, %struct.pipe** %15, align 8
  %37 = getelementptr inbounds %struct.pipe, %struct.pipe* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PIPE_ACTIVE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load %struct.pipe*, %struct.pipe** %15, align 8
  %43 = getelementptr inbounds %struct.pipe, %struct.pipe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PIPE_EOF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41, %35
  %49 = load %struct.pipe*, %struct.pipe** %15, align 8
  %50 = call i32 @pipeunlock(%struct.pipe* %49)
  %51 = load %struct.pipe*, %struct.pipe** %16, align 8
  %52 = call i32 @PIPE_UNLOCK(%struct.pipe* %51)
  %53 = load i32, i32* @EPIPE, align 4
  store i32 %53, i32* %6, align 4
  br label %566

54:                                               ; preds = %41
  %55 = load %struct.pipe*, %struct.pipe** %15, align 8
  %56 = getelementptr inbounds %struct.pipe, %struct.pipe* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  %60 = load %struct.pipe*, %struct.pipe** %15, align 8
  %61 = getelementptr inbounds %struct.pipe, %struct.pipe* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @max(i32 %59, i32 %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %91, %54
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.pipe*, %struct.pipe** %15, align 8
  %68 = getelementptr inbounds %struct.pipe, %struct.pipe* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.uio*, %struct.uio** %8, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  %75 = icmp slt i32 %66, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %65
  %77 = load i32, i32* @piperesizeallowed, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %94

80:                                               ; preds = %76
  %81 = load i32, i32* @amountpipekva, align 4
  %82 = load i32, i32* @maxpipekva, align 4
  %83 = sdiv i32 %82, 2
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BIG_PIPE_SIZE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %13, align 4
  br label %65

94:                                               ; preds = %90, %85, %79, %65
  %95 = load i32, i32* @amountpipekva, align 4
  %96 = load i32, i32* @maxpipekva, align 4
  %97 = mul nsw i32 3, %96
  %98 = sdiv i32 %97, 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.pipe*, %struct.pipe** %15, align 8
  %102 = getelementptr inbounds %struct.pipe, %struct.pipe* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load %struct.pipe*, %struct.pipe** %15, align 8
  %109 = getelementptr inbounds %struct.pipe, %struct.pipe* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @piperesizeallowed, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @SMALL_PIPE_SIZE, align 4
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %117, %114, %107, %100, %94
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.pipe*, %struct.pipe** %15, align 8
  %122 = getelementptr inbounds %struct.pipe, %struct.pipe* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %120, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = load %struct.pipe*, %struct.pipe** %15, align 8
  %128 = getelementptr inbounds %struct.pipe, %struct.pipe* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PIPE_DIRECTW, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.pipe*, %struct.pipe** %15, align 8
  %135 = call i32 @PIPE_UNLOCK(%struct.pipe* %134)
  %136 = load %struct.pipe*, %struct.pipe** %15, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @pipespace(%struct.pipe* %136, i32 %137)
  %139 = load %struct.pipe*, %struct.pipe** %15, align 8
  %140 = call i32 @PIPE_LOCK(%struct.pipe* %139)
  br label %141

141:                                              ; preds = %133, %126, %119
  %142 = load %struct.pipe*, %struct.pipe** %15, align 8
  %143 = getelementptr inbounds %struct.pipe, %struct.pipe* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load i32, i32* @ENOMEM, align 4
  store i32 %148, i32* %12, align 4
  %149 = load %struct.pipe*, %struct.pipe** %15, align 8
  %150 = getelementptr inbounds %struct.pipe, %struct.pipe* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %150, align 8
  %153 = load %struct.pipe*, %struct.pipe** %15, align 8
  %154 = call i32 @pipeunlock(%struct.pipe* %153)
  %155 = load %struct.pipe*, %struct.pipe** %15, align 8
  %156 = call i32 @PIPE_UNLOCK(%struct.pipe* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %6, align 4
  br label %566

158:                                              ; preds = %141
  %159 = load %struct.pipe*, %struct.pipe** %15, align 8
  %160 = call i32 @pipeunlock(%struct.pipe* %159)
  %161 = load %struct.uio*, %struct.uio** %8, align 8
  %162 = getelementptr inbounds %struct.uio, %struct.uio* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %479, %262, %219, %158
  %165 = load %struct.uio*, %struct.uio** %8, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %480

169:                                              ; preds = %164
  %170 = load %struct.pipe*, %struct.pipe** %15, align 8
  %171 = call i32 @pipelock(%struct.pipe* %170, i32 0)
  %172 = load %struct.pipe*, %struct.pipe** %15, align 8
  %173 = getelementptr inbounds %struct.pipe, %struct.pipe* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PIPE_EOF, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = load %struct.pipe*, %struct.pipe** %15, align 8
  %180 = call i32 @pipeunlock(%struct.pipe* %179)
  %181 = load i32, i32* @EPIPE, align 4
  store i32 %181, i32* %12, align 4
  br label %480

182:                                              ; preds = %169
  %183 = load %struct.uio*, %struct.uio** %8, align 8
  %184 = getelementptr inbounds %struct.uio, %struct.uio* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @UIO_USERSPACE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %220

188:                                              ; preds = %182
  %189 = load %struct.uio*, %struct.uio** %8, align 8
  %190 = getelementptr inbounds %struct.uio, %struct.uio* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @PIPE_MINDIRECT, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %188
  %197 = load %struct.pipe*, %struct.pipe** %15, align 8
  %198 = getelementptr inbounds %struct.pipe, %struct.pipe* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PIPE_MINDIRECT, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %196
  %204 = load %struct.file*, %struct.file** %7, align 8
  %205 = getelementptr inbounds %struct.file, %struct.file* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @FNONBLOCK, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %203
  %211 = load %struct.pipe*, %struct.pipe** %15, align 8
  %212 = call i32 @pipeunlock(%struct.pipe* %211)
  %213 = load %struct.pipe*, %struct.pipe** %15, align 8
  %214 = load %struct.uio*, %struct.uio** %8, align 8
  %215 = call i32 @pipe_direct_write(%struct.pipe* %213, %struct.uio* %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %480

219:                                              ; preds = %210
  br label %164

220:                                              ; preds = %203, %196, %188, %182
  %221 = load %struct.pipe*, %struct.pipe** %15, align 8
  %222 = getelementptr inbounds %struct.pipe, %struct.pipe* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %263

226:                                              ; preds = %220
  %227 = load %struct.pipe*, %struct.pipe** %15, align 8
  %228 = getelementptr inbounds %struct.pipe, %struct.pipe* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @PIPE_WANTR, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %226
  %234 = load i32, i32* @PIPE_WANTR, align 4
  %235 = xor i32 %234, -1
  %236 = load %struct.pipe*, %struct.pipe** %15, align 8
  %237 = getelementptr inbounds %struct.pipe, %struct.pipe* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load %struct.pipe*, %struct.pipe** %15, align 8
  %241 = call i32 @wakeup(%struct.pipe* %240)
  br label %242

242:                                              ; preds = %233, %226
  %243 = load %struct.pipe*, %struct.pipe** %15, align 8
  %244 = call i32 @pipeselwakeup(%struct.pipe* %243)
  %245 = load i32, i32* @PIPE_WANTW, align 4
  %246 = load %struct.pipe*, %struct.pipe** %15, align 8
  %247 = getelementptr inbounds %struct.pipe, %struct.pipe* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.pipe*, %struct.pipe** %15, align 8
  %251 = call i32 @pipeunlock(%struct.pipe* %250)
  %252 = load %struct.pipe*, %struct.pipe** %15, align 8
  %253 = load %struct.pipe*, %struct.pipe** %16, align 8
  %254 = call i32 @PIPE_MTX(%struct.pipe* %253)
  %255 = load i32, i32* @PRIBIO, align 4
  %256 = load i32, i32* @PCATCH, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @msleep(%struct.pipe* %252, i32 %254, i32 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %242
  br label %480

262:                                              ; preds = %242
  br label %164

263:                                              ; preds = %220
  %264 = load %struct.pipe*, %struct.pipe** %15, align 8
  %265 = getelementptr inbounds %struct.pipe, %struct.pipe* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.pipe*, %struct.pipe** %15, align 8
  %269 = getelementptr inbounds %struct.pipe, %struct.pipe* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %267, %271
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load %struct.uio*, %struct.uio** %8, align 8
  %275 = getelementptr inbounds %struct.uio, %struct.uio* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %263
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* @PIPE_BUF, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 0, i32* %17, align 4
  br label %283

283:                                              ; preds = %282, %278, %263
  %284 = load i32, i32* %17, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %431

286:                                              ; preds = %283
  %287 = load i32, i32* %17, align 4
  %288 = load %struct.uio*, %struct.uio** %8, align 8
  %289 = getelementptr inbounds %struct.uio, %struct.uio* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp sgt i32 %287, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load %struct.uio*, %struct.uio** %8, align 8
  %294 = getelementptr inbounds %struct.uio, %struct.uio* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %18, align 4
  br label %298

296:                                              ; preds = %286
  %297 = load i32, i32* %17, align 4
  store i32 %297, i32* %18, align 4
  br label %298

298:                                              ; preds = %296, %292
  %299 = load %struct.pipe*, %struct.pipe** %15, align 8
  %300 = getelementptr inbounds %struct.pipe, %struct.pipe* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.pipe*, %struct.pipe** %15, align 8
  %304 = getelementptr inbounds %struct.pipe, %struct.pipe* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %302, %306
  store i32 %307, i32* %19, align 4
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %18, align 4
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %298
  %312 = load i32, i32* %18, align 4
  store i32 %312, i32* %19, align 4
  br label %313

313:                                              ; preds = %311, %298
  %314 = load %struct.pipe*, %struct.pipe** %16, align 8
  %315 = call i32 @PIPE_UNLOCK(%struct.pipe* %314)
  %316 = load %struct.pipe*, %struct.pipe** %15, align 8
  %317 = getelementptr inbounds %struct.pipe, %struct.pipe* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.pipe*, %struct.pipe** %15, align 8
  %321 = getelementptr inbounds %struct.pipe, %struct.pipe* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %319, i64 %324
  %326 = load i32, i32* %19, align 4
  %327 = load %struct.uio*, %struct.uio** %8, align 8
  %328 = call i32 @uiomove(i32* %325, i32 %326, %struct.uio* %327)
  store i32 %328, i32* %12, align 4
  %329 = load %struct.pipe*, %struct.pipe** %16, align 8
  %330 = call i32 @PIPE_LOCK(%struct.pipe* %329)
  %331 = load i32, i32* %12, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %365

333:                                              ; preds = %313
  %334 = load i32, i32* %19, align 4
  %335 = load i32, i32* %18, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %365

337:                                              ; preds = %333
  %338 = load %struct.pipe*, %struct.pipe** %15, align 8
  %339 = getelementptr inbounds %struct.pipe, %struct.pipe* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %19, align 4
  %343 = add nsw i32 %341, %342
  %344 = load %struct.pipe*, %struct.pipe** %15, align 8
  %345 = getelementptr inbounds %struct.pipe, %struct.pipe* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp eq i32 %343, %347
  %349 = zext i1 %348 to i32
  %350 = call i32 @KASSERT(i32 %349, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %351 = load %struct.pipe*, %struct.pipe** %16, align 8
  %352 = call i32 @PIPE_UNLOCK(%struct.pipe* %351)
  %353 = load %struct.pipe*, %struct.pipe** %15, align 8
  %354 = getelementptr inbounds %struct.pipe, %struct.pipe* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %18, align 4
  %359 = load i32, i32* %19, align 4
  %360 = sub nsw i32 %358, %359
  %361 = load %struct.uio*, %struct.uio** %8, align 8
  %362 = call i32 @uiomove(i32* %357, i32 %360, %struct.uio* %361)
  store i32 %362, i32* %12, align 4
  %363 = load %struct.pipe*, %struct.pipe** %16, align 8
  %364 = call i32 @PIPE_LOCK(%struct.pipe* %363)
  br label %365

365:                                              ; preds = %337, %333, %313
  %366 = load i32, i32* %12, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %424

368:                                              ; preds = %365
  %369 = load i32, i32* %18, align 4
  %370 = load %struct.pipe*, %struct.pipe** %15, align 8
  %371 = getelementptr inbounds %struct.pipe, %struct.pipe* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %373, %369
  store i32 %374, i32* %372, align 8
  %375 = load %struct.pipe*, %struct.pipe** %15, align 8
  %376 = getelementptr inbounds %struct.pipe, %struct.pipe* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.pipe*, %struct.pipe** %15, align 8
  %380 = getelementptr inbounds %struct.pipe, %struct.pipe* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp sge i32 %378, %382
  br i1 %383, label %384, label %406

384:                                              ; preds = %368
  %385 = load %struct.pipe*, %struct.pipe** %15, align 8
  %386 = getelementptr inbounds %struct.pipe, %struct.pipe* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %18, align 4
  %390 = load i32, i32* %19, align 4
  %391 = sub nsw i32 %389, %390
  %392 = load %struct.pipe*, %struct.pipe** %15, align 8
  %393 = getelementptr inbounds %struct.pipe, %struct.pipe* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %391, %395
  %397 = icmp eq i32 %388, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @KASSERT(i32 %398, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %400 = load i32, i32* %18, align 4
  %401 = load i32, i32* %19, align 4
  %402 = sub nsw i32 %400, %401
  %403 = load %struct.pipe*, %struct.pipe** %15, align 8
  %404 = getelementptr inbounds %struct.pipe, %struct.pipe* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 2
  store i32 %402, i32* %405, align 8
  br label %406

406:                                              ; preds = %384, %368
  %407 = load i32, i32* %18, align 4
  %408 = load %struct.pipe*, %struct.pipe** %15, align 8
  %409 = getelementptr inbounds %struct.pipe, %struct.pipe* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, %407
  store i32 %412, i32* %410, align 4
  %413 = load %struct.pipe*, %struct.pipe** %15, align 8
  %414 = getelementptr inbounds %struct.pipe, %struct.pipe* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.pipe*, %struct.pipe** %15, align 8
  %418 = getelementptr inbounds %struct.pipe, %struct.pipe* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp sle i32 %416, %420
  %422 = zext i1 %421 to i32
  %423 = call i32 @KASSERT(i32 %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %424

424:                                              ; preds = %406, %365
  %425 = load %struct.pipe*, %struct.pipe** %15, align 8
  %426 = call i32 @pipeunlock(%struct.pipe* %425)
  %427 = load i32, i32* %12, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  br label %480

430:                                              ; preds = %424
  br label %479

431:                                              ; preds = %283
  %432 = load %struct.pipe*, %struct.pipe** %15, align 8
  %433 = getelementptr inbounds %struct.pipe, %struct.pipe* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @PIPE_WANTR, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %431
  %439 = load i32, i32* @PIPE_WANTR, align 4
  %440 = xor i32 %439, -1
  %441 = load %struct.pipe*, %struct.pipe** %15, align 8
  %442 = getelementptr inbounds %struct.pipe, %struct.pipe* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 8
  %444 = and i32 %443, %440
  store i32 %444, i32* %442, align 8
  %445 = load %struct.pipe*, %struct.pipe** %15, align 8
  %446 = call i32 @wakeup(%struct.pipe* %445)
  br label %447

447:                                              ; preds = %438, %431
  %448 = load %struct.file*, %struct.file** %7, align 8
  %449 = getelementptr inbounds %struct.file, %struct.file* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @FNONBLOCK, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %447
  %455 = load i32, i32* @EAGAIN, align 4
  store i32 %455, i32* %12, align 4
  %456 = load %struct.pipe*, %struct.pipe** %15, align 8
  %457 = call i32 @pipeunlock(%struct.pipe* %456)
  br label %480

458:                                              ; preds = %447
  %459 = load %struct.pipe*, %struct.pipe** %15, align 8
  %460 = call i32 @pipeselwakeup(%struct.pipe* %459)
  %461 = load i32, i32* @PIPE_WANTW, align 4
  %462 = load %struct.pipe*, %struct.pipe** %15, align 8
  %463 = getelementptr inbounds %struct.pipe, %struct.pipe* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = or i32 %464, %461
  store i32 %465, i32* %463, align 8
  %466 = load %struct.pipe*, %struct.pipe** %15, align 8
  %467 = call i32 @pipeunlock(%struct.pipe* %466)
  %468 = load %struct.pipe*, %struct.pipe** %15, align 8
  %469 = load %struct.pipe*, %struct.pipe** %16, align 8
  %470 = call i32 @PIPE_MTX(%struct.pipe* %469)
  %471 = load i32, i32* @PRIBIO, align 4
  %472 = load i32, i32* @PCATCH, align 4
  %473 = or i32 %471, %472
  %474 = call i32 @msleep(%struct.pipe* %468, i32 %470, i32 %473, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %474, i32* %12, align 4
  %475 = load i32, i32* %12, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %458
  br label %480

478:                                              ; preds = %458
  br label %479

479:                                              ; preds = %478, %430
  br label %164

480:                                              ; preds = %477, %454, %429, %261, %218, %178, %164
  %481 = load %struct.pipe*, %struct.pipe** %15, align 8
  %482 = call i32 @pipelock(%struct.pipe* %481, i32 0)
  %483 = load %struct.pipe*, %struct.pipe** %15, align 8
  %484 = getelementptr inbounds %struct.pipe, %struct.pipe* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = add nsw i64 %485, -1
  store i64 %486, i64* %484, align 8
  %487 = load %struct.pipe*, %struct.pipe** %15, align 8
  %488 = getelementptr inbounds %struct.pipe, %struct.pipe* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %509

491:                                              ; preds = %480
  %492 = load %struct.pipe*, %struct.pipe** %15, align 8
  %493 = getelementptr inbounds %struct.pipe, %struct.pipe* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @PIPE_WANT, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %509

498:                                              ; preds = %491
  %499 = load i32, i32* @PIPE_WANT, align 4
  %500 = load i32, i32* @PIPE_WANTR, align 4
  %501 = or i32 %499, %500
  %502 = xor i32 %501, -1
  %503 = load %struct.pipe*, %struct.pipe** %15, align 8
  %504 = getelementptr inbounds %struct.pipe, %struct.pipe* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 8
  %506 = and i32 %505, %502
  store i32 %506, i32* %504, align 8
  %507 = load %struct.pipe*, %struct.pipe** %15, align 8
  %508 = call i32 @wakeup(%struct.pipe* %507)
  br label %533

509:                                              ; preds = %491, %480
  %510 = load %struct.pipe*, %struct.pipe** %15, align 8
  %511 = getelementptr inbounds %struct.pipe, %struct.pipe* %510, i32 0, i32 3
  %512 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = icmp sgt i32 %513, 0
  br i1 %514, label %515, label %532

515:                                              ; preds = %509
  %516 = load %struct.pipe*, %struct.pipe** %15, align 8
  %517 = getelementptr inbounds %struct.pipe, %struct.pipe* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @PIPE_WANTR, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %531

522:                                              ; preds = %515
  %523 = load i32, i32* @PIPE_WANTR, align 4
  %524 = xor i32 %523, -1
  %525 = load %struct.pipe*, %struct.pipe** %15, align 8
  %526 = getelementptr inbounds %struct.pipe, %struct.pipe* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = and i32 %527, %524
  store i32 %528, i32* %526, align 8
  %529 = load %struct.pipe*, %struct.pipe** %15, align 8
  %530 = call i32 @wakeup(%struct.pipe* %529)
  br label %531

531:                                              ; preds = %522, %515
  br label %532

532:                                              ; preds = %531, %509
  br label %533

533:                                              ; preds = %532, %498
  %534 = load %struct.uio*, %struct.uio** %8, align 8
  %535 = getelementptr inbounds %struct.uio, %struct.uio* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* %14, align 4
  %538 = icmp ne i32 %536, %537
  br i1 %538, label %539, label %544

539:                                              ; preds = %533
  %540 = load i32, i32* %12, align 4
  %541 = load i32, i32* @EPIPE, align 4
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %544

543:                                              ; preds = %539
  store i32 0, i32* %12, align 4
  br label %544

544:                                              ; preds = %543, %539, %533
  %545 = load i32, i32* %12, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %551

547:                                              ; preds = %544
  %548 = load %struct.pipe*, %struct.pipe** %15, align 8
  %549 = getelementptr inbounds %struct.pipe, %struct.pipe* %548, i32 0, i32 4
  %550 = call i32 @vfs_timestamp(i32* %549)
  br label %551

551:                                              ; preds = %547, %544
  %552 = load %struct.pipe*, %struct.pipe** %15, align 8
  %553 = getelementptr inbounds %struct.pipe, %struct.pipe* %552, i32 0, i32 3
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %560

557:                                              ; preds = %551
  %558 = load %struct.pipe*, %struct.pipe** %15, align 8
  %559 = call i32 @pipeselwakeup(%struct.pipe* %558)
  br label %560

560:                                              ; preds = %557, %551
  %561 = load %struct.pipe*, %struct.pipe** %15, align 8
  %562 = call i32 @pipeunlock(%struct.pipe* %561)
  %563 = load %struct.pipe*, %struct.pipe** %16, align 8
  %564 = call i32 @PIPE_UNLOCK(%struct.pipe* %563)
  %565 = load i32, i32* %12, align 4
  store i32 %565, i32* %6, align 4
  br label %566

566:                                              ; preds = %560, %147, %48, %31
  %567 = load i32, i32* %6, align 4
  ret i32 %567
}

declare dso_local %struct.pipe* @PIPE_PEER(%struct.pipe*) #1

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @pipelock(%struct.pipe*, i32) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @pipeunlock(%struct.pipe*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pipespace(%struct.pipe*, i32) #1

declare dso_local i32 @pipe_direct_write(%struct.pipe*, %struct.uio*) #1

declare dso_local i32 @wakeup(%struct.pipe*) #1

declare dso_local i32 @pipeselwakeup(%struct.pipe*) #1

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
