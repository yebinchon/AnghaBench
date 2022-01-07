; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_kick_nowait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_kick_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i64, i32 }
%struct.aioproc = type { i32, i32 }

@aio_job_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@aio_freeproc = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@AIOP_FREE = common dso_local global i32 0, align 4
@num_aio_resv_start = common dso_local global i64 0, align 8
@num_aio_procs = common dso_local global i64 0, align 8
@max_aio_procs = common dso_local global i64 0, align 8
@max_aio_per_proc = common dso_local global i64 0, align 8
@taskqueue_aiod_kick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*)* @aio_kick_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_kick_nowait(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.kaioinfo*, align 8
  %4 = alloca %struct.aioproc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 0
  %7 = load %struct.kaioinfo*, %struct.kaioinfo** %6, align 8
  store %struct.kaioinfo* %7, %struct.kaioinfo** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* @aio_job_mtx, i32 %8)
  %10 = call %struct.aioproc* @TAILQ_FIRST(i32* @aio_freeproc)
  store %struct.aioproc* %10, %struct.aioproc** %4, align 8
  %11 = icmp ne %struct.aioproc* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %14 = load i32, i32* @list, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* @aio_freeproc, %struct.aioproc* %13, i32 %14)
  %16 = load i32, i32* @AIOP_FREE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %19 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %23 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wakeup(i32 %24)
  br label %46

26:                                               ; preds = %1
  %27 = load i64, i64* @num_aio_resv_start, align 8
  %28 = load i64, i64* @num_aio_procs, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @max_aio_procs, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %34 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @num_aio_resv_start, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @max_aio_per_proc, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @taskqueue_aiod_kick, align 4
  %42 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %43 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %42, i32 0, i32 1
  %44 = call i32 @taskqueue_enqueue(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %32, %26
  br label %46

46:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.aioproc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aioproc*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
