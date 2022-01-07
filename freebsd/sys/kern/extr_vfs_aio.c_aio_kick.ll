; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_kick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i64 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*)* @aio_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_kick(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.kaioinfo*, align 8
  %4 = alloca %struct.aioproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %7 = load %struct.proc*, %struct.proc** %2, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.kaioinfo*, %struct.kaioinfo** %8, align 8
  store %struct.kaioinfo* %9, %struct.kaioinfo** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* @aio_job_mtx, i32 %10)
  br label %12

12:                                               ; preds = %51, %1
  %13 = call %struct.aioproc* @TAILQ_FIRST(i32* @aio_freeproc)
  store %struct.aioproc* %13, %struct.aioproc** %4, align 8
  %14 = icmp ne %struct.aioproc* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %17 = load i32, i32* @list, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* @aio_freeproc, %struct.aioproc* %16, i32 %17)
  %19 = load i32, i32* @AIOP_FREE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %22 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.aioproc*, %struct.aioproc** %4, align 8
  %26 = getelementptr inbounds %struct.aioproc, %struct.aioproc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wakeup(i32 %27)
  br label %57

29:                                               ; preds = %12
  %30 = load i64, i64* @num_aio_resv_start, align 8
  %31 = load i64, i64* @num_aio_procs, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @max_aio_procs, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %37 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @num_aio_resv_start, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @max_aio_per_proc, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i64, i64* @num_aio_resv_start, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @num_aio_resv_start, align 8
  %46 = call i32 @mtx_unlock(i32* @aio_job_mtx)
  %47 = call i32 @aio_newproc(i64* @num_aio_resv_start)
  store i32 %47, i32* %5, align 4
  %48 = call i32 @mtx_lock(i32* @aio_job_mtx)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64, i64* @num_aio_resv_start, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* @num_aio_resv_start, align 8
  br label %12

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %35, %29
  store i32 -1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.aioproc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.aioproc*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @aio_newproc(i64*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
