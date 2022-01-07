; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_aqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_aqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i64, i32, i32 }
%struct.aiocb = type { i32 }
%struct.aioliojob = type { i32 }
%struct.aiocb_ops = type { i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, %struct.TYPE_12__*)*, i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)* }
%struct.TYPE_12__ = type { i64, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.file = type { %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.kaiocb = type { i32, i32, %struct.aioliojob*, i32, %struct.proc*, %struct.TYPE_12__, %struct.aiocb*, i64, %struct.file*, i32 }
%struct.kevent = type { i64, i32, i64, i32, i32 }

@num_queue_count = common dso_local global i64 0, align 8
@max_queue_count = common dso_local global i64 0, align 8
@max_aio_queue_per_proc = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@aiocb_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIGEV_KEVENT = common dso_local global i64 0, align 8
@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@SIGEV_NONE = common dso_local global i64 0, align 8
@cap_pwrite_rights = common dso_local global i32 0, align 4
@cap_pread_rights = common dso_local global i32 0, align 4
@cap_fsync_rights = common dso_local global i32 0, align 4
@cap_no_rights = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@aio_job_mtx = common dso_local global i32 0, align 4
@jobrefid = common dso_local global i32 0, align 4
@jobseqno = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@EVFILT_AIO = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_FLAG1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@KAIOCB_QUEUEING = common dso_local global i32 0, align 4
@aio_process_mlock = common dso_local global i32 0, align 4
@allist = common dso_local global i32 0, align 4
@KAIOCB_FINISHED = common dso_local global i32 0, align 4
@plist = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_aqueue(%struct.thread* %0, %struct.aiocb* %1, %struct.aioliojob* %2, i32 %3, %struct.aiocb_ops* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.aiocb*, align 8
  %9 = alloca %struct.aioliojob*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aiocb_ops*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.kaiocb*, align 8
  %15 = alloca %struct.kaioinfo*, align 8
  %16 = alloca %struct.kevent, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.aiocb* %1, %struct.aiocb** %8, align 8
  store %struct.aioliojob* %2, %struct.aioliojob** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.aiocb_ops* %4, %struct.aiocb_ops** %11, align 8
  %23 = load %struct.thread*, %struct.thread** %7, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load %struct.proc*, %struct.proc** %24, align 8
  store %struct.proc* %25, %struct.proc** %12, align 8
  %26 = load %struct.proc*, %struct.proc** %12, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 0
  %28 = load %struct.kaioinfo*, %struct.kaioinfo** %27, align 8
  %29 = icmp eq %struct.kaioinfo* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.proc*, %struct.proc** %12, align 8
  %32 = call i32 @aio_init_aioinfo(%struct.proc* %31)
  br label %33

33:                                               ; preds = %30, %5
  %34 = load %struct.proc*, %struct.proc** %12, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 0
  %36 = load %struct.kaioinfo*, %struct.kaioinfo** %35, align 8
  store %struct.kaioinfo* %36, %struct.kaioinfo** %15, align 8
  %37 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %38 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %37, i32 0, i32 3
  %39 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %38, align 8
  %40 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %41 = call i32 %39(%struct.aiocb* %40, i32 -1)
  %42 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %43 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %42, i32 0, i32 2
  %44 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %43, align 8
  %45 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %46 = call i32 %44(%struct.aiocb* %45, i32 0)
  %47 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %48 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %48, align 8
  %50 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %51 = call i32 %49(%struct.aiocb* %50, i32 -1)
  %52 = load i64, i64* @num_queue_count, align 8
  %53 = load i64, i64* @max_queue_count, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %33
  %56 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %57 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @max_aio_queue_per_proc, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55, %33
  %62 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %63 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %62, i32 0, i32 2
  %64 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %63, align 8
  %65 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = call i32 %64(%struct.aiocb* %65, i32 %66)
  %68 = load i32, i32* @EAGAIN, align 4
  store i32 %68, i32* %6, align 4
  br label %505

69:                                               ; preds = %55
  %70 = load i32, i32* @aiocb_zone, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.kaiocb* @uma_zalloc(i32 %70, i32 %73)
  store %struct.kaiocb* %74, %struct.kaiocb** %14, align 8
  %75 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %76 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %75, i32 0, i32 1
  %77 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %78 = call i32 @AIO_MTX(%struct.kaioinfo* %77)
  %79 = call i32 @knlist_init_mtx(i32* %76, i32 %78)
  %80 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %81 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %80, i32 0, i32 1
  %82 = load i32 (%struct.aiocb*, %struct.TYPE_12__*)*, i32 (%struct.aiocb*, %struct.TYPE_12__*)** %81, align 8
  %83 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %84 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %85 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %84, i32 0, i32 5
  %86 = call i32 %82(%struct.aiocb* %83, %struct.TYPE_12__* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %69
  %90 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %91 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %90, i32 0, i32 2
  %92 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %91, align 8
  %93 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 %92(%struct.aiocb* %93, i32 %94)
  %96 = load i32, i32* @aiocb_zone, align 4
  %97 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %98 = call i32 @uma_zfree(i32 %96, %struct.kaiocb* %97)
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %6, align 4
  br label %505

100:                                              ; preds = %69
  %101 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %102 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IOSIZE_MAX, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32, i32* @aiocb_zone, align 4
  %109 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %110 = call i32 @uma_zfree(i32 %108, %struct.kaiocb* %109)
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %6, align 4
  br label %505

112:                                              ; preds = %100
  %113 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %114 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SIGEV_KEVENT, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %112
  %121 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %122 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SIGEV_SIGNAL, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %120
  %129 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %130 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %128
  %137 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %138 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SIGEV_NONE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %146 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %145, i32 0, i32 2
  %147 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %146, align 8
  %148 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %149 = load i32, i32* @EINVAL, align 4
  %150 = call i32 %147(%struct.aiocb* %148, i32 %149)
  %151 = load i32, i32* @aiocb_zone, align 4
  %152 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %153 = call i32 @uma_zfree(i32 %151, %struct.kaiocb* %152)
  %154 = load i32, i32* @EINVAL, align 4
  store i32 %154, i32* %6, align 4
  br label %505

155:                                              ; preds = %136, %128, %120, %112
  %156 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %157 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SIGEV_SIGNAL, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %171, label %163

163:                                              ; preds = %155
  %164 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %165 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %163, %155
  %172 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %173 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @_SIG_VALID(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @aiocb_zone, align 4
  %181 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %182 = call i32 @uma_zfree(i32 %180, %struct.kaiocb* %181)
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* %6, align 4
  br label %505

184:                                              ; preds = %171, %163
  %185 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %186 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %185, i32 0, i32 9
  %187 = call i32 @ksiginfo_init(i32* %186)
  %188 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %189 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %190 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %189, i32 0, i32 6
  store %struct.aiocb* %188, %struct.aiocb** %190, align 8
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 131
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %196 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %184
  %199 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %200 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %17, align 4
  %203 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %204 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %17, align 4
  switch i32 %207, label %225 [
    i32 128, label %208
    i32 130, label %212
    i32 129, label %216
    i32 132, label %220
    i32 131, label %221
  ]

208:                                              ; preds = %198
  %209 = load %struct.thread*, %struct.thread** %7, align 8
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @fget_write(%struct.thread* %209, i32 %210, i32* @cap_pwrite_rights, %struct.file** %13)
  store i32 %211, i32* %18, align 4
  br label %227

212:                                              ; preds = %198
  %213 = load %struct.thread*, %struct.thread** %7, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @fget_read(%struct.thread* %213, i32 %214, i32* @cap_pread_rights, %struct.file** %13)
  store i32 %215, i32* %18, align 4
  br label %227

216:                                              ; preds = %198
  %217 = load %struct.thread*, %struct.thread** %7, align 8
  %218 = load i32, i32* %19, align 4
  %219 = call i32 @fget(%struct.thread* %217, i32 %218, i32* @cap_fsync_rights, %struct.file** %13)
  store i32 %219, i32* %18, align 4
  br label %227

220:                                              ; preds = %198
  store %struct.file* null, %struct.file** %13, align 8
  br label %227

221:                                              ; preds = %198
  %222 = load %struct.thread*, %struct.thread** %7, align 8
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @fget(%struct.thread* %222, i32 %223, i32* @cap_no_rights, %struct.file** %13)
  store i32 %224, i32* %18, align 4
  br label %227

225:                                              ; preds = %198
  %226 = load i32, i32* @EINVAL, align 4
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %225, %221, %220, %216, %212, %208
  %228 = load i32, i32* %18, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %227
  %231 = load i32, i32* @aiocb_zone, align 4
  %232 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %233 = call i32 @uma_zfree(i32 %231, %struct.kaiocb* %232)
  %234 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %235 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %234, i32 0, i32 2
  %236 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %235, align 8
  %237 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %238 = load i32, i32* %18, align 4
  %239 = call i32 %236(%struct.aiocb* %237, i32 %238)
  %240 = load i32, i32* %18, align 4
  store i32 %240, i32* %6, align 4
  br label %505

241:                                              ; preds = %227
  %242 = load i32, i32* %17, align 4
  %243 = icmp eq i32 %242, 129
  br i1 %243, label %244, label %251

244:                                              ; preds = %241
  %245 = load %struct.file*, %struct.file** %13, align 8
  %246 = getelementptr inbounds %struct.file, %struct.file* %245, i32 0, i32 1
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = icmp eq %struct.TYPE_11__* %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i32, i32* @EINVAL, align 4
  store i32 %250, i32* %18, align 4
  br label %483

251:                                              ; preds = %244, %241
  %252 = load i32, i32* %17, align 4
  %253 = icmp eq i32 %252, 130
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %17, align 4
  %256 = icmp eq i32 %255, 128
  br i1 %256, label %257, label %278

257:                                              ; preds = %254, %251
  %258 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %259 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %257
  %264 = load %struct.file*, %struct.file** %13, align 8
  %265 = getelementptr inbounds %struct.file, %struct.file* %264, i32 0, i32 1
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = icmp eq %struct.TYPE_11__* %266, null
  br i1 %267, label %276, label %268

268:                                              ; preds = %263
  %269 = load %struct.file*, %struct.file** %13, align 8
  %270 = getelementptr inbounds %struct.file, %struct.file* %269, i32 0, i32 1
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @VCHR, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %268, %263
  %277 = load i32, i32* @EINVAL, align 4
  store i32 %277, i32* %18, align 4
  br label %483

278:                                              ; preds = %268, %257, %254
  %279 = load %struct.file*, %struct.file** %13, align 8
  %280 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %281 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %280, i32 0, i32 8
  store %struct.file* %279, %struct.file** %281, align 8
  %282 = call i32 @mtx_lock(i32* @aio_job_mtx)
  %283 = load i32, i32* @jobrefid, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @jobrefid, align 4
  store i32 %283, i32* %21, align 4
  %285 = load i32, i32* @jobseqno, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* @jobseqno, align 4
  %287 = sext i32 %285 to i64
  %288 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %289 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %288, i32 0, i32 7
  store i64 %287, i64* %289, align 8
  %290 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %291 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %292 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %291, i32 0, i32 0
  %293 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %292, align 8
  %294 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %295 = load i32, i32* %21, align 4
  %296 = call i32 %293(%struct.aiocb* %294, i32 %295)
  store i32 %296, i32* %18, align 4
  %297 = load i32, i32* %18, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %278
  %300 = load i32, i32* @EINVAL, align 4
  store i32 %300, i32* %18, align 4
  br label %483

301:                                              ; preds = %278
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = inttoptr i64 %303 to i8*
  %305 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %306 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  store i8* %304, i8** %308, align 8
  %309 = load i32, i32* %17, align 4
  %310 = icmp eq i32 %309, 131
  br i1 %310, label %311, label %318

311:                                              ; preds = %301
  %312 = load %struct.file*, %struct.file** %13, align 8
  %313 = load %struct.thread*, %struct.thread** %7, align 8
  %314 = call i32 @fdrop(%struct.file* %312, %struct.thread* %313)
  %315 = load i32, i32* @aiocb_zone, align 4
  %316 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %317 = call i32 @uma_zfree(i32 %315, %struct.kaiocb* %316)
  store i32 0, i32* %6, align 4
  br label %505

318:                                              ; preds = %301
  %319 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %320 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @SIGEV_KEVENT, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %384

327:                                              ; preds = %318
  %328 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %329 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  store i32 %332, i32* %22, align 4
  %333 = load i32, i32* %22, align 4
  %334 = load i32, i32* @EV_CLEAR, align 4
  %335 = load i32, i32* @EV_DISPATCH, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @EV_ONESHOT, align 4
  %338 = or i32 %336, %337
  %339 = xor i32 %338, -1
  %340 = and i32 %333, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %327
  %343 = load i32, i32* @EINVAL, align 4
  store i32 %343, i32* %18, align 4
  br label %483

344:                                              ; preds = %327
  %345 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %346 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %20, align 4
  %350 = call i32 @memset(%struct.kevent* %16, i32 0, i32 32)
  %351 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %352 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %351, i32 0, i32 6
  %353 = load %struct.aiocb*, %struct.aiocb** %352, align 8
  %354 = ptrtoint %struct.aiocb* %353 to i64
  %355 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 0
  store i64 %354, i64* %355, align 8
  %356 = load i32, i32* @EVFILT_AIO, align 4
  %357 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 4
  store i32 %356, i32* %357, align 4
  %358 = load i32, i32* @EV_ADD, align 4
  %359 = load i32, i32* @EV_ENABLE, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @EV_FLAG1, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* %22, align 4
  %364 = or i32 %362, %363
  %365 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 1
  store i32 %364, i32* %365, align 8
  %366 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %367 = ptrtoint %struct.kaiocb* %366 to i64
  %368 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 2
  store i64 %367, i64* %368, align 8
  %369 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %370 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 3
  store i32 %374, i32* %375, align 8
  %376 = load i32, i32* %20, align 4
  %377 = load %struct.thread*, %struct.thread** %7, align 8
  %378 = load i32, i32* @M_WAITOK, align 4
  %379 = call i32 @kqfd_register(i32 %376, %struct.kevent* %16, %struct.thread* %377, i32 %378)
  store i32 %379, i32* %18, align 4
  %380 = load i32, i32* %18, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %344
  br label %483

383:                                              ; preds = %344
  br label %384

384:                                              ; preds = %383, %326
  %385 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %386 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %385, i32 0, i32 2
  %387 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %386, align 8
  %388 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %389 = load i32, i32* @EINPROGRESS, align 4
  %390 = call i32 %387(%struct.aiocb* %388, i32 %389)
  %391 = load i32, i32* @EINPROGRESS, align 4
  %392 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %393 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 4
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  store i32 %391, i32* %395, align 8
  %396 = load %struct.proc*, %struct.proc** %12, align 8
  %397 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %398 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %397, i32 0, i32 4
  store %struct.proc* %396, %struct.proc** %398, align 8
  %399 = load %struct.thread*, %struct.thread** %7, align 8
  %400 = getelementptr inbounds %struct.thread, %struct.thread* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @crhold(i32 %401)
  %403 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %404 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %403, i32 0, i32 3
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* @KAIOCB_QUEUEING, align 4
  %406 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %407 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  %408 = load %struct.aioliojob*, %struct.aioliojob** %9, align 8
  %409 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %410 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %409, i32 0, i32 2
  store %struct.aioliojob* %408, %struct.aioliojob** %410, align 8
  %411 = load i32, i32* %17, align 4
  %412 = icmp eq i32 %411, 132
  br i1 %412, label %413, label %417

413:                                              ; preds = %384
  %414 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %415 = load i32, i32* @aio_process_mlock, align 4
  %416 = call i32 @aio_schedule(%struct.kaiocb* %414, i32 %415)
  store i32 0, i32* %18, align 4
  br label %433

417:                                              ; preds = %384
  %418 = load %struct.file*, %struct.file** %13, align 8
  %419 = getelementptr inbounds %struct.file, %struct.file* %418, i32 0, i32 0
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = icmp eq i32* %422, null
  br i1 %423, label %424, label %428

424:                                              ; preds = %417
  %425 = load %struct.file*, %struct.file** %13, align 8
  %426 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %427 = call i32 @aio_queue_file(%struct.file* %425, %struct.kaiocb* %426)
  store i32 %427, i32* %18, align 4
  br label %432

428:                                              ; preds = %417
  %429 = load %struct.file*, %struct.file** %13, align 8
  %430 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %431 = call i32 @fo_aio_queue(%struct.file* %429, %struct.kaiocb* %430)
  store i32 %431, i32* %18, align 4
  br label %432

432:                                              ; preds = %428, %424
  br label %433

433:                                              ; preds = %432, %413
  %434 = load i32, i32* %18, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  br label %483

437:                                              ; preds = %433
  %438 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %439 = call i32 @AIO_LOCK(%struct.kaioinfo* %438)
  %440 = load i32, i32* @KAIOCB_QUEUEING, align 4
  %441 = xor i32 %440, -1
  %442 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %443 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = and i32 %444, %441
  store i32 %445, i32* %443, align 8
  %446 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %447 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %446, i32 0, i32 2
  %448 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %449 = load i32, i32* @allist, align 4
  %450 = call i32 @TAILQ_INSERT_TAIL(i32* %447, %struct.kaiocb* %448, i32 %449)
  %451 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %452 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = add nsw i64 %453, 1
  store i64 %454, i64* %452, align 8
  %455 = load %struct.aioliojob*, %struct.aioliojob** %9, align 8
  %456 = icmp ne %struct.aioliojob* %455, null
  br i1 %456, label %457, label %462

457:                                              ; preds = %437
  %458 = load %struct.aioliojob*, %struct.aioliojob** %9, align 8
  %459 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  br label %462

462:                                              ; preds = %457, %437
  %463 = call i32 @atomic_add_int(i64* @num_queue_count, i32 1)
  %464 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %465 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @KAIOCB_FINISHED, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %462
  %471 = load %struct.proc*, %struct.proc** %12, align 8
  %472 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %473 = call i32 @aio_bio_done_notify(%struct.proc* %471, %struct.kaiocb* %472)
  br label %480

474:                                              ; preds = %462
  %475 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %476 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %475, i32 0, i32 1
  %477 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %478 = load i32, i32* @plist, align 4
  %479 = call i32 @TAILQ_INSERT_TAIL(i32* %476, %struct.kaiocb* %477, i32 %478)
  br label %480

480:                                              ; preds = %474, %470
  %481 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  %482 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %481)
  store i32 0, i32* %6, align 4
  br label %505

483:                                              ; preds = %436, %382, %342, %299, %276, %249
  %484 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %485 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %484, i32 0, i32 1
  %486 = load i32, i32* @curthread, align 4
  %487 = call i32 @knlist_delete(i32* %485, i32 %486, i32 0)
  %488 = load %struct.file*, %struct.file** %13, align 8
  %489 = icmp ne %struct.file* %488, null
  br i1 %489, label %490, label %494

490:                                              ; preds = %483
  %491 = load %struct.file*, %struct.file** %13, align 8
  %492 = load %struct.thread*, %struct.thread** %7, align 8
  %493 = call i32 @fdrop(%struct.file* %491, %struct.thread* %492)
  br label %494

494:                                              ; preds = %490, %483
  %495 = load i32, i32* @aiocb_zone, align 4
  %496 = load %struct.kaiocb*, %struct.kaiocb** %14, align 8
  %497 = call i32 @uma_zfree(i32 %495, %struct.kaiocb* %496)
  %498 = load %struct.aiocb_ops*, %struct.aiocb_ops** %11, align 8
  %499 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %498, i32 0, i32 2
  %500 = load i32 (%struct.aiocb*, i32)*, i32 (%struct.aiocb*, i32)** %499, align 8
  %501 = load %struct.aiocb*, %struct.aiocb** %8, align 8
  %502 = load i32, i32* %18, align 4
  %503 = call i32 %500(%struct.aiocb* %501, i32 %502)
  %504 = load i32, i32* %18, align 4
  store i32 %504, i32* %6, align 4
  br label %505

505:                                              ; preds = %494, %480, %311, %230, %179, %144, %107, %89, %61
  %506 = load i32, i32* %6, align 4
  ret i32 %506
}

declare dso_local i32 @aio_init_aioinfo(%struct.proc*) #1

declare dso_local %struct.kaiocb* @uma_zalloc(i32, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @AIO_MTX(%struct.kaioinfo*) #1

declare dso_local i32 @uma_zfree(i32, %struct.kaiocb*) #1

declare dso_local i32 @_SIG_VALID(i32) #1

declare dso_local i32 @ksiginfo_init(i32*) #1

declare dso_local i32 @fget_write(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fget_read(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @memset(%struct.kevent*, i32, i32) #1

declare dso_local i32 @kqfd_register(i32, %struct.kevent*, %struct.thread*, i32) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @aio_schedule(%struct.kaiocb*, i32) #1

declare dso_local i32 @aio_queue_file(%struct.file*, %struct.kaiocb*) #1

declare dso_local i32 @fo_aio_queue(%struct.file*, %struct.kaiocb*) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @aio_bio_done_notify(%struct.proc*, %struct.kaiocb*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @knlist_delete(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
