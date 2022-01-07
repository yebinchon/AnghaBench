; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.vmspace*, i32* }
%struct.vmspace = type { i32 }
%struct.kaiocb = type { i32 (%struct.kaiocb*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32 }
%struct.aioproc = type { i32, %struct.proc* }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"kthread has a textvp\00", align 1
@aiop_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@aio_newproc_sem = common dso_local global i32 0, align 4
@aio_job_mtx = common dso_local global i32 0, align 4
@AIOP_FREE = common dso_local global i32 0, align 4
@aio_freeproc = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"aiordy\00", align 1
@aiod_lifetime = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@aio_jobs = common dso_local global i32 0, align 4
@num_aio_procs = common dso_local global i64 0, align 8
@target_aio_procs = common dso_local global i64 0, align 8
@aiod_unr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"AIOD: bad vmspace for exiting daemon\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"AIOD: bad vm refcnt for exiting daemon: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aio_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kaiocb*, align 8
  %4 = alloca %struct.aioproc*, align 8
  %5 = alloca %struct.kaioinfo*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.vmspace*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %8, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.thread*, %struct.thread** %8, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %6, align 8
  %17 = load %struct.proc*, %struct.proc** %6, align 8
  %18 = call %struct.vmspace* @vmspace_acquire_ref(%struct.proc* %17)
  store %struct.vmspace* %18, %struct.vmspace** %7, align 8
  %19 = load %struct.proc*, %struct.proc** %6, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @aiop_zone, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call %struct.aioproc* @uma_zalloc(i32 %25, i32 %26)
  store %struct.aioproc* %27, %struct.aioproc** %4, align 8
  %28 = load %struct.proc*, %struct.proc** %6, align 8
  %29 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %30 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %29, i32 0, i32 1
  store %struct.proc* %28, %struct.proc** %30, align 8
  %31 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %32 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = call i32 @sema_post(i32* @aio_newproc_sem)
  %34 = call i32 @mtx_lock(i32* @aio_job_mtx)
  br label %35

35:                                               ; preds = %117, %80, %1
  %36 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %37 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AIOP_FREE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %44 = load i32, i32* @list, align 4
  %45 = call i32 @TAILQ_REMOVE(i32* @aio_freeproc, %struct.aioproc* %43, i32 %44)
  %46 = load i32, i32* @AIOP_FREE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %49 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %57, %52
  %54 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %55 = call %struct.kaiocb* @aio_selectjob(%struct.aioproc* %54)
  store %struct.kaiocb* %55, %struct.kaiocb** %3, align 8
  %56 = icmp ne %struct.kaiocb* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %59 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %60 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.kaioinfo*, %struct.kaioinfo** %62, align 8
  store %struct.kaioinfo* %63, %struct.kaioinfo** %5, align 8
  %64 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %65 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %64, i32 0, i32 0
  %66 = load i32 (%struct.kaiocb*)*, i32 (%struct.kaiocb*)** %65, align 8
  %67 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %68 = call i32 %66(%struct.kaiocb* %67)
  %69 = call i32 @mtx_lock(i32* @aio_job_mtx)
  %70 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %71 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.proc*, %struct.proc** %6, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 0
  %77 = load %struct.vmspace*, %struct.vmspace** %76, align 8
  %78 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %79 = icmp ne %struct.vmspace* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %82 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %83 = call i32 @vmspace_switch_aio(%struct.vmspace* %82)
  %84 = call i32 @mtx_lock(i32* @aio_job_mtx)
  br label %35

85:                                               ; preds = %74
  %86 = load i32, i32* @MA_OWNED, align 4
  %87 = call i32 @mtx_assert(i32* @aio_job_mtx, i32 %86)
  %88 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %89 = load i32, i32* @list, align 4
  %90 = call i32 @TAILQ_INSERT_HEAD(i32* @aio_freeproc, %struct.aioproc* %88, i32 %89)
  %91 = load i32, i32* @AIOP_FREE, align 4
  %92 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %93 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.proc*, %struct.proc** %6, align 8
  %97 = load i32, i32* @PRIBIO, align 4
  %98 = load i32, i32* @aiod_lifetime, align 4
  %99 = call i64 @msleep(%struct.proc* %96, i32* @aio_job_mtx, i32 %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i64, i64* @EWOULDBLOCK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %85
  %103 = call i64 @TAILQ_EMPTY(i32* @aio_jobs)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %107 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AIOP_FREE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i64, i64* @num_aio_procs, align 8
  %114 = load i64, i64* @target_aio_procs, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %118

117:                                              ; preds = %112, %105, %102, %85
  br label %35

118:                                              ; preds = %116
  %119 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %120 = load i32, i32* @list, align 4
  %121 = call i32 @TAILQ_REMOVE(i32* @aio_freeproc, %struct.aioproc* %119, i32 %120)
  %122 = load i64, i64* @num_aio_procs, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* @num_aio_procs, align 8
  %124 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %125 = load i32, i32* @aiop_zone, align 4
  %126 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %127 = call i32 @uma_zfree(i32 %125, %struct.aioproc* %126)
  %128 = load i32, i32* @aiod_unr, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @free_unr(i32 %128, i32 %129)
  %131 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %132 = call i32 @vmspace_free(%struct.vmspace* %131)
  %133 = load %struct.proc*, %struct.proc** %6, align 8
  %134 = getelementptr inbounds %struct.proc, %struct.proc* %133, i32 0, i32 0
  %135 = load %struct.vmspace*, %struct.vmspace** %134, align 8
  %136 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %137 = icmp eq %struct.vmspace* %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @KASSERT(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %141 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 1
  %144 = zext i1 %143 to i32
  %145 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %146 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @KASSERT(i32 %144, i8* %149)
  %151 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local %struct.vmspace* @vmspace_acquire_ref(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.aioproc* @uma_zalloc(i32, i32) #1

declare dso_local i32 @sema_post(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aioproc*, i32) #1

declare dso_local %struct.kaiocb* @aio_selectjob(%struct.aioproc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vmspace_switch_aio(%struct.vmspace*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.aioproc*, i32) #1

declare dso_local i64 @msleep(%struct.proc*, i32*, i32, i8*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.aioproc*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
