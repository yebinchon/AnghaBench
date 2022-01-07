; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_kern_lio_listio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_kern_lio_listio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32, i32 }
%struct.aiocb = type { i32 }
%struct.sigevent = type { i32 }
%struct.aiocb_ops = type { i32 }
%struct.aioliojob = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kevent = type { i32, i64, i64, i32, i32 }

@LIO_NOWAIT = common dso_local global i32 0, align 4
@LIO_WAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@max_aio_queue_per_proc = common dso_local global i32 0, align 4
@aiolio_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SIGEV_KEVENT = common dso_local global i64 0, align 8
@EVFILT_LIO = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_FLAG1 = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i64 0, align 8
@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@LIOJ_SIGNAL = common dso_local global i32 0, align 4
@lioj_list = common dso_local global i32 0, align 4
@LIO_NOP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@KAIO_WAKEUP = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aiospn\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@LIOJ_KEVENT_POSTED = common dso_local global i32 0, align 4
@LIOJ_SIGNAL_POSTED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.aiocb**, %struct.aiocb**, i32, %struct.sigevent*, %struct.aiocb_ops*)* @kern_lio_listio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_lio_listio(%struct.thread* %0, i32 %1, %struct.aiocb** %2, %struct.aiocb** %3, i32 %4, %struct.sigevent* %5, %struct.aiocb_ops* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aiocb**, align 8
  %12 = alloca %struct.aiocb**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sigevent*, align 8
  %15 = alloca %struct.aiocb_ops*, align 8
  %16 = alloca %struct.proc*, align 8
  %17 = alloca %struct.aiocb*, align 8
  %18 = alloca %struct.kaioinfo*, align 8
  %19 = alloca %struct.aioliojob*, align 8
  %20 = alloca %struct.kevent, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.aiocb** %2, %struct.aiocb*** %11, align 8
  store %struct.aiocb** %3, %struct.aiocb*** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sigevent* %5, %struct.sigevent** %14, align 8
  store %struct.aiocb_ops* %6, %struct.aiocb_ops** %15, align 8
  %25 = load %struct.thread*, %struct.thread** %9, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load %struct.proc*, %struct.proc** %26, align 8
  store %struct.proc* %27, %struct.proc** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @LIO_NOWAIT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @LIO_WAIT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %376

37:                                               ; preds = %31, %7
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @max_aio_queue_per_proc, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %8, align 4
  br label %376

46:                                               ; preds = %40
  %47 = load %struct.proc*, %struct.proc** %16, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load %struct.kaioinfo*, %struct.kaioinfo** %48, align 8
  %50 = icmp eq %struct.kaioinfo* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.proc*, %struct.proc** %16, align 8
  %53 = call i32 @aio_init_aioinfo(%struct.proc* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.proc*, %struct.proc** %16, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 0
  %57 = load %struct.kaioinfo*, %struct.kaioinfo** %56, align 8
  store %struct.kaioinfo* %57, %struct.kaioinfo** %18, align 8
  %58 = load i32, i32* @aiolio_zone, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = call %struct.aioliojob* @uma_zalloc(i32 %58, i32 %59)
  store %struct.aioliojob* %60, %struct.aioliojob** %19, align 8
  %61 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %62 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %64 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %66 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %68 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %67, i32 0, i32 4
  %69 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %70 = call i32 @AIO_MTX(%struct.kaioinfo* %69)
  %71 = call i32 @knlist_init_mtx(i32* %68, i32 %70)
  %72 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %73 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %72, i32 0, i32 3
  %74 = call i32 @ksiginfo_init(i32* %73)
  %75 = load %struct.sigevent*, %struct.sigevent** %14, align 8
  %76 = icmp ne %struct.sigevent* %75, null
  br i1 %76, label %77, label %177

77:                                               ; preds = %54
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @LIO_NOWAIT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %177

81:                                               ; preds = %77
  %82 = load %struct.sigevent*, %struct.sigevent** %14, align 8
  %83 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %84 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %83, i32 0, i32 5
  %85 = call i32 @bcopy(%struct.sigevent* %82, %struct.TYPE_5__* %84, i32 24)
  %86 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %87 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SIGEV_KEVENT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %129

92:                                               ; preds = %81
  %93 = call i32 @memset(%struct.kevent* %20, i32 0, i32 32)
  %94 = load i32, i32* @EVFILT_LIO, align 4
  %95 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 4
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @EV_ADD, align 4
  %97 = load i32, i32* @EV_ENABLE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @EV_FLAG1, align 4
  %100 = or i32 %98, %99
  %101 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load %struct.aiocb**, %struct.aiocb*** %11, align 8
  %103 = ptrtoint %struct.aiocb** %102 to i64
  %104 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  %105 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %106 = ptrtoint %struct.aioliojob* %105 to i64
  %107 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 2
  store i64 %106, i64* %107, align 8
  %108 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %109 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %115 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.thread*, %struct.thread** %9, align 8
  %119 = load i32, i32* @M_WAITOK, align 4
  %120 = call i32 @kqfd_register(i32 %117, %struct.kevent* %20, %struct.thread* %118, i32 %119)
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %92
  %124 = load i32, i32* @aiolio_zone, align 4
  %125 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %126 = call i32 @uma_zfree(i32 %124, %struct.aioliojob* %125)
  %127 = load i32, i32* %21, align 4
  store i32 %127, i32* %8, align 4
  br label %376

128:                                              ; preds = %92
  br label %176

129:                                              ; preds = %81
  %130 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %131 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SIGEV_NONE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %175

137:                                              ; preds = %129
  %138 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %139 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SIGEV_SIGNAL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %146 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %144, %137
  %152 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %153 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @_SIG_VALID(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* @aiolio_zone, align 4
  %160 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %161 = call i32 @uma_zfree(i32 %159, %struct.aioliojob* %160)
  %162 = load i32, i32* @EINVAL, align 4
  store i32 %162, i32* %8, align 4
  br label %376

163:                                              ; preds = %151
  %164 = load i32, i32* @LIOJ_SIGNAL, align 4
  %165 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %166 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %174

169:                                              ; preds = %144
  %170 = load i32, i32* @aiolio_zone, align 4
  %171 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %172 = call i32 @uma_zfree(i32 %170, %struct.aioliojob* %171)
  %173 = load i32, i32* @EINVAL, align 4
  store i32 %173, i32* %8, align 4
  br label %376

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %136
  br label %176

176:                                              ; preds = %175, %128
  br label %177

177:                                              ; preds = %176, %77, %54
  %178 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %179 = call i32 @AIO_LOCK(%struct.kaioinfo* %178)
  %180 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %181 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %180, i32 0, i32 0
  %182 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %183 = load i32, i32* @lioj_list, align 4
  %184 = call i32 @TAILQ_INSERT_TAIL(i32* %181, %struct.aioliojob* %182, i32 %183)
  %185 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %186 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %188 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %187)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %189

189:                                              ; preds = %223, %177
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %189
  %194 = load %struct.aiocb**, %struct.aiocb*** %12, align 8
  %195 = load i32, i32* %24, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.aiocb*, %struct.aiocb** %194, i64 %196
  %198 = load %struct.aiocb*, %struct.aiocb** %197, align 8
  store %struct.aiocb* %198, %struct.aiocb** %17, align 8
  %199 = load %struct.aiocb*, %struct.aiocb** %17, align 8
  %200 = icmp ne %struct.aiocb* %199, null
  br i1 %200, label %201, label %222

201:                                              ; preds = %193
  %202 = load %struct.thread*, %struct.thread** %9, align 8
  %203 = load %struct.aiocb*, %struct.aiocb** %17, align 8
  %204 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %205 = load i32, i32* @LIO_NOP, align 4
  %206 = load %struct.aiocb_ops*, %struct.aiocb_ops** %15, align 8
  %207 = call i32 @aio_aqueue(%struct.thread* %202, %struct.aiocb* %203, %struct.aioliojob* %204, i32 %205, %struct.aiocb_ops* %206)
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* @EAGAIN, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %22, align 4
  br label %221

214:                                              ; preds = %201
  %215 = load i32, i32* %21, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %23, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %23, align 4
  br label %220

220:                                              ; preds = %217, %214
  br label %221

221:                                              ; preds = %220, %211
  br label %222

222:                                              ; preds = %221, %193
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %24, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %24, align 4
  br label %189

226:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  %227 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %228 = call i32 @AIO_LOCK(%struct.kaioinfo* %227)
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* @LIO_WAIT, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %267

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %265, %232
  %234 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %235 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %239 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %237, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %233
  %243 = load i32, i32* @KAIO_WAKEUP, align 4
  %244 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %245 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load %struct.proc*, %struct.proc** %16, align 8
  %249 = getelementptr inbounds %struct.proc, %struct.proc* %248, i32 0, i32 0
  %250 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %251 = call i32 @AIO_MTX(%struct.kaioinfo* %250)
  %252 = load i32, i32* @PRIBIO, align 4
  %253 = load i32, i32* @PCATCH, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @msleep(%struct.kaioinfo** %249, i32 %251, i32 %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* @ERESTART, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %242
  %260 = load i32, i32* @EINTR, align 4
  store i32 %260, i32* %21, align 4
  br label %261

261:                                              ; preds = %259, %242
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %266

265:                                              ; preds = %261
  br label %233

266:                                              ; preds = %264, %233
  br label %330

267:                                              ; preds = %226
  %268 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %269 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %273 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %271, %274
  br i1 %275, label %276, label %329

276:                                              ; preds = %267
  %277 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %278 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @SIGEV_KEVENT, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %276
  %284 = load i32, i32* @LIOJ_KEVENT_POSTED, align 4
  %285 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %286 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %290 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %289, i32 0, i32 4
  %291 = call i32 @KNOTE_LOCKED(i32* %290, i32 1)
  br label %292

292:                                              ; preds = %283, %276
  %293 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %294 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @LIOJ_SIGNAL, align 4
  %297 = load i32, i32* @LIOJ_SIGNAL_POSTED, align 4
  %298 = or i32 %296, %297
  %299 = and i32 %295, %298
  %300 = load i32, i32* @LIOJ_SIGNAL, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %328

302:                                              ; preds = %292
  %303 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %304 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @SIGEV_SIGNAL, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %316, label %309

309:                                              ; preds = %302
  %310 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %311 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %309, %302
  %317 = load %struct.proc*, %struct.proc** %16, align 8
  %318 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %319 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %318, i32 0, i32 5
  %320 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %321 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %320, i32 0, i32 3
  %322 = call i32 @aio_sendsig(%struct.proc* %317, %struct.TYPE_5__* %319, i32* %321)
  %323 = load i32, i32* @LIOJ_SIGNAL_POSTED, align 4
  %324 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %325 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %316, %309, %292
  br label %329

329:                                              ; preds = %328, %267
  br label %330

330:                                              ; preds = %329, %266
  %331 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %332 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %332, align 4
  %335 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %336 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %330
  %340 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %341 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %340, i32 0, i32 0
  %342 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %343 = load i32, i32* @lioj_list, align 4
  %344 = call i32 @TAILQ_REMOVE(i32* %341, %struct.aioliojob* %342, i32 %343)
  %345 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %346 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %345, i32 0, i32 4
  %347 = load i32, i32* @curthread, align 4
  %348 = call i32 @knlist_delete(i32* %346, i32 %347, i32 1)
  %349 = load %struct.proc*, %struct.proc** %16, align 8
  %350 = call i32 @PROC_LOCK(%struct.proc* %349)
  %351 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %352 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %351, i32 0, i32 3
  %353 = call i32 @sigqueue_take(i32* %352)
  %354 = load %struct.proc*, %struct.proc** %16, align 8
  %355 = call i32 @PROC_UNLOCK(%struct.proc* %354)
  %356 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %357 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %356)
  %358 = load i32, i32* @aiolio_zone, align 4
  %359 = load %struct.aioliojob*, %struct.aioliojob** %19, align 8
  %360 = call i32 @uma_zfree(i32 %358, %struct.aioliojob* %359)
  br label %364

361:                                              ; preds = %330
  %362 = load %struct.kaioinfo*, %struct.kaioinfo** %18, align 8
  %363 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %362)
  br label %364

364:                                              ; preds = %361, %339
  %365 = load i32, i32* %23, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = load i32, i32* @EIO, align 4
  store i32 %368, i32* %8, align 4
  br label %376

369:                                              ; preds = %364
  %370 = load i32, i32* %22, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = load i32, i32* @EAGAIN, align 4
  store i32 %373, i32* %8, align 4
  br label %376

374:                                              ; preds = %369
  %375 = load i32, i32* %21, align 4
  store i32 %375, i32* %8, align 4
  br label %376

376:                                              ; preds = %374, %372, %367, %169, %158, %123, %44, %35
  %377 = load i32, i32* %8, align 4
  ret i32 %377
}

declare dso_local i32 @aio_init_aioinfo(%struct.proc*) #1

declare dso_local %struct.aioliojob* @uma_zalloc(i32, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @AIO_MTX(%struct.kaioinfo*) #1

declare dso_local i32 @ksiginfo_init(i32*) #1

declare dso_local i32 @bcopy(%struct.sigevent*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.kevent*, i32, i32) #1

declare dso_local i32 @kqfd_register(i32, %struct.kevent*, %struct.thread*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.aioliojob*) #1

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aioliojob*, i32) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @aio_aqueue(%struct.thread*, %struct.aiocb*, %struct.aioliojob*, i32, %struct.aiocb_ops*) #1

declare dso_local i32 @msleep(%struct.kaioinfo**, i32, i32, i8*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @aio_sendsig(%struct.proc*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aioliojob*, i32) #1

declare dso_local i32 @knlist_delete(i32*, i32, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_take(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
