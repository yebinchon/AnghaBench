; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_process_job.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soaio_process_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred*, %struct.TYPE_3__ }
%struct.ucred = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.socket = type { i32, i32, %struct.sockbuf }
%struct.sockbuf = type { i32 }
%struct.kaiocb = type { i64, i32, i32, %struct.TYPE_4__, i32, %struct.ucred*, %struct.file* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.uio = type { i32, i64, i32, %struct.thread*, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@UIO_USERSPACE = common dso_local global i32 0, align 4
@MSG_NBIO = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@MSG_MORETOCOME = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@empty_results = common dso_local global i32 0, align 4
@empty_retries = common dso_local global i32 0, align 4
@soo_aio_cancel = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.sockbuf*, %struct.kaiocb*)* @soaio_process_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soaio_process_job(%struct.socket* %0, %struct.sockbuf* %1, %struct.kaiocb* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockbuf*, align 8
  %6 = alloca %struct.kaiocb*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.uio, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %5, align 8
  store %struct.kaiocb* %2, %struct.kaiocb** %6, align 8
  %17 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %18 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %17)
  %19 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %20 = call i32 @aio_switch_vmspace(%struct.kaiocb* %19)
  %21 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %21, %struct.thread** %8, align 8
  %22 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %23 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %22, i32 0, i32 6
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %9, align 8
  br label %25

25:                                               ; preds = %184, %3
  %26 = load %struct.thread*, %struct.thread** %8, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.ucred*, %struct.ucred** %27, align 8
  store %struct.ucred* %28, %struct.ucred** %7, align 8
  %29 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %30 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %29, i32 0, i32 5
  %31 = load %struct.ucred*, %struct.ucred** %30, align 8
  %32 = load %struct.thread*, %struct.thread** %8, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  store %struct.ucred* %31, %struct.ucred** %33, align 8
  %34 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %35 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %38 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %44 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 6
  store %struct.iovec* %11, %struct.iovec** %53, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @UIO_USERSPACE, align 4
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = load %struct.thread*, %struct.thread** %8, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store %struct.thread* %60, %struct.thread** %61, align 8
  %62 = load i32, i32* @MSG_NBIO, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %64 = load %struct.socket*, %struct.socket** %4, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 2
  %66 = icmp eq %struct.sockbuf* %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %25
  %68 = load i32, i32* @UIO_READ, align 4
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.thread*, %struct.thread** %8, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %struct.socket*, %struct.socket** %4, align 8
  %75 = call i32 @soreceive(%struct.socket* %74, i32* null, %struct.uio* %10, i32* null, i32* null, i32* %16)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.thread*, %struct.thread** %8, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %84 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %67
  br label %141

86:                                               ; preds = %25
  %87 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %88 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %87, i32 0, i32 0
  %89 = call i32 @TAILQ_EMPTY(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @MSG_MORETOCOME, align 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* @UIO_WRITE, align 4
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.thread*, %struct.thread** %8, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %14, align 8
  %102 = load %struct.socket*, %struct.socket** %4, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.thread*, %struct.thread** %8, align 8
  %105 = call i32 @sosend(%struct.socket* %102, i32* null, %struct.uio* %10, i32* null, i32* null, i32 %103, %struct.thread* %104)
  store i32 %105, i32* %15, align 4
  %106 = load %struct.thread*, %struct.thread** %8, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %114 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %113, i32 0, i32 2
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %95
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @EPIPE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.socket*, %struct.socket** %4, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SO_NOSIGPIPE, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %119
  %127 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %128 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PROC_LOCK(i32 %129)
  %131 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %132 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SIGPIPE, align 4
  %135 = call i32 @kern_psignal(i32 %133, i32 %134)
  %136 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %137 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @PROC_UNLOCK(i32 %138)
  br label %140

140:                                              ; preds = %126, %119, %115
  br label %141

141:                                              ; preds = %140, %85
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub i64 %142, %144
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %150 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.ucred*, %struct.ucred** %7, align 8
  %152 = load %struct.thread*, %struct.thread** %8, align 8
  %153 = getelementptr inbounds %struct.thread, %struct.thread* %152, i32 0, i32 0
  store %struct.ucred* %151, %struct.ucred** %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @EWOULDBLOCK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %219

157:                                              ; preds = %141
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %160 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %158, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @MPASS(i32 %164)
  %166 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %167 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %166)
  %168 = load i64, i64* %13, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %157
  %171 = load %struct.socket*, %struct.socket** %4, align 8
  %172 = getelementptr inbounds %struct.socket, %struct.socket* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @SS_NBIO, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %216, label %177

177:                                              ; preds = %170, %157
  %178 = load i32, i32* @empty_results, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @empty_results, align 4
  %180 = load %struct.socket*, %struct.socket** %4, align 8
  %181 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %182 = call i64 @soaio_ready(%struct.socket* %180, %struct.sockbuf* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load i32, i32* @empty_retries, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @empty_retries, align 4
  %187 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %188 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %187)
  br label %25

189:                                              ; preds = %177
  %190 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %191 = load i32, i32* @soo_aio_cancel, align 4
  %192 = call i32 @aio_set_cancel_function(%struct.kaiocb* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %189
  %195 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %196 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %195)
  %197 = load i64, i64* %13, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %201 = load i64, i64* %13, align 8
  %202 = call i32 @aio_complete(%struct.kaiocb* %200, i64 %201, i32 0)
  br label %206

203:                                              ; preds = %194
  %204 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %205 = call i32 @aio_cancel(%struct.kaiocb* %204)
  br label %206

206:                                              ; preds = %203, %199
  %207 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %208 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %207)
  br label %215

209:                                              ; preds = %189
  %210 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %211 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %210, i32 0, i32 0
  %212 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %213 = load i32, i32* @list, align 4
  %214 = call i32 @TAILQ_INSERT_HEAD(i32* %211, %struct.kaiocb* %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %206
  br label %249

216:                                              ; preds = %170
  %217 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %218 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %217)
  br label %219

219:                                              ; preds = %216, %141
  %220 = load i64, i64* %13, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* @ERESTART, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %234, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @EINTR, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @EWOULDBLOCK, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230, %226, %222
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %234, %230, %219
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @aio_complete(%struct.kaiocb* %239, i64 -1, i32 %240)
  br label %246

242:                                              ; preds = %235
  %243 = load %struct.kaiocb*, %struct.kaiocb** %6, align 8
  %244 = load i64, i64* %13, align 8
  %245 = call i32 @aio_complete(%struct.kaiocb* %243, i64 %244, i32 0)
  br label %246

246:                                              ; preds = %242, %238
  %247 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %248 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %247)
  br label %249

249:                                              ; preds = %246, %215
  ret void
}

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @aio_switch_vmspace(%struct.kaiocb*) #1

declare dso_local i32 @soreceive(%struct.socket*, i32*, %struct.uio*, i32*, i32*, i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @sosend(%struct.socket*, i32*, %struct.uio*, i32*, i32*, i32, %struct.thread*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @kern_psignal(i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i64 @soaio_ready(%struct.socket*, %struct.sockbuf*) #1

declare dso_local i32 @aio_set_cancel_function(%struct.kaiocb*, i32) #1

declare dso_local i32 @aio_complete(%struct.kaiocb*, i64, i32) #1

declare dso_local i32 @aio_cancel(%struct.kaiocb*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.kaiocb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
